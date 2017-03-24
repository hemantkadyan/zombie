<?php

include 'dbconnect.php';
session_start();
$pln=$_POST['pln'];
$string=$_SESSION['user'];


if($pln=='1'){
mysql_query("UPDATE gameboard SET movespl1=movespl1+1 WHERE string='$string'") or die("error in query 2");
}
if($pln=='2'){
mysql_query("UPDATE gameboard SET movespl2=movespl2+1 WHERE string='$string'") or die("error in query 2");
}
?>