<?php
/*
* Ixian Block Explorer
* Website: www.ixian.io 
*/

include_once("../config.php");
date_default_timezone_set('UTC');

// DB table to use
$table = 'ixi_blocks';
// Table's primary key
$primaryKey = 'id';
// Array of database columns which should be read and sent back to DataTables.
// The `db` parameter represents the column name in the database, while the `dt`
// parameter represents the DataTables column identifier. In this case simple
// indexes
$columns = array(
	array( 'db' => 'id',  'dt' => 0 ),
	array( 'db' => 'blockChecksum',   'dt' => 1 ),
    array( 'db' => 'timestamp',  'dt' => 2 ),
    array( 'db' => 'txCount',  'dt' => 3 )
);


require( '../include/ssp.php' );

$ret = 	SSP::simple( $_GET, $sql_details, $table, $primaryKey, $columns, null, 1);
$data = &$ret["data"];

foreach($data as &$block)
{
    $blockheight = $block[0];
    $block[0] = "<span class='label-md t-black'>$blockheight</span>";
    $block[1] = "<a class='body-sm t-blue' href='index.php?p=block&id=$blockheight'>$block[1]</a>";
    $block[2] = "<span class='label-sm t-gray'>" . humanTiming($block[2]) . " ago</span>"; //date("Y-m-d",$block[3]);
    $block[3] =  "<span class='body-sm t-black'>".number_format($block[3])."</span>";
/*    $address = $worker[0];
    $address = "<a href='?p=address&id=$address'>$address</a>";
    $worker[0] = $address;
    $date = strtotime($worker[2]);
    $datestring = humanTiming($date).' ago';
    $worker[2] = $datestring;*/
}

echo json_encode($ret);

?>