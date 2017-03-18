var letters = /^[a-zA-Z ]+$/;          //Regex pattern to identify names
var phone = /^[7-9]+[0-9]{9}$/;        //Regex pattern to identify phone number

$('#player2').addClass("disabled");

//Function after clicking submit of player1
$('#submit1').on('click', function(e){
   e.preventDefault();
   
  var name1 = document.forms[0].elements[0].value;
  var college_name1 = document.forms[0].elements[2].value;
  var phone_number1 = document.forms[0].elements[3].value;
   if(validateData(name1,phone_number1,college_name1))
    {
    }
    else
    {return;}
   
   if(confirm("Is the information entered by you correct?")){
// Add AJAX Call Here

$('#player2').removeClass("disabled");
$('#player1').addClass("disabled");

 }

});



//Function after clicking submit of player2
$('#submit2').on('click', function(e){
   
  
  e.preventDefault();
   
  var name2 = document.forms[0].elements[5].value;
  var college_name2 = document.forms[0].elements[7].value;
  var phone_number2 = document.forms[0].elements[8].value;
  
if(validateData(name2, phone_number2,college_name2))
   {}
   else{return;}
   
  if(confirm("Is the information entered by you correct?")){
  $('#form1').submit();

  }


});

function validateData(name,phone_number,college_name){
	if(name.match(letters)&&college_name.match(letters))  
    {  
        
    }  
  else  
     {  
     alert("Check Name or College Name fields! Please enter ONLY letters in these fields");  
     return false;
     }

    if(phone_number.match(phone))
    {
      return true;
    }   
    else
    {
      
      alert("Enter a valid phone number!");
      return false;
    }
}
