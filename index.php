<?php
/*
* Ixian Block Explorer
* Website: www.ixian.io 
*/

include_once("config.php");
include_once("include/template.php");

$current_page = "home";

if(isset($_GET['p']))
{
    $new_page = $_GET['p'];
    
    if($new_page === 'search' || $new_page === 'address' || $new_page === 'block' || $new_page === 'transaction'
      || $new_page === 'network' || $new_page === 'top' || $new_page === 'emissions'
      || $new_page === 'devblocks' || $new_page === 'swap'   
      )
    {
        $current_page = $new_page;
    }
}

$page = new Template();

$page->cpage = $current_page;

$page->q = "";
if(isset($_GET['q']))
    $page->q = htmlspecialchars($_GET['q']);

$page->render('header.tpl'); 

include_once('pages/'.$current_page.'.php');

$page->render('footer.tpl');

?>