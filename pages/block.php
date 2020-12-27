<?php
/*
* Ixian Block Explorer
* Website: www.ixian.io 
*/
include_once("include/ixian.php");

$page = new Template();


$blockid = "";
if(isset($_GET['id']) && $_GET['id'] != "") {
    $blockid = $_GET['id'];
    if(!ctype_digit($blockid))
    {
        $page->render('page_error.tpl');
        return;
    }
}
else 
{
    $page->render('page_error.tpl');
    return;
}

db_connect();
$dba = db_fetch("SELECT * FROM ixi_blocks WHERE id = :bh LIMIT 1", [":bh" => $blockid]);
if($dba == null) {
    $page->render('page_error.tpl');
    return;
}

$dbblock = $dba[0];

//print_r($dbblock);

$page->blockhash = $dbblock["blockChecksum"];
$page->blocklasthash = $dbblock["lastBlockChecksum"];

$page->blocknum = $blockid;
$page->blocklastnum = $blockid - 1;
if($page->blocklastnum < 1) $page->blocklastnum = 1;

$page->blocknextnum = $blockid + 1;
$dba = db_fetch("SELECT id FROM ixi_blocks WHERE id = :bh LIMIT 1", [":bh" => $blockid+1]);
if($dba == null) {
    $page->blocknextnum = 0;
}


$page->blockage = humanTiming($dbblock["timestamp"]);
$page->blockdate = gmdate("Y-m-d H:i:s", $dbblock["timestamp"]);
$page->blockversion = $dbblock["version"];
$page->blocksigs = $dbblock["sigCount"];
$page->blocktxs = $dbblock["txCount"];
$page->blocktime = $dbblock["blocktime"];
$page->miningreward = number_format(calculateMiningRewardForBlock($page->blocknum),2);

$page->render('page_block.tpl');


?>