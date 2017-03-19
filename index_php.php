<?php 
include 'dbconnect.php';   ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="isola board game">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Zombie Mathematics</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="jumbotron.css" rel="stylesheet">
  

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
    <style type="text/css">
      body {
      padding-top: 54px;
      padding-bottom: 20px;
      }
      .box{  margin-right:4px;
             margin-bottom:4px;

      }
      #game{
        display: flex;
        flex-direction:row;
        justify-content:center;
        width: 100% !important;
      }

     .dead{
      	background-color: red;
      }
      .movable{
        background-color: lightgreen;
      }
	    
      
      .score{
        display: flex;
        padding:10px;
        background-color: lightgreen;
        position: absolute;
        border-radius: 3px;
        justify-content:center;
        align-items:center;
        
      }

      .score1{
       
        width:100px;
        height:100px;
      }

      .score2{
        
        width:100px;
        height:100px;
      }

      .scorecontainer{
        position: absolute;
        display:flex;
        justify-content:center;
        width: 170px;
        height:170px;
        font-size: 30px
      }

      .scorecontainer1{
        left:50px;
      }

      .scorecontainer2{
        right: 50px;
      }
   
     .container{
      width: 100%;
     }
     #questions{
      display:none;
     }
    </style>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
  
  <div id="questions">
    <div class="ques">
      
      <?php 
for ($x = 1; $x <= 49; $x++) {

    $prompt=mysql_query("SELECT question from questions WHERE qno=".$x) or die("error in query");
    $row = mysql_fetch_row($prompt);
    echo '<p id="prompt'.$x.'">'.$row[0].'</p>';
    $q=mysql_query("SELECT answer from questions WHERE qno=".$x) or die("error in query");
    $row = mysql_fetch_row($q);
    echo '<p id="q'.$x.'">'.sha1($row[0]).'</p>';
} 
?>  

    
    </div>
  </div>
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Zombie Mathematics</a>
          
        </div>
        
        <div id="navbar" class="navbar-collapse collapse">
          
          <form class="navbar-form navbar-right">
            
            <a href="logout.php" class="btn btn-danger"><strong>Logout</strong></a>
          </form>
        </div><!--/.navbar-collapse -->
      </div>
    </nav>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    
      <div class="container" >  
      <div class="alert alert-info">
		  <h4 style="text-align: center;"><strong>Move ! Move ! </strong> <em>Player 1 </em> its time to move your Zombie.</h4>
	  </div>
	 
      <div id="game" style="width:100%;">
       <div class="scorecontainer scorecontainer1">
          Player 1
         <div class="score score1">0</div>
       </div>
      <table>
        <tr class="gamerow">
          <td class="box btn btn-primary box1" id="11"></td>
          <td class="btn btn-primary box box1" id="12"></td>
          <td class="btn btn-primary box box1" id="13"></td>
          <td class="btn btn-defualt box box1" id="14">Player <br/>1<br/><span class="glyphicon glyphicon-bishop" aria-hidden="true"></span></td>
          <td class="btn btn-primary box box1" id="15"></td>
          <td class="btn btn-primary box box1" id="16"></td>
          <td class="btn btn-primary box box1" id="17"></td>
        </tr>
        <tr class="gamerow">
          <td class="btn btn-primary box box1" id="21"></td>
          <td class="btn btn-primary box box1" id="22"></td>
          <td class="btn btn-primary box box1" id="23"></td>
          <td class="btn btn-primary box box1" id="24"></td>
          <td class="btn btn-primary box box1" id="25"></td>
          <td class="btn btn-primary box box1" id="26"></td>
          <td class="btn btn-primary box box1" id="27"></td>
        </tr>
        <tr class="gamerow">
          <td class="btn btn-primary box box1" id="31"></td>
          <td class="btn btn-primary box box1" id="32"></td>
          <td class="btn btn-primary box box1" id="33"></td>
          <td class="btn btn-primary box box1" id="34"></td>
          <td class="btn btn-primary box box1" id="35"></td>
          <td class="btn btn-primary box box1" id="36"></td>
          <td class="btn btn-primary box box1" id="37"></td>
        </tr>
        <tr class="gamerow">
          <td class="btn btn-primary box box1" id="41"></td>
          <td class="btn btn-primary box box1" id="42"></td>
          <td class="btn btn-primary box box1" id="43"></td>
          <td class="btn btn-primary box box1" id="44"></td>
          <td class="btn btn-primary box box1" id="45"></td>
          <td class="btn btn-primary box box1" id="46"></td>
          <td class="btn btn-primary box box1" id="47"></td>
        </tr>
        <tr class="gamerow">
          <td class="btn btn-primary box box1" id="51"></td>
          <td class="btn btn-primary box box1" id="52"></td>
          <td class="btn btn-primary box box1" id="53"></td>
          <td class="btn btn-primary box box1" id="54"></td>
          <td class="btn btn-primary box box1" id="55"></td>
          <td class="btn btn-primary box box1" id="56"></td>
          <td class="btn btn-primary box box1" id="57"></td>
        </tr>
        <tr >
          <td class="btn btn-primary box box1" id="61"></td>
          <td class="btn btn-primary box box1" id="62"></td>
          <td class="btn btn-primary box box1" id="63"></td>
          <td class="btn btn-primary box box1" id="64"></td>
          <td class="btn btn-primary box box1" id="65"></td>
          <td class="btn btn-primary box box1" id="66"></td>
          <td class="btn btn-primary box box1" id="67"></td>
        </tr>
        <tr class="gamerow">
          <td class="btn btn-primary box box1" id="71"></td>
          <td class="btn btn-primary box box1" id="72"></td>
          <td class="btn btn-primary box box1" id="73"></td>
          <td class="btn btn-defualt box box1" id="74">Player <br/>2<br/><span class="glyphicon glyphicon-bishop" aria-hidden="true"></span></td>
          <td class="btn btn-primary box box1" id="75"></td>
          <td class="btn btn-primary box box1" id="76"></td>
          <td class="btn btn-primary box box1" id="77"></td>
        </tr>


      </table>
      <div class="scorecontainer scorecontainer2">Player 2
      <div class="score score2">0</div></div>
      </div> 
       <!-- Game Panel Div Ends -->
     
      
      
      <footer>
        <p>&copy; 2017 Mathematics Association .</p>
      </footer>
   	</div> <!-- Game Panel CONTAINER Div Ends -->
   


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    
    <script src="../../dist/js/bootstrap.min.js">
     player1 = document.getElementById('14');
     player2 = document.getElementById('74');

    </script>
      <script type="text/javascript" src="js/sha1.js"></script>
      <script type="text/javascript" src="js/clickable_fn.js?v=123"></script>
      <script type="text/javascript" src="js/setalign.js?v=234"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
