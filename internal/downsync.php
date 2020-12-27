<?php
/*
* Ixian Block Explorer
* Website: www.ixian.io 
*/

// Call this script once for a complete downward synchronization

include_once("../config.php");
include_once("../include/ssh.php");
include_once("../include/ixian.php");

ini_set('memory_limit', '1024M');
set_time_limit(0);

$fp = fopen("downsync.lock", "w+");
if (flock($fp, LOCK_EX | LOCK_NB))
{
	echo "Starting Ixian blockchain downsync...\n";

	db_connect();
	$laststat = db_fetch("SELECT * FROM ixi_nodestats ORDER BY blockheight DESC LIMIT 1", [])[0];
	if ($laststat == null) {
		die("laststat");
	}

	$networkbh = $laststat['blockheight'];

	$laststat = db_fetch("SELECT * FROM ixi_blocks ORDER BY id ASC LIMIT 1", [])[0]; // Use DESC to rescan existing blocks
	if ($laststat == null) {
		die("laststat");
	}

	$currentbh = $laststat['id'];
	$currentbtimestamp = 0;// $laststat['timestamp'];


	echo "Network is at block $networkbh\n";
	echo "Local goes down to block $currentbh\n";

	if(1 >= $currentbh)
	{
		die("No new blocks to fetch\n");
	}

	$ssh = null;
	if($dlt_connect_mode == "ssh")
	{
		$ssh = connectToIxianServer();
	}

	$errcount = 0;
	while($currentbh > 1)
	{
		$nextblock = $currentbh - 1;
		
		$ret = addBlock($ssh, $nextblock, $currentbtimestamp, true);
		if($ret == false) 
		{
			$errcount++;
			echo "!ERROR, retrying in 5 seconds...\n";
			sleep(5);
			
			if($errcount > 10) {
				echo "Reconnecting to node...\n";
				$ssh = null;
				if($dlt_connect_mode == "ssh")
				{
					$ssh->disconnect();
					$ssh = connectToIxianServer();
				}
			}
			
			continue;
		}
		$errcount = 0;
			
		$currentbh = $nextblock; 
	}

	if($dlt_connect_mode == "ssh")
	{
		$ssh->disconnect();
	}
	flock($fp, LOCK_UN); // Release the lock
} else {
	die("Another downsync is already running...");
}
fclose($fp);

die("\nDone\n");

?>