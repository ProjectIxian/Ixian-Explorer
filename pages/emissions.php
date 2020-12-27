<?php
/*
* Ixian Block Explorer
* Website: www.ixian.io 
*/
include_once("include/ixian.php");

$page = new Template();

db_connect();
$laststat = db_fetch("SELECT * FROM ixi_nodestats ORDER BY blockheight DESC LIMIT 1", [])[0];
if ($laststat != 0) {

}

$bh = $laststat['blockheight'];

$page->bh = $laststat['blockheight'];
$page->supply = number_format($laststat['totalixi']);
$page->m = $laststat['nodes-m'];
$page->hashrate = number_format($laststat['hashrate']);

$page->miningreward = number_format(calculateMiningRewardForBlock($page->bh),2);
$page->blockstake = calculateStakingReward($laststat['totalixi']);


$page->render('page_emissions.tpl');


?>