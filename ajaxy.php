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
$id=0;//$_POST['id'];
  $usery=$_GET['usery'];
  $topic=$_GET['topic'];
  $currenttime=$_GET['timemin'];

$qy="INSERT INTO notes (loginuser,note,time_mark)
VALUES ('$usery','$topic','$currenttime')" ;
mysqli_query($link,$qy);
 echo "data entered successfully"; 
}
if (isset($_GET['doney'])) {
$id=0;//$_POST['id'];
  $userya=$_GET['usery'];
  $topicy=$_GET['topicy'];
  $currenttimey=$_GET['timeminy'];

$qya="INSERT INTO chat (chatuser,chat,time_mark)
VALUES ('$userya','$topicy','$currenttimey')" ;
mysqli_query($link,$qya);
 echo "data entered successfully"; 
}



if (isset($_GET['display'])) {
$usery=$_GET['usery'];
$resulty = mysqli_query($link,"SELECT * FROM `notes` WHERE `loginuser` = '$usery' " );
while ($rowy=mysqli_fetch_array($resulty)) {
?>
<style type="text/css">
	.comment_u,
.timestamp{
  font-size: small!important;
  font-style: italic!important;
}
.timestamp{
  display: block;
  position: absolute;
  right: 10px;
  top: 0
}
.comment_display{
  height: fit-content;
  background: antiquewhite;
  width: fit-content;
  min-width: 60%;
  max-width: 100%;
  position: relative;
  padding-left: 5px;
}
.comment_content{
  max-width: 100%;
  padding-top: 10px;
  font-size: 14px;
}
</style>

	<div class="comment_display" id="0">
		
		<span class="timestamp"><?php echo $rowy['time_mark']; ?></span>
		<p class="comment_content"><?php echo $rowy['note']; ?></p>
	</div>

	<?php
}

}
//Chat starts from here................

if (isset($_GET['displaychat'])) {
$usery=$_GET['usery'];
$resultchat = mysqli_query($link,"SELECT * FROM `chat` " );
while ($rowchat=mysqli_fetch_array($resultchat)) {
?>
<style type="text/css">
	.comment_u,
.timestamp{
  font-size: small!important;
  font-style: italic!important;
}
.timestamp{
  display: block;
  position: absolute;
  right: 10px;
  top: 0
}
.comment_display{
  height: fit-content;
  background: antiquewhite;
  width: fit-content;
  min-width: 60%;
  max-width: 100%;
  position: relative;
  padding-left: 5px;
}
.comment_content{
  max-width: 100%;
  padding-top: 10px;
  font-size: 14px;
}
.reply_btn{
	position: absolute;
    right: 0;
    bottom: -18px;
    height: fit-content;
    width: fit-content;
    font-size: x-small;
    cursor: pointer;
}
</style>

	<div class="comment_display">
		<span class="comment_u"><?php echo $rowchat['chatuser']; ?></span>
		<br>
		<span class="timestamp"><?php echo $rowchat['time_mark']; ?></span>
		<p class="comment_content"><?php echo $rowchat['chat']; ?></p>
		<div class="reply_btn r<?php echo $rowchat['id']; ?>">Reply</div>
	</div>
	<div class="reply_column">
		<input type="text" class="reply">
		<button type="submit"></button>
	</div>
	<?php
}
die();
}
