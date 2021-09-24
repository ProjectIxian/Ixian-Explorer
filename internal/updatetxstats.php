<?php
/*
* Ixian Block Explorer
* Website: www.ixian.io 
*/

// Call this script every 5 minutes or so

include_once("../config.php");

$cache_file = "../cache/tx.ixi";

db_connect();

$txnum = db_fetch("SELECT COUNT(*) AS tx_total FROM ixi_transactions", []);
if(!isset($txnum[0]))
    die("Error");
$txnum = $txnum[0];

$txday = db_fetch("SELECT COUNT(*) AS tx_24h FROM ixi_transactions WHERE timestamp > UNIX_TIMESTAMP(NOW() - INTERVAL 1 DAY)", []);
if(!isset($txday[0]))
    die("Error");
$txday = $txday[0];

$txavg = db_fetch("SELECT COUNT(*) AS tx_avg FROM ixi_transactions WHERE timestamp > UNIX_TIMESTAMP(NOW() - INTERVAL 30 DAY)", []);
if(!isset($txavg[0]))
    die("Error");
$txavg = $txavg[0];

if($txavg["tx_avg"] > 0)
    $txavg["tx_avg"] = $txavg["tx_avg"] / 30;

$data = [$txnum, $txday, $txavg];
$data = json_encode($data);

file_put_contents($cache_file, $data);
echo "DONE";

?>