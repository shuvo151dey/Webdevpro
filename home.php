<?php
session_start();
?>


<html>

  <link rel="stylesheet" type="text/css" href="home.css">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="animate.css"><link href="https://fonts.googleapis.com/css?family=Rock+Salt&display=swap" rel="stylesheet"><link href="https://fonts.googleapis.com/css?family=Bungee+Shade&display=swap" rel="stylesheet">
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
  <title>MASHBOOK</title>
</head>

<body>
  <div class="main1 animated bounceInDown">
    <img src="images.png" height="50px" width="50px" class="photo"><p class="welcome" align="center"><?php echo ($_SESSION['user']); ?></p>


    <form action="logout.php" class="form">
      <button class="submit" align="center" type="submit" name="submit">Logout</button>
</form>
    </div>



   <div class="main2">
      <div class="displaya"></div>
     <textarea class="topic" type="text" align="center" name="comment" placeholder="ADD TOPIC"></textarea><br><br>
      <input class="submit1" align="center" type="submit" name="submit" id="submitpost" value="POST">
</div>

    
<?php     //<textarea class="topic"  type="text" align="center" name="topic" placeholder="ADD TOPIC"></textarea>    ?>
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript">
$(document).ready(function () {displaytopic();
  //setInterval(function(){displaytopic();}, 1000);


$("#submitpost").click(function (argument) {
    var user=document.querySelector('.welcome').innerText;
    var topic=$(".topic").val();
    var id=0;




 load_comment();

 function load_comment()
 {
  $.ajax({
   url:"ajax.php",
   method:"POST",
   data:{done:1,
   	id:id,
user:user,
topic:topic
   },
   success:function(data)
   {displaytopic();
    $('.topic').val('');
   }
  })
 }


});


});
function displaytopic() {
	  $.ajax({
   url:"ajax.php",
   method:"POST",
   data:{display:1
   },
   success:function(d)
   {
   $(".displaya").html(d);
   }
  })
	
}


</script>
    
</body>
</html>

