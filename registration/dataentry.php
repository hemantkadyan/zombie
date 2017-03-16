<?php
$a = $_POST['name1'];
$b = $_POST['string1'];
$c = $_POST['collegename1'];
$d = $_POST['mobile1'];
$e = $_POST['name2'];
$f = $_POST['string2'];
$g = $_POST['collegename2'];
$h = $_POST['mobile2'];

/*if($b==$e)
{
	$i = $b;
	echo "good";
}
else
{
	echo "please enter same string";
}*/

$con=mysql_connect("localhost","root","") or die("error in connection");
mysql_select_db("zombie",$con) or die("error in database");
$query=mysql_query("INSERT INTO playerdb(string,pname1,collegename1,pmobile1,pname2,collegename2,pmobile2)  VALUES('$b','$a','$c','$d','$e','$g','$h')") or die("error in query");
?>