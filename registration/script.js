$('#player2').addClass("disabled");



//Function after clicking submit of player1
$('#submit1').on('click', function(e){
   e.preventDefault();
   
   if(confirm("Is the information entered by you correct?")){
// Add AJAX Call Here

$('#player2').removeClass("disabled");
$('#player1').addClass("disabled");

 }

});



//Function after clicking submit of player2
$('#submit2').on('click', function(e){
   e.preventDefault();
  
  e.preventDefault();
  if(confirm("Is the information entered by you correct?")){
  $('#form1').submit();

  }


});
