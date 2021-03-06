<?php
/*
* Ixian Block Explorer
* Website: www.ixian.io 
*/
include_once("include/ixian.php");

$page = new Template();

$numblocks = 500;

$page->numblocks = $numblocks;

db_connect();
$data = db_fetch("SELECT * FROM ixi_blocks ORDER BY id DESC LIMIT $numblocks", [ ]);
if ($data != 0) {

}

$difflabels = "";
$diff = "";
$hash = "";

$blocktime = "";
$txcount = "";
$sigcount = "";

//$totalAmount = 0;
foreach($data as $block) {
    $blockNum = $block["id"];
    $difflabels = " $blockNum, ".$difflabels;
//    $totalAmount += $block["amount"];
    $difficulty = $block['difficulty'];
    $diff = " $difficulty, ".$diff;
    
    $hashrate = $block['hashrate'];
    $hash = " $hashrate, ".$hash;
    
    $bt = $block['blocktime'];
    $blocktime = " $bt, ".$blocktime;
    
    $tx = $block['txCount'];
    $txcount = " $tx, ".$txcount;
        
    $sig = $block['sigCount'];
    $sigcount = " $sig, ".$sigcount;
        
}
$diff = $diff." ";
$page->diff = $diff;
$difflabels = $difflabels." ";
$page->difflabels = $difflabels;


$hash = $hash. " ";
$page->hash = $hash;

$page->blocktime = $blocktime;
$page->txcount = $txcount;
$page->sigcount = $sigcount;


$stakers = 0;
$data = db_fetch("SELECT * FROM ixi_blocks ORDER BY id DESC LIMIT 1", [ ]);
if ($data != 0) {
    $stakers = $data[0]["sigCount"];
}

$laststat = db_fetch("SELECT * FROM ixi_nodestats ORDER BY blockheight DESC LIMIT 1", [])[0];
if ($laststat != 0) {

}

$page->bh = $laststat['blockheight'];
$page->blockratio = $laststat['blockratio'];
$page->hashrate = number_format($laststat['hashrate']);

$page->m = $laststat['nodes-m'];
$page->r = $laststat['nodes-r'];
$page->c = $laststat['nodes-c'];


$page->miningreward = number_format(calculateMiningRewardForBlock($page->bh),2);

$page->blockstake = calculateStakingReward($laststat['blockheight'], $laststat['totalixi']);
$page->stakers = $stakers;
$block_stakers = $page->stakers;
if($block_stakers > 1000)
    $block_stakers = 1000;
$page->stakerprofit = number_format($page->blockstake / $block_stakers, 8);

$page->render('page_network.tpl');


?>
