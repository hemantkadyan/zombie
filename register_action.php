<?php
session_start();
if(isset($_SESSION['user'])!="")
{
	header("Location: index.php");
}
include_once 'dbconnect.php';

?>
  <?php
	$name = $_POST['name'];
	
	$password = $_POST['password'];
	
	
	$email = $_POST['email'];
	$id=$_POST['id'];
	$phone=$_POST['phone'];

	
	
	
	// email exist or not
	$query = "SELECT username FROM users WHERE email='$email'";
	$result = mysql_query($query);
	
	$count = mysql_num_rows($result); // if email not found then register
	
	if($count == 0){
		
		if(mysql_query("INSERT INTO users(name,email,password,id,phone) VALUES('$name','$email','$password','$id','phone')"))
		{	
			?>			
			<script>alert('successfully registered ');window.location="index.php";</script>
			<?php
		}
		else
		{
			?>
			<script>alert('error while registering you...');window.location="index.php";</script>
			<?php
		}		
	}
	else{
			?>
			<script>alert('Sorry Email ID already Registered ...Or maybe you are submitting an empty form.');window.location="index.php";</script>
			<?php
	}
	
}

?>