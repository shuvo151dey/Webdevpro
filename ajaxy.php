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
  min-width: 50%;
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
die();
}
