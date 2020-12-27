<?php
/*
* Ixian Block Explorer
* Website: www.ixian.io 
*/
require_once("../include/ixianlib.php");

function insertTxIndex($walletidx, $txidx, $amountdelta)
{
    //echo "instx: $walletidx - $txidx<br/>";
    db_fetch("INSERT INTO `ixi_txidx` (`aidx`, `txidx`, `amountdelta`) VALUES (:1, :2, :3)",
            [ ":1" => $walletidx, ":2" => $txidx, ":3" => $amountdelta]);
}

function updateAddress($ssh, $walletid, $blockNum) 
{
    //echo "Updating: $walletid<br/>";
    $adx = 0;
    $justupdate = false;
    $res = db_fetch("SELECT id, lastblock from `ixi_addresses` WHERE address = :1 LIMIT 1", [ ":1" => $walletid]);
    if($res != null)
    {
        $adx = $res[0]["id"];        
        $lastblockNum = $res[0]["lastblock"];
        if($lastblockNum >= $blockNum)
            return $adx;    
        $justupdate = true;
    }
    
	$api_url = "getbalance?address=$walletid";
	$wdata = callIxianAPI($ssh, $api_url); 
	
    if(!$wdata)
    {
        return $adx;
    }
    
    if($justupdate == true)
    {
        db_fetch("UPDATE `ixi_addresses` SET `amount` = :1 , `lastblock` = :2 WHERE `ixi_addresses`.`id` = :3 ", 
                 [ ":1" => $wdata, ":2" =>$blockNum, ":3" => $adx]);
        return $adx;
    }
    
    db_fetch("INSERT INTO `ixi_addresses` (`address`, `amount`, `lastblock`) VALUES (:1, :2, :3 )", 
             [ ":1" => $walletid, ":2" => $wdata, ":3" => $blockNum]);
    
    $res = db_fetch("SELECT id from `ixi_addresses` WHERE address = :1 LIMIT 1", [ ":1" => $walletid]);
    if($res != null)
    {
        $adx = $res[0]["id"];
    }    
    return $adx;
}

function addBlock($ssh, $num, $prevBlockTimestamp = 0, $updateNextBlockTime = false) 
{
    echo "\n$num";

	$api_url = "getfullblock?num=$num";
	$data = callIxianAPI($ssh, $api_url); 
	
    if(!$data)
    {
        return false;
    }

//    echo "<pre>";
//    print_r($data);
//    echo "</pre>";

    $blockNum = $data["Block Number"];
    $res = db_fetch("SELECT id from `ixi_blocks` WHERE id = :1 LIMIT 1", [ ":1" => $blockNum]);
    if($res != null)
    {
        // Block already exists
	echo "Block already exists";
        return false;
    }
    
    $blockVer = $data["Version"];
    $txids = json_decode($data["TX IDs"], true);

    $addrcache = array(); // Address cache to process stress-test blocks faster

    
    // Go through each transaction
    foreach($txids as &$txid)
	{
        $res = db_fetch("SELECT id from `ixi_transactions` WHERE txid = :1 LIMIT 1", [ ":1" => $txid]);
        if($res != null)
        {
            // Transaction already exists, but block does not.
            $txidx = $res[0]["id"];

            // First delete all related indices
            db_fetch("DELETE from `ixi_txidx` WHERE txidx = :1", [ ":1" => $txidx]);
            // Now delete the transaction itself
            db_fetch("DELETE FROM `ixi_transactions` WHERE txid = :1", [ ":1" => $txid]);
            //continue;
        }
        echo "*";

        //echo "$txid <br/>";
		$api_url = "gettransaction?id=$txid";
		$txdata = callIxianAPI($ssh, $api_url);
		
        if(!$txdata)
        {
			echo "Error getting transaction $txid";
            return false;
        }
        //echo "<pre>";
        //print_r($txdata);
        //echo "</pre>";

        $encodedArr = encodeFromAddresses($txdata["from"], $txdata["pubKey"]);
        $from = $encodedArr[0];
        $txfrom = json_encode($from);
        $txto = json_encode($txdata["to"]);


        // Handle older version transactions with no data field
        $txdatad = "";
        if(isset($txdata["data"]))
            $txdatad = $txdata["data"];

        db_fetch("INSERT INTO `ixi_transactions` (`txid`, `blockNr`, `nonce`, `signature`, `data`, `timestamp`, `type`, `amount`, `applied`, `checksum`, `from`, `to`, `fee`, `version`, `tainted`) VALUES (:1, :2, :3, :4, :5, :6, :7, :8, :9, :10, :11, :12, :13, :14, 0)",
                [ ":1" => $txid, ":2" => $txdata["blockHeight"], ":3" => $txdata["nonce"], ":4" => $txdata["signature"], ":5" => $txdatad, ":6" => $txdata["timestamp"], ":7" => $txdata["type"], ":8" => $txdata["amount"], ":9" => $txdata["applied"], ":10" => $txdata["checksum"], ":11" => $txfrom, ":12" => $txto, ":13" => $txdata["fee"], ":14" => $txdata["version"] ]);

        $txidx = 0;
        $res = db_fetch("SELECT id from `ixi_transactions` WHERE txid = :1 LIMIT 1", [ ":1" => $txid]);
        if($res != null)
        {
            // Transaction now exists
            $txidx = $res[0]["id"];
            
            //echo "txidx: $txidx";
            //print_r($from);

            
            foreach($from as $fromaddr => $fromamount) {
                $adx = 0;
                if(!isset($addrcache[$fromaddr])) {
                    $adx = updateAddress($ssh, $fromaddr, $blockNum);
                    $addrcache[$fromaddr] = $adx;
                }
                else
                {
                    $adx = $addrcache[$fromaddr];
                }   
                
                if($adx != 0)
                {
                    echo ".";
                    insertTxIndex($adx, $txidx, -$fromamount);
                }
            }

            foreach($txdata["to"] as $toaddr => $toamount) {
                $adx = 0;
                if(!isset($addrcache[$toaddr])) {
                    $adx = updateAddress($ssh, $toaddr, $blockNum);
                    $addrcache[$toaddr] = $adx;
                }
                else
                {
                    $adx = $addrcache[$toaddr];
                }
                
                if($adx != 0)
                {
                    echo ".";
                    insertTxIndex($adx, $txidx, $toamount);
                }
            }
        }

    }
    
    // Done with transactions
    
    // Calculate blocktime
    $blocktime = 0;
    if($prevBlockTimestamp > 0)
    {
        $blocktime = $data["Timestamp"] - $prevBlockTimestamp;
    }
    
    // Insert the actual block
    db_fetch("INSERT INTO `ixi_blocks` (`id`, `blockChecksum`, `lastBlockChecksum`, `wsChecksum`, `sigFreezeChecksum`, `powField`, `difficulty`, `sigCount`, `txCount`, `txAmount`, `timestamp`, `version`, `hashrate`, `blocktime`) VALUES (:1, :2, :3, :4, :5, :6, :7, :8, :9, :10, :11, :12, :13, :14)", [":1" => $blockNum, ":2" => $data["Block Checksum"], ":3" => $data["Last Block Checksum"], ":4" => $data["Wallet State Checksum"], ":5" => $data["Sig freeze Checksum"], ":6" => $data["PoW field"], ":7" => $data["Difficulty"], ":8" => $data["Signature count"], ":9" => $data["Transaction count"], ":10" => $data["Transaction amount"], ":11" => $data["Timestamp"], ":12" => $blockVer,
    ":13" => $data["Hashrate"], ":14" => $blocktime]);

    $res = db_fetch("SELECT id from `ixi_blocks` WHERE id = :1 LIMIT 1", [ ":1" => $blockNum]);
    if($res == null)
    {
        return false;
    }  
    
    // Used for downsync block time calculation
    if($updateNextBlockTime == true) {
        $laststat = db_fetch("SELECT * FROM ixi_blocks WHERE id = :1 LIMIT 1", [ ":1" => $blockNum+1])[0];
        if ($laststat != null) {
            $lasttimestamp = $laststat["timestamp"];
            $nextblocktime = $lasttimestamp - $data["Timestamp"];
            
            db_fetch("UPDATE ixi_blocks SET blocktime = :1 WHERE id = :2 LIMIT 1", [ ":1" => $nextblocktime, ":2" => $blockNum+1]);
        }
    }
    
    return true;
}

function callIxianAPI($ssh, $call)
{
	global $dlt_connect_mode, $dlt_host;
	$timeout = 1800;
	
	if($dlt_connect_mode == "ssh")
	{
//    $stream = $ssh->exec("curl http://localhost:8081/$call -o call.out");
//    $res = $ssh->readStream($stream);
//    $stream = $ssh->exec("cat call.out");   
		$stream = $ssh->exec("curl -vs http://localhost:8081/$call");
		$res = $ssh->readStream($stream, $timeout);
    
		$plStream = json_decode($res, true)["result"];
		return $plStream;
	}else
	{
		$url = $dlt_host."/".$call;
		$ch = curl_init();

		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_TIMEOUT, $timeout);
		curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, $timeout);

		$res = curl_exec($ch);
		curl_close($ch);
		
		$plStream = json_decode($res, true)["result"];
		return $plStream;
	}
}

// Single API call
// $call - relevant API call with parameters included (wallet?=id)
// WARNING - unsecured $call
function singleCallIxianAPI($call)
{
    global $ssh_host, $ssh_port;
    global $ssh_username, $ssh_public_key, $ssh_private_key, $ssh_password;
	global $dlt_connect_mode, $dlt_host;
	$timeout = 1800;
	
	if($dlt_connect_mode == "ssh")
	{
		$ssh = new NSA_SSH();
		$plStream = null;
		if($ssh->connect($ssh_host, $ssh_port))
		{
			if($ssh->authKey($ssh_username, $ssh_public_key, $ssh_private_key, $ssh_password))
			{
				//$stream = $ssh->exec("curl http://localhost:8081/$call -o call.out");
				//$ssh->readStream($stream);
				//$stream = $ssh->exec("cat call.out");
				$stream = $ssh->exec("curl -vs http://localhost:8081/$call");
				$plStream = json_decode($ssh->readStream($stream, 1800), true)["result"];
				
			}else
			{
				echo "Error authenticating on ".$ssh_host.":".$ssh_port.".<br/>".PHP_EOL;
			}
			$ssh->disconnect();
		}else
		{
			echo "Error connecting to ".$ssh_host.":".$ssh_port.".<br/>".PHP_EOL;
		}
		return $plStream;
	}else
	{
		$url = $dlt_host."/".$call;
		$ch = curl_init();

		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_TIMEOUT, $timeout);
		curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, $timeout);

		$res = curl_exec($ch);
		curl_close($ch);
		
		$plStream = json_decode($res, true)["result"];
		return $plStream;
	}
} 

// Connect via SSH
function connectToIxianServer()
{
    global $ssh_host, $ssh_port;
    global $ssh_username, $ssh_public_key, $ssh_private_key, $ssh_password;
    
    $ssh = new NSA_SSH();
    if($ssh->connect($ssh_host, $ssh_port))
    {
        if($ssh->authKey($ssh_username, $ssh_public_key, $ssh_private_key, $ssh_password))
        {
            return $ssh;
        }else
        {
            echo "Error authenticating on ".$ssh_host.":".$ssh_port.".<br/>".PHP_EOL;
        }
    }else
    {
        echo "Error connecting to ".$ssh_host.":".$ssh_port.".<br/>".PHP_EOL;
    }
    return null;
}
?>
