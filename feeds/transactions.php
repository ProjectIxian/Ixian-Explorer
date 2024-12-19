<?php
/*
* Ixian Block Explorer
* Website: www.ixian.io 
*/

include_once("../config.php");
date_default_timezone_set('UTC');

// DB table to use
$table = 'ixi_transactions';
// Table's primary key
$primaryKey = 'id';
// Array of database columns which should be read and sent back to DataTables.
// The `db` parameter represents the column name in the database, while the `dt`
// parameter represents the DataTables column identifier. In this case simple
// indexes
$columns = array(
	array( 'db' => 'timestamp',  'dt' => 0 ),    
	array( 'db' => 'txid',  'dt' => 1 ),
	array( 'db' => 'type',   'dt' => 2 ),
    array( 'db' => 'amount',  'dt' => 3 )
);

$txmode = false;
$where = null;
$blockid = 1;
if(isset($_GET['id']) && $_GET['id'] != "") {
    $blockid = $_GET['id'];
    if(!ctype_alnum($blockid))
    {
        die();
    }
    
    $where = "applied = $blockid";
}

$special = null;
if(isset($_GET['aid']) && $_GET['aid'] != "") {
    $aid = $_GET['aid'];
    if(!ctype_alnum($aid))
    {
        die();
    }
        
    $special = " INNER JOIN ixi_txidx ON ixi_transactions.id = ixi_txidx.txidx ";
    $where = "aidx = $aid";
    $txmode = true;
    
    $columns = array(
	array( 'db' => 'timestamp',  'dt' => 0 ),            
	array( 'db' => 'txid',  'dt' => 1 ),
	array( 'db' => 'type',   'dt' => 2 ),
    array( 'db' => 'amountdelta',  'dt' => 3 )
);
}

if($where == null)
    die("");

require( '../include/ssp.php' );

$ret = 	SSP::complex( $_GET, $sql_details, $table, $primaryKey, $columns, $special,$txmode, null, $where);
$data = &$ret["data"];

foreach($data as &$tx)
{
    $tx[0] = "<span class='body-sm'>".timestampToDate($tx[0])."</span>";
    $txid = $tx[1];
    $tx[1] = "<a class='body-sm t-blue' href='index.php?p=transaction&id=$txid'>$txid</a>";
    if($tx[2] == 0)
        $tx[2] = "<span class='label-sm t-gray'>Normal</span>";
    else if($tx[2] == 1)
        $tx[2] = "<span class='label-sm t-gray'>PoW</span>";
    else if($tx[2] == 2)
        $tx[2] = "<span class='label-sm t-gray'>Signing</span>";
    else if($tx[2] == 3)
        $tx[2] = "<span class='label-sm t-gray'>Genesis</span>";
    
    $tx[3] = "<span class='body-sm t-black'>".number_format($tx[3],8)." IXI</span>";
}

echo json_encode($ret);

?>
