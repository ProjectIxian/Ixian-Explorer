<?php
/*
* Ixian Block Explorer
* Website: www.ixian.io 
*/

$current_page = "home";

if(isset($_GET['p']))
{
    $new_page = $_GET['p'];

    if($new_page === 'search' || $new_page === 'address' || $new_page === 'block' || $new_page === 'transaction'
        || $new_page === 'network' || $new_page === 'top' || $new_page === 'emissions'
        || $new_page === 'devblocks' || $new_page === 'nodes' || $new_page === 'superblocks'
    )
    {
        $current_page = $new_page;
    }
}

db_connect();


$page = new Template();

$page->cpage = $current_page;

$page->q = "";
if(isset($_GET['q']))
    $page->q = htmlspecialchars($_GET['q']);

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