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


if (isset($_GET['reply_post'])) {
//$_POST['id'];
  $reply_id=$_GET['reply_id'];
  $reply_content=$_GET['reply_content'];
  $user_reply=$_GET['user_reply'];

$qy="INSERT INTO `reply` (user,reply,post_id)
VALUES ('$user_reply','$reply_content','$reply_id')" ;
mysqli_query($link,$qy);
 echo "data entered successfully"; 
}

if (isset($_GET['display_reply'])) {
$user_reply=$_GET['user_reply'];
$reply_id=$_GET['reply_id'];
$resulty = mysqli_query($link,"SELECT * FROM `reply`  WHERE `post_id` = '$reply_id'" );
while ($rowy=mysqli_fetch_array($resulty)) {
?>

		
		<div class="comment_display" style="text-align: left"><span class="comment_u"><?php echo $rowy['user']; ?></span>
		<p class="comment_content"><?php echo $rowy['reply']; ?></p></div>
		

	


	<?php
}

}
