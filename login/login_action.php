<?php
session_start();
if(isset($_SESSION['user'])!="")
{
	header("Location: ../");
}
include_once '../dbconnect.php';

?>
  <?php
	$string = $_POST['string'];
	
	// email exist or not
	$query = "SELECT * FROM gameboard WHERE string='$string'";
	$result = mysql_query($query);
	
	$count = mysql_num_rows($result); // if email not found then register
	
	if($count != 0){
		
		header("Location: game.php");
		$_SESSION['user']=$string;
			
	}
	else{
			?>
			<script>alert('Sorry your string has no gameboard. Please ask for a new one if time left.');window.location="./";</script>
			<?php
	}
	


?>