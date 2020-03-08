<?php

$user = 'root';
$password = 'root';
$db = 'mydb';
$host = 'localhost:8889';

$link = new mysqli(
   $host, 
   $user, 
   $password,$db
);


if (isset($_GET['done'])) {
//$_POST['id'];
  $usery=$_GET['usery'];
  $topic=$_GET['topic'];
  $currenttime=$_GET['timemin'];
  $reactiony=$_GET['current_reacty'];
  $totalsecsy=$_GET['totalsecsy'];

$qy="INSERT INTO `note` (loginuser,note,time_mark,second,reaction)
VALUES ('$usery','$topic','$currenttime','$totalsecsy','$reactiony')" ;
mysqli_query($link,$qy);
 echo "data entered successfully"; 
}
if (isset($_GET['doney'])) {
$id=0;//$_POST['id'];
  $userya=$_GET['usery'];
  $topicy=$_GET['topicy'];
  $currenttimey=$_GET['timeminy'];
  $totalsecs=$_GET['totalsecs'];
  $reaction=$_GET['current_react'];

$qya="INSERT INTO chat (chatuser,chat,time_mark,second,reaction)
VALUES ('$userya','$topicy','$currenttimey','$totalsecs','$reaction')" ;
mysqli_query($link,$qya);
 echo "data entered successfully"; 
}



if (isset($_GET['display'])) {
$usery=$_GET['usery'];
$resulty = mysqli_query($link,"SELECT * FROM `note` WHERE `loginuser` = '$usery' " );
while ($rowy=mysqli_fetch_array($resulty)) {
?>


	<div class="comment_display" id="0">
		
		<span class="timestamp"><?php echo $rowy['time_mark']; ?></span>
		<p class="comment_content"><?php echo $rowy['note']; ?></p>
		<img class="comment_react" src="images/<?php echo $rowy['reaction']; ?>.png">

	</div>
	<script type="text/javascript">







		var blank="<?php echo $rowy['reaction']; ?>";
		if (blank=="0") {
          document.getElementsByClassName("comment_react")[0].style.display="none";
		}
	</script>

	<?php
}

}
//Time Chat starts from here................

if (isset($_GET['displaytimechat'])) {
$resultchat = mysqli_query($link,"SELECT * FROM `chat` ORDER BY  `time_mark` DESC " );
while ($rowchat=mysqli_fetch_array($resultchat)) {
?>


	<div class="comment_display" id="<?php echo $rowchat['second']; ?>">
		<span class="comment_u"><?php echo $rowchat['chatuser']; ?></span>
		<br>
		<span class="timestamp"><?php echo $rowchat['time_mark']; ?></span>
		<p class="comment_content"><?php echo $rowchat['chat']; ?></p>
		<div class="reply_btn r<?php echo $rowchat['id']; ?>">Reply</div>
		<img class="comment_react" src="images/<?php echo $rowchat['reaction']; ?>.png">
		
	</div>
	<div class="reply_column reply_column<?php echo $rowchat['id']; ?>">
		<div class=" reply_c<?php echo $rowchat['id']; ?>"></div>
		<input type="text" class="reply reply<?php echo $rowchat['id']; ?>">
		<button type="submit" class="submitreply" id="<?php echo $rowchat['id']; ?>"><img src="images/tick.png" class="tick"></button>
	</div>
	<script type="text/javascript">
		var blank="<?php echo $rowchat['reaction']; ?>";
		if (blank=="0") {
          document.getElementsByClassName("comment_react")[0].style.display="none";
		}
		document.getElementsByClassName("r<?php echo $rowchat['id']; ?>")[0].onclick = function(){
			if(document.getElementsByClassName("r<?php echo $rowchat['id']; ?>")[0].innerHTML == "Reply"){
				document.getElementsByClassName("reply_column<?php echo $rowchat['id']; ?>")[0].style.display = "block";
				document.getElementsByClassName("r<?php echo $rowchat['id']; ?>")[0].innerHTML = "Hide Reply";
			} else {
				document.getElementsByClassName("reply_column<?php echo $rowchat['id']; ?>")[0].style.display = "none";
				document.getElementsByClassName("r<?php echo $rowchat['id']; ?>")[0].innerHTML = "Reply";
			}
		}
	</script>


	<?php
}
die();
}


                                                                             //normal chat starts here

if (isset($_GET['displaychat'])) {

$resultchat = mysqli_query($link,"SELECT * FROM `chat` " );
while ($rowchat=mysqli_fetch_array($resultchat)) {
?>


	<div class="comment_display" id="<?php echo $rowchat['second']; ?>">
		<span class="comment_u"><?php echo $rowchat['chatuser']; ?></span>
		<br>
		<span class="timestamp"><?php echo $rowchat['time_mark']; ?></span>
		<p class="comment_content"><?php echo $rowchat['chat']; ?></p>
		<div class="reply_btn r<?php echo $rowchat['id']; ?>">Reply</div>
		<img class="comment_react" src="images/<?php echo $rowchat['reaction']; ?>.png">
			
		</div>
		
	</div>
	<div class="reply_column reply_column<?php echo $rowchat['id']; ?>">
		<div class=" reply_c<?php echo $rowchat['id']; ?>"></div>
		<input type="text" class="reply reply<?php echo $rowchat['id']; ?>">
		<button type="submit" class="submitreply" id="<?php echo $rowchat['id']; ?>"><img src="images/tick.png" class="tick"></button>
	</div>
	<script type="text/javascript">
		var blank="<?php echo $rowchat['reaction']; ?>";
		if (blank=="0") {
          document.getElementsByClassName("comment_react")[0].style.display="none";
		}
		document.getElementsByClassName("r<?php echo $rowchat['id']; ?>")[0].onclick = function(){
			if(document.getElementsByClassName("r<?php echo $rowchat['id']; ?>")[0].innerHTML == "Reply"){
				document.getElementsByClassName("reply_column<?php echo $rowchat['id']; ?>")[0].style.display = "block";
				document.getElementsByClassName("r<?php echo $rowchat['id']; ?>")[0].innerHTML = "Hide Reply";
			} else {
				document.getElementsByClassName("reply_column<?php echo $rowchat['id']; ?>")[0].style.display = "none";
				document.getElementsByClassName("r<?php echo $rowchat['id']; ?>")[0].innerHTML = "Reply";
			}
		}
	</script>
	<script type="text/javascript">
		
		$("#<?php echo $rowchat['id']; ?>").click(function (argument) {
			var reply_id="<?php echo $rowchat['id']; ?>";
			var user_reply=document.querySelector('#phplogin').innerText;
            var reply_content=$(".reply<?php echo $rowchat['id']; ?>").val();
            var reply_post=1;   

		load_reply();

 function load_reply()
 {
  $.ajax({
   url:"ajaxy1.php",
   method:"POST",
   data:{
   	reply_post:reply_post,
   	reply_id:reply_id,
user_reply:user_reply,
reply_content:reply_content

   },
   success:function(data)
   {
   displayreply(user_reply,reply_id);
    $(".reply<?php echo $rowchat['id']; ?>").val('');
       alert(reply_content);}
  })
 }
        });

 function displayreply(user_reply,reply_id) {
	var display_reply=1;
	  $.ajax({
   url:"ajaxy1.php",
   method:"POST",
   data:{display_reply:1,
   	user_reply:user_reply,
   	reply_id:reply_id
   	},
   success:function(d)
   {alert(reply_id);
   $(".reply_c"+reply_id).html(d);
   }
  })
	
} 


	</script>
	
	<?php
}
die();
}
