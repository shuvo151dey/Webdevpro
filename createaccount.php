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
$_SESSION['signuser']=$name;


$qy="INSERT INTO Users(username,password)
VALUES ('$name','$pass')" ;

echo ($_SESSION['signuser']);

if ($link->query($qy) === TRUE) {
    $last_id = $conn->insert_id;
}

header("location:http://localhost:8888/Webdevpro-master/loda.php");
?>













