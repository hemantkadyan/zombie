<?php
session_start();
if(isset($_SESSION['user'])!="")
{
	header("Location: ./");
}
$string=$_SESSION['user'];
echo $string;
include_once '../dbconnect.php';
if(isset($_POST['redbox'])){

$redbox = $_POST['redbox'];
echo $redbox;
mysql_query("UPDATE gameboard SET redbox='$redbox' WHERE string='$string'") or die("error in query");
}