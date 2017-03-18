<?php
$a=isset($_POST['question'])?$_POST['question']:"";
$b=isset($_POST['answer'])?$_POST['answer']:"";
$con=mysql_connect("localhost","root","") or die("error in connection");

	mysql_select_db("zombie",$con) or die("error in database");

$query=mysql_query("INSERT INTO questions(question,answer)  VALUES('$a','$b')") or die("error in query");
if($query>0)
{
	echo "Thank You enter the next question";
}
?>