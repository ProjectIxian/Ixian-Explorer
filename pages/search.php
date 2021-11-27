<?php
/*
* Ixian Block Explorer
* Website: www.ixian.io 
*/

$page = new Template();

if(isset($_GET['q']) && $_GET['q'] != "") {
    $query = $_GET['q'];
   /* if(!ctype_alnum($blockid))
    {
        $page->render('page_error.tpl');
        return;
    }*/
}
else {
    header("Location: index.php");
    return;
}

if(!ctype_digit($query))
{
    $data = db_fetch("SELECT * FROM ixi_addresses WHERE BINARY address = :1  LIMIT 1", [ ":1" => $query ]);
    if ($data != false && count($data) > 0) {
        header("Location: index.php?p=address&id=$query");
        die();
    }

    $data = db_fetch("SELECT * FROM ixi_transactions WHERE txid LIKE :1  LIMIT 1", [ ":1" => $query ]);
    if ($data != false && count($data) > 0) {
        header("Location: index.php?p=transaction&id=$query");
        die();
    }
}
else {
    $data = db_fetch("SELECT * FROM ixi_blocks WHERE id = :1  LIMIT 1", [ ":1" => $query ]);
    if ($data != false && count($data) > 0) {
        //print_r($data);
        header("Location: index.php?p=block&id=$query");
        die();
    }
}
    
$page->render('page_search.tpl');

?>