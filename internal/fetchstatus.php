<?php
/*
* Ixian Block Explorer
* Website: www.ixian.io 
*/

// Call this script every 30 seconds or so

include_once("../config.php");


$m = 0;
$r = 0;
$c = 0;
$total = 0;
$hashrate = 0;
$blockheight = 0;
$difficulty = 0;
$blockratio = 0;


$json = file_get_contents($nodestatus_url);

$data = json_decode($json, true, 512, JSON_BIGINT_AS_STRING);
if (json_last_error() === JSON_ERROR_NONE) {
    print_r($data);
    $m = $data["M"];
    $r = $data["R"];
    $c = $data["C"];
    $totalIxis = $data["TotalIxisFixed"];
    $hashrate = $data["Hashrate"];
    $difficulty = $data["Difficulty"];
    $blockratio = $data["BlockRatio"];
    $blockheight = $data["BH"];

}
else {
    die("Error reading node status.");
}

db_connect();
$chk = db_fetch("SELECT count(1) FROM ixi_nodestats WHERE blockheight=:blockheight", [":blockheight" => $blockheight])[0]['count(1)'];
if ($chk != 0) {
    die("Duplicate blockheight");
}

db_fetch("INSERT INTO `ixi_nodestats` (`blockheight`, `date`, `totalixi`, `hashrate`, `difficulty`, `blockratio`, `nodes-m`, `nodes-r`, `nodes-c`) VALUES (:blockheight, CURRENT_TIMESTAMP, :totalixi, :hashrate, :difficulty, :br, :m, :r, :c)",
            [":blockheight" => $blockheight, ":totalixi" => $totalIxis, ":hashrate" => $hashrate, ":difficulty" => $difficulty, ":br" => $blockratio, ":m" => $m, ":r" => $r, ":c" => $c]
        );



echo "DONE";

?>