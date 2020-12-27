<?php
/*
* Ixian Block Explorer
* Website: www.ixian.io 
*/

// Call this script to fetch the latest block only. Onetime, before sync

include_once("../config.php");
include_once("../include/ssh.php");
include_once("../include/ixian.php");

ini_set('memory_limit', '1024M');
set_time_limit(0);


echo "Fetching latest network block...\n";

db_connect();

db_connect();
$laststat = db_fetch("SELECT * FROM ixi_nodestats ORDER BY blockheight DESC LIMIT 1", [])[0];
if ($laststat == null) {
    die("laststat");
}

$networkbh = $laststat['blockheight'];

$ssh = null;
if($dlt_connect_mode == "ssh")
{
	$ssh = connectToIxianServer();
}


$nextblock = $networkbh;
addBlock($ssh, $nextblock, 0);// $currentbtimestamp);

if($dlt_connect_mode == "ssh")
{
	$ssh->disconnect();
}

die("\nDone\n");








 
echo "DONE";



?>