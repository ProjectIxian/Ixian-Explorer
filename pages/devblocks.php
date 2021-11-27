<?php
/*
* Ixian Block Explorer
* Website: www.ixian.io 
*/

$page = new Template();

$laststat = db_fetch("SELECT * FROM ixi_nodestats ORDER BY blockheight DESC LIMIT 1", [])[0];
if ($laststat != 0) {

}

$bh = $laststat['blockheight'];

$page->supply = number_format($laststat['totalixi']);
$page->m = $laststat['nodes-m'];
$page->hashrate = number_format($laststat['hashrate']);



$page->render('page_devblocks.tpl');


?>