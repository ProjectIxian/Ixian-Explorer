<?php
/*
* Ixian Block Explorer
* Website: www.ixian.io 
*/

// Call this script every 30 seconds or so

include_once("../config.php");
include_once("../include/ssh.php");
include_once("../include/ixian.php");

ini_set('memory_limit', '1024M');
set_time_limit(0);



$fp = fopen("sync.lock", "w+");
if (flock($fp, LOCK_EX | LOCK_NB))
{
	echo "Starting Ixian blockchain sync...\n";

	db_connect();
	
	$laststat = db_fetch("SELECT * FROM ixi_nodestats ORDER BY blockheight DESC LIMIT 1", []);
	if ($laststat == null)
	{
		$laststat = array("blockheight" => 0);
	}else
	{
		$laststat = $laststat[0];
	}

	$networkbh = $laststat['blockheight'];

	$laststat = db_fetch("SELECT * FROM ixi_blocks ORDER BY id DESC LIMIT 1", []);
	if ($laststat == null)
	{
		$laststat = array("id" => 0, "timestamp" => time());
	}else
	{
		$laststat = $laststat[0];
	}

	$currentbh = $laststat['id'];
	$currentbtimestamp = $laststat['timestamp'];

	echo "Network is at block $networkbh\n";
	echo "Local goes to block $currentbh\n";

	if($networkbh <= $currentbh)
	{
		die("No new blocks to fetch\n");
	}


	$ssh = null;
	if($dlt_connect_mode == "ssh")
	{
		$ssh = connectToIxianServer();
	}


	while($currentbh < $networkbh)
	{
		$nextblock = $currentbh + 1;
		//$nextblock = $networkbh;
		$ret = addBlock($ssh, $nextblock, $currentbtimestamp);
		if($ret == false)
		{
			echo "Error adding block.\n";
			break;
		}
		$laststat = db_fetch("SELECT * FROM ixi_blocks ORDER BY id DESC LIMIT 1", [])[0];
		if ($laststat == null) {
			die("laststat");
		}
		$currentbh = $laststat['id'];
		$currentbtimestamp = $laststat['timestamp'];

	}

	// Get all node versions
	$cache_file = "../cache/nodes.ixi";
	$data = callIxianAPI($ssh, "countnodeversions");
	$data = json_encode($data);
	file_put_contents($cache_file, $data);

	if($dlt_connect_mode == "ssh")
	{
		$ssh->disconnect();
	}


	flock($fp, LOCK_UN); // Release the lock
} else {
	die("Another sync is already running...");
}
fclose($fp);

die("\nDone\n");

?>