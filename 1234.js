$(document).ready(function(){
  
  alert("sd");

  var play = 1;

clickable = function(a){
      var clickables = [];
      if (a==11) {
         return clickables = [12,21,22];
      }

      else if(a>11 && a<17){
       return clickables = [a-1,a+1,a+9,a+10,a+11];
      }

      else if (a==17) {
       return clickables = [16,26,27];
      }

      else if (a == 21 ||a == 31 ||a == 41 ||a == 51 ||a == 61 ) {
       return clickables = [a-10,a-9,a+1,a+10,a+11];
      }

      else if (a == 27 ||a == 37 ||a == 47||a == 57 ||a == 67 ) {
       return clickables = [a-11,a-10,a-1,a+9,a+10];
      }

      else if (a>21 && a<67){
       return clickables = [a-11,a-10,a-9,a-1,a+1,a+9,a+10,a+11];
      }

      else if (a>71 && a<77) {
       return clickables = [a-11,a-10,a-9,a-1,a+1];
      }

      else if (a == 71){
       return clickables = [61,62,72];
      }

      else if (a== 77) {
       return clickables =[66,67,76];
      }
    }


function eatSpace(a){
  $("#" +  a).css('background-color','red');
}


//var s=$('.box:contains("Player 1")').attr('id');
//var s1 = parseInt(s);
$(".box").click(function(){
  if (play==4) {
    var pl1 = $('.box:contains("Player 1")').attr("id");
    var pl2 = $('.box:contains("Player 2")').attr("id");
    var id1 = $(this).attr("id");
    if (id1!=pl1 && id1!=pl2) {
      if (confirm("Player 2 Are you sure you want to eat up this space?")) {
        eatSpace(id1);
        play = 1;
        alert("Now, it's Player1's turn to move.")
      }
    }

  }



  if (play==3) {
    a= parseInt($(this).attr("id"));
    var b = $(this).attr("id");
    var s=$('.box1:contains("Player 2")').attr('id');
    var id = parseInt(s);
    var q =clickable(id);
    var content,new_box;

    if (q.indexOf(a) != -1) {
      if (confirm('Do you want to move here ?')) {
    content = $('.box:contains("Player 2")').html();


    $('#' + s).html(' ');
    $('#' + s).removeClass("btn-defualt");
    $('#' + s).addClass("btn-primary");
    $('#' + b).html(content);
    $('#' + b).removeClass("btn-primary");
    $('#' + b).addClass("btn-defualt");


    play = 4;
    alert("Now it's player 2's time to eat up some space.");
    }
  }
  }

  



  if (play==2) {
    var pl1 = $('.box:contains("Player 1")').attr("id");
    var pl2 = $('.box:contains("Player 2")').attr("id");
    alert(pl1);
    var id1 = $(this).attr("id");
    if (id1!=pl1 && id1!=pl2) {
      if (confirm("Player 1 Are you sure you want to eat up this space?")) {
        eatSpace(id1);
        play = 3;
        alert("Now, it's Player2's turn to move.")
      }
    }
  }



  if (play==1) {
    a= parseInt($(this).attr("id"));
    var b = $(this).attr("id");
    var s=$('.box1:contains("Player 1")').attr('id');
    var id = parseInt(s);
    var id1 = 'q' + s;
    var id2 = 'q' + b;
    var q =clickable(id);
    var content,new_box;


    if (q.indexOf(a) != -1) {
      if (confirm('Do you want to move here ?')) {
    content = $('.box:contains("Player 1")').html();


    $('#' + s).html(' ');
    $('#' + s).removeClass("btn-defualt");
    $('#' + s).addClass("btn-primary");
    $('#' + b).html(content);
    $('#' + b).removeClass("btn-primary");
    $('#' + b).addClass("btn-defualt");


    $('#' + id1).html(' ');
    $('#' + id1).removeClass("btn-defualt");
    $('#' + id1).addClass("btn-primary");
    $('#' + id2).html(content);
    $('#' + id2).removeClass("btn-primary");
    $('#' + id2).addClass("btn-defualt");
    play = 2;
    alert("Now it's player 1's time to eat up some space.");
    }
  }
  }


    


    
  
  });


});