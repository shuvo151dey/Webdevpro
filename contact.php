<?php
$username = 'root';
$password = 'root';
$db = 'mydb';
$host = 'localhost:8889';

$link = new mysqli(
   $host, 
   $username, 
   $password,$db
);

if ($link->connect_error) {
    die("Connection failed: " . $link->connect_error);} 

$phone=mysqli_real_escape_string($link, $_POST['phone']);
$comment=mysqli_real_escape_string($link, $_POST['comment']);
$website=mysqli_real_escape_string($link, $_POST['website']);
$name=mysqli_real_escape_string($link, $_POST['name']);
$email=mysqli_real_escape_string($link, $_POST['email']);
$qa="INSERT INTO `contactus` (name,website,comment,email,phone)
VALUES ('$name','$website','$comment','$email','$phone')";
if ($link->query($qa) === TRUE) {
    echo "Entered successfully";
} else {
    echo "Error: " . $qa . "<br>" . $link->error;
}
header( "Location: http://localhost:8888/Webdevpro-master/generic.html" );
die();
?>