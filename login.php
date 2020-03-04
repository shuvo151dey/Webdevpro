<?php
session_start();

$user = 'root';
$password = 'root';
$db = 'mydb';
$host = 'localhost:8889';

$link = new mysqli(
   $host, 
   $user, 
   $password,$db
);


$name=mysqli_real_escape_string($link, $_POST['user']);
$pass=mysqli_real_escape_string($link, $_POST['pass']);

if (empty($name) || empty($pass)) {
header("Location: http://localhost:8888/Webdevpro-master/loda.php");
exit();
}


$q="SELECT * FROM Users WHERE username='$name' && password='$pass' ";
$result=mysqli_query($link,$q);
$num=mysqli_num_rows($result);
if($num>=1){
$_SESSION['loginuser']=$name;

header('location:http://localhost:8888/Webdevpro-master/loda.php');
}
else{
$_SESSION['loginuser']="empty1";
header('location:http://localhost:8888/Webdevpro-master/loda.php');
}


?>