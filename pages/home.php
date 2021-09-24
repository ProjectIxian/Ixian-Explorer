<?php
/*
* Ixian Block Explorer
* Website: www.ixian.io 
*/

$page = new Template();

db_connect();
$laststat = db_fetch("SELECT * FROM ixi_nodestats ORDER BY blockheight DESC LIMIT 1", [])[0];
if ($laststat != 0) {

}

$bh = $laststat['blockheight'];

$page->supply = number_format($laststat['totalixi']);
$page->m = $laststat['nodes-m'];
$page->hashrate = number_format($laststat['hashrate']);


$page->txtotal = 0;
$page->tx24 = 0;
$page->txavg = 0;

$txstats = file_get_contents("cache/tx.ixi");
if($txstats)
{
    $txstats = json_decode($txstats, true);
    if(isset($txstats[0]["tx_total"]) && isset($txstats[1]["tx_24h"]) && isset($txstats[2]["tx_avg"]))
    {
        $page->txtotal = number_format($txstats[0]["tx_total"]);
        $page->tx24 = number_format($txstats[1]["tx_24h"]);
        $page->txavg = number_format($txstats[2]["tx_avg"]);
    }
}

$page->render('page_home.tpl');

?>