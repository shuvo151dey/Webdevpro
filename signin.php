 <?php
session_start();

?>


<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="signin.css"><link href="https://fonts.googleapis.com/css?family=Righteous&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="animate.css"><link href="https://fonts.googleapis.com/css?family=Rock+Salt&display=swap" rel="stylesheet"><link href="https://fonts.googleapis.com/css?family=Bungee+Shade&display=swap" rel="stylesheet">

	<title>Welcome To Mashbook</title>
</head>
<body>
<h1 class="content"> Hi <?php echo($_SESSION['user']); ?>, your account is created successfully,please login to enjoy mashbook!</h1>
 <div class="main1 animated rotateInDownLeft">
    <p class="welcome" align="center">Login Here</p>
   <form class="form1" action="login.php" method="POST">
      <input class="username" type="text" align="center" name="user" placeholder="<?php echo($_SESSION['user']); ?>">
      <?php session_destroy();?>
      <input class="pass" type="password" align="center" name="pass" placeholder="PASSWORD"><br><br>
      <button class="submit" align="center" type="submit" name="submit">Login</button>
</form>
    </div>








</body>
</html>