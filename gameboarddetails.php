<?php
session_start();
if(isset($_SESSION['user'])=="")
{
	header("Location: ./");
}
$string=$_SESSION['user'];
//echo $string;
include_once './dbconnect.php';
if(isset($_POST['redbox'])){

$redbox = $_POST['redbox'];
//echo $redbox;
mysql_query("UPDATE gameboard SET redbox='$redbox' WHERE string='$string'") or die("error in query");
}
if(isset($_POST['pl1pos'])){

$pl1pos = $_POST['pl1pos'];
//echo $redbox;
mysql_query("UPDATE gameboard SET pl1pos='$pl1pos' WHERE string='$string'") or die("error in query");
}
if(isset($_POST['pl2pos'])){

$pl2pos = $_POST['pl2pos'];
//echo $redbox;
mysql_query("UPDATE gameboard SET pl2pos='$pl2pos' WHERE string='$string'") or die("error in query");
}
if(isset($_POST['turn'])){

$turn = $_POST['turn'];
//echo $redbox;
mysql_query("UPDATE gameboard SET turn='$turn' WHERE string='$string'") or die("error in query");
}

if(isset($_POST['p1time'])){

$p1time = intval($_POST['p1time']);
//echo $redbox;
mysql_query("UPDATE gameboard SET p1time=p1time+'$p1time' WHERE string='$string'") or die("error in query");
}

if(isset($_POST['p2time'])){

$p2time = intval($_POST['p2time']);
//echo $redbox;
mysql_query("UPDATE gameboard SET p2time=p2time+'$p2time' WHERE string='$string'") or die("error in query");
}

if(isset($_POST['winner'])){

$winner = ($_POST['winner']);
//echo $redbox;
mysql_query("UPDATE gameboard SET winner='$winner' WHERE string='$string'") or die("error in query");
}

