<?php
/*
* Ixian Block Explorer
* Website: www.ixian.io 
*/

$page = new Template();

if(isset($_GET['q']) && $_GET['q'] != "") {
    $query = $_GET['q'];
}

$page->render('page_search.tpl');

?>