<?php
include 'dbconnect.php';
$a=isset($_POST['question'])?$_POST['question']:"";
$b=isset($_POST['answer'])?$_POST['answer']:"";


$query=mysql_query("INSERT INTO questions(question,answer)  VALUES('$a','$b')") or die("error in query");
if($query>0)
{
	echo "Thank You enter the next question";
}
?>