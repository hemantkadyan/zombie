<?php
session_start();
include_once 'dbconnect.php';

if(isset($_SESSION['user'])!="")
{
	header("Location: index.php");
}

if(isset($_POST['btn-login']))
{
	$email = $_POST['email'];
	$pass = $_POST['password'];
	
	
	$res=mysql_query("SELECT * FROM player_details WHERE email='$email'");
	$row=mysql_fetch_array($res);
	
	//$count = mysql_num_rows($res); // if uname/pass correct it returns must be 1 row
	
	if($row['password']==$pass)
	{
		$_SESSION['user'] = $row['email'];
		header("Location: index.php");
	}
	else
	{
		?>
        <script>alert('Username / Password Seems Wrong !');
        	setTimeout(function () {
   window.location.href= 'index.php'; // the redirect goes here

},1);
        </script>

        <?php
        

	}
	
}
?>