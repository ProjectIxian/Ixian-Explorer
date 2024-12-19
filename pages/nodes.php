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
$page->r = $laststat['nodes-r'];
$page->c = $laststat['nodes-c'];
$page->hashrate = number_format($laststat['hashrate']);



$dltnodes = array();
$s2nodes = array();

$nodestats = file_get_contents("cache/nodes.ixi");
if($nodestats)
{
    $nodestats = json_decode($nodestats, true);

    foreach($nodestats as $nodeagent => $nodecount)
    {
        if(str_starts_with($nodeagent, "xdc-"))
        {
            $dltnodes[$nodeagent] = $nodecount;
        }
        else if(str_starts_with($nodeagent, "xs2c-"))
        {
            $s2nodes[$nodeagent] = $nodecount;
        }
    }
}

$page->dltnodes = $dltnodes;
$page->s2nodes = $s2nodes;
$page->render('page_nodes.tpl');


?>