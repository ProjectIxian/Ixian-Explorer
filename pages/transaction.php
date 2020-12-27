<?php
/*
* Ixian Block Explorer
* Website: www.ixian.io 
*/

$page = new Template();

$txid = "";
if(isset($_GET['id']) && $_GET['id'] != "") {
    $txid = $_GET['id'];
/*    if(ctype_alnum($txid))
    {
        $page->render('page_error.tpl');
        return;
    }*/
}
else 
{
    $page->render('page_error.tpl');
    return;
}



db_connect();

$dba = db_fetch("SELECT * FROM ixi_transactions WHERE txid = :bh LIMIT 1", [":bh" => $txid]);

if($dba == null) {
    $page->render('page_error.tpl');
    return;
}

$dbtx = $dba[0];

$page->txid = $txid;
$page->txblock = $dbtx["blockNr"];
$page->txage = humanTiming($dbtx["timestamp"]);
$page->txdate = gmdate("Y-m-d H:i:s", $dbtx["timestamp"]);
$page->txversion = $dbtx["version"];
$page->txamount = number_format($dbtx["amount"],8)." IXI";
$page->txfee = $dbtx["fee"]." IXI";

$page->txtype = "Normal Transaction";
$txtype = $dbtx["type"];
if($txtype == 1)
    $page->txtype = "Proof-of-Work Solution";
else if($txtype == 2)
    $page->txtype = "Signing Reward";
else if($txtype == 3)
    $page->txtype = "Genesis Transaction";
else if($txtype == 4)
    $page->txtype = "Multisig Transaction";
else if($txtype == 5)
    $page->txtype = "Change Multisig Wallet Transaction";
else if($txtype == 6)
    $page->txtype = "Multisig Add Transaction";


$page->fromArr = json_decode($dbtx["from"],true);
$page->toArr = json_decode($dbtx["to"],true);
/*
echo "<pre>";
print_r($fromArr);
echo "</pre>";
foreach ($fromArr as $key => $value) {
    echo "$key.<br/>";
}
  */   
$page->render('page_transaction.tpl');


?>
