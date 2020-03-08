<?php
session_start();
?>

<!DOCTYPE HTML>

<html>
	<head>
		<title>Demo</title>

		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />

		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="stylesheet" href="assets/css/chatbox.css" />
		<link rel="stylesheet" type="text/css" href="assets/css/videocontrols.css">
		<link rel='stylesheet' type='text/css' href='assets/css/player.css' />

		<script src="assets/js/jquery.js"></script>
		<script src='assets/js/javascript.js'></script>


	</head>
	<body>


			<header id="header">
				<div class="inner">
					<a href="index.html" class="logo">Annoto</a>
					<nav id="nav">
						<a href="index.html">Home</a>
						<a href="generic.html">Edtech</a>
						<a href="generic.html">Corporate</a>
						<a href="generic.html">Portals</a>
						<a href="generic.html">About us</a>
						<button id="myBtn" class="button alt">Request a demo</button>
					</nav>
				</div>
			</header>
			<div id="php" class="loda"><?php echo isset(($_SESSION['signuser'])); ?></div>
<div id="phpname" class="loda"><?php echo ($_SESSION['signuser']); ?></div>
<div id="phplogin" class="loda"><?php echo ($_SESSION['loginuser']); ?></div>
<div id="loginbool" class="loda"><?php echo isset(($_SESSION['loginuser'])); ?></div>

			<a href="#menu" class="navPanelToggle"><span class="fa fa-bars"></span></a>



			<section id="banner" >
				<div class="inner">

					<p>“ I never teach my pupils. I only attempt to  provide the conditions in which they can  learn.”
						<br/> Albert Einstein</p>
				</div>
			</section>

		<!--Video player-->

<div class="data" id="data"></div>
<div class="container">
	<video id="myVideo" width="600" height="355" >
		<source src="video1.mp4" type="video/mp4" >
		
	</video>
	<ul class="graph"><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li></ul>
	<ul id="video-controls" class="controls">
		<li class="progress">
			<progress id="progress" value="0" min="0">
				<span id="progress-bar"></span>
			</progress>
		</li>
		   <li><button id="playpause" type="button"><img src="images/play_pause.png" height="25" width="25"></button></li>
		   <li><button id="stop" type="button"><img src="images/stop.png" height="25" width="25"></button></li>
		   <li><button id="mute" type="button"><img src="images/mute.svg" height="25" width="25"></button></li>
		<li class="positioner">+</li>
		   <li><button id="volinc" type="button"><img src="images/volinc.png" height="25" width="25"></button></li>
		   <li><button id="voldec" type="button"><img src="images/voldec.png" height="25" width="25"></button></li>
		   <li><button id="fs" type="button"><img src="images/fullscreen.png" height="25" width="25"></button></li>
	</ul>
<script type="text/javascript" src="assets/js/videocontrols.js"></script>

	<div class="chatbox">
		<div class="chatbox_upbar">
			<div class="dropdown_btn" id="ddb"><div class="dropdown_logo"></div></div>
			<div class="con" id="con">Chat</div>
			<div class="exit_btn"></div>
			<div class="mini_btn"></div>
			<ul class="dropdownbox" id="dd">
				<li class="dd_opt" id="chat_b2">Chat</li>
				<li class="dd_opt" id="note_b2">Notes</li>
				<li class="dd_opt" id="log">Login</li>
				<li class="dd_opt" id="sign">Sign Up</li>
			</ul>
			<select class="sort_method">
				<option value="1">Newest</option>
				<option value="2" id="sort">Timestamp</option>
				
			</select>>
		</div>
		<div class="chatbox_midbar" id="bg">
			<div class="chatarea">
				<div class="main1" id="main1">
	    			<p class="welcome">Please fill the following form:</p>
	    			<form class="form1" action="createaccount.php" method="POST">
		      			<input class="username" type="text" align="center"  name="user" placeholder="USERNAME">
		      			<input class="pass" type="password" align="center" name="pass" placeholder="PASSWORD">
		      			<button class="submit" align="center" type="submit" name="submit">Signup</button>
					</form>
	    		</div>
	    		<div class="main2" id="main2">
	    			<p class="welcome">Please Login</p>
	    			<form class="form1" action="login.php" method="POST">
		      			<input class="username" type="text" align="center"  name="user" placeholder="USERNAME">
		      			<input class="pass" type="password" align="center" name="pass" placeholder="PASSWORD">
		      			<button class="submit1" align="center" type="submit" name="submit">Login</button>
					</form>
	    		</div>
	    		<div class="main3" id="main3">
	    			<h4 class="contenty"> Hi <?php echo($_SESSION['signuser']); ?>, your account is created successfully,please login to add notes and comment</h4>
				</div>
				<div class="main4" id="main4">
	    			<h4 class="contenty"> Please Login to Add Notes</h4>
				</div>

				<div class="main5" id="main5">
					<form class="form1" action="logout.php" method="POST">
					<button class="submit3" align="center" type="submit" name="submit">Logout</button></form>
				</div>
				<div class="main6" id="main6">
					
                 
      <div class="displaya"></div>
      <div class="reactionhide" id="reactionhide">0</div>
     


    
<?php     //<textarea class="topic"  type="text" align="center" name="topic" placeholder="ADD TOPIC"></textarea>    ?>
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript">

$(document).ready(function () {var usery=document.querySelector('#phplogin').innerText;
	displaytopic(usery);
	    //adding event listeners



$("#submitpost").click(function (argument) {
	var current_reacty=document.getElementById("reactionhide").innerHTML;
	var vid = document.getElementById("myVideo");
 var usery=document.querySelector('#phplogin').innerText;
    var topic=$(".topic").val();
    var id=0;
    var currenttime=vid.currentTime;
    var done=1;
var totalsecsy=Math.floor(currenttime);
var secs = Math.round(currenttime);
var hours = Math.floor(secs / (60 * 60));
var divisor_for_minutes = secs % (60 * 60);
var minutes = Math.floor(divisor_for_minutes / 60);
var divisor_for_seconds = divisor_for_minutes % 60;
var seconds = Math.ceil(divisor_for_seconds);
var zero="0";
if (hours<10) {
var hour=hours.toString();
hour=zero.concat(hour);	
}
else{
	var hour=hours.toString();
}
if (minutes<10) {
var minute=minutes.toString();
minute=zero.concat(minute);	
}
else{
	var minute=minutes.toString();
}
if (seconds<10) {
var second=seconds.toString();
second=zero.concat(second);	
}
else{
	var second=seconds.toString();
}
var colon=":";
var timemin=hour.concat(colon,minute,colon,second);


 load_comment();

 function load_comment()
 {
  $.ajax({
   url:"ajaxy.php",
   method:"POST",
   data:{
   	done:done,
   	id:id,
usery:usery,
timemin:timemin,
topic:topic,
totalsecsy:totalsecsy,
current_reacty:current_reacty
   },
   success:function(data)
   {
   displaytopic(usery);
   document.getElementById("reactionhide").innerHTML="0";
    document.getElementById("ilb").innerHTML = "+";
    $('.topic').val('');
   }
  })
 }


});


});
function displaytopic(usery) {
	var display=1;
	  $.ajax({
   url:"ajaxy.php",
   method:"POST",
   data:{display:1,
   	usery:usery
   	},
   success:function(d)
   {
   $(".displaya").html(d);
   }
  })
	
}  


</script>


				</div>
				                                                                <!-- chat starts from here -->
			<div class="main7" id="main7">
			<div class="displayb"></div>
				
		<script type="text/javascript">		
$(document).ready(function () {
	var myvid=document.getElementById("myVideo");
	myvid.oncanplay = function() {
   var vid_len = document.getElementById('myVideo').duration;
   var x=1;
load_graph();

 function load_graph()
 {
  $.ajax({
   url:"x.php",
   method:"POST",
   data:{
   	x:x,
vid_len:vid_len

   },
   success:function(d)
   {
   alert(vid_len);
   alert("datadisplayed");
   $(".data").html(d);
   }
  })
 }

  

};



	var usery=document.querySelector('#phplogin').innerText;
	displaychat(usery);
	
  //setInterval(function(){displaytopic();}, 1000);
var displaytimechat=0;
  //setInterval(function(){displaytopic();}, 1000);
 function show(){
 // get selected value and store it in val
 var val = document.getElementsByTagName('select')[0].value;
 // show selected value
if (val==2) {
	displaytimechat();
var vid = document.getElementById("myVideo");



vid.ontimeupdate = function() {myFunction()};
function myFunction() {var showtime=Math.floor(vid.currentTime);
  // Display the current position of the video in a p element with id="demo"
var secs = Math.round(vid.currentTime);
var hours = Math.floor(secs / (60 * 60));
var divisor_for_minutes = secs % (60 * 60);
var minutes = Math.floor(divisor_for_minutes / 60);
var divisor_for_seconds = divisor_for_minutes % 60;
var seconds = Math.ceil(divisor_for_seconds);
var zero="0";
if (hours<10) {
var hour=hours.toString();
hour=zero.concat(hour);	
}
else{
	var hour=hours.toString();
}
if (minutes<10) {
var minute=minutes.toString();
minute=zero.concat(minute);	
}
else{
	var minute=minutes.toString();
}
if (seconds<10) {
var second=seconds.toString();
second=zero.concat(second);	
}
else{
	var second=seconds.toString();
}
var colon=":";
var time_show=hour.concat(colon,minute,colon,second);
  
                if (time_show=="00:00:00") {
                     	 elementy=document.getElementById("0");
                     	
                         elementy.scrollIntoView({ behavior: 'smooth', block: 'nearest',inline:'nearest'});
                     	
                     }
                search_table(time_show);

           
           function search_table(value){  
                $('.comment_display').each(function(){  
                     var found = 'false';
                     var present_id,prev_id,elementy; 

                     $(this).each(function(){ 
                     
                          if($(this).text().indexOf(value) >= 0)  
                          {  
                               found = 'true';  
                          }  
                     });  
                     if(found == 'true')  
                     {  prev_id=present_id;
                     	
                     	$(this).show();
                          present_id=$(this).attr("id");
                         elementy=document.getElementById(present_id);
                         elementy.scrollIntoView({ behavior: 'smooth', block: 'nearest',inline:'nearest'});
                          //$('html, body').animate({
                             //scrollTop: $(`#present_id`).offset().top
                            // }, 1000);

                     }  
                     else  
                     { 

                      
                         //elementy=document.getElementById(prev_id);
                         //elementy.scrollIntoView({ behavior: 'smooth', block: 'nearest',inline:'nearest'});
                         //elementy.scrollIntoView({ behavior: 'smooth', block: 'nearest',inline:'nearest'}); //$(this).hide();  
                     }  
                });  
           }  
       
   




}
	

function displaytimechat() {
	var displaytimechat=1;
	  $.ajax({
   url:"ajaxy.php",
   method:"POST",
   data:{displaytimechat:1
   	},
   success:function(d)
   {
   $(".displayb").html(d);
   }
  })
	
} }


if (val==1) {displaychat();}


}
//now, you can invoke show() method as per your requirement.
document.getElementsByTagName('select')[0].addEventListener('change',function(){
 show();
});


$("#submitposty").click(function (argument) {
    var current_react=document.getElementById("reactionhide").innerHTML;
	var vid = document.getElementById("myVideo");
    var usery=document.querySelector('#phplogin').innerText;
    var topicy=$(".topicy").val();
    var id=0;
    var currenttimey=vid.currentTime;
    var doney=1;
var totalsecs=Math.floor(currenttimey);
var secs = Math.round(currenttimey);
var hours = Math.floor(secs / (60 * 60));
var divisor_for_minutes = secs % (60 * 60);
var minutes = Math.floor(divisor_for_minutes / 60);
var divisor_for_seconds = divisor_for_minutes % 60;
var seconds = Math.ceil(divisor_for_seconds);
var zero="0";

if (hours<10) {
var hour=hours.toString();
hour=zero.concat(hour);	
}
else{
	var hour=hours.toString();
}
if (minutes<10) {
var minute=minutes.toString();
minute=zero.concat(minute);	
}
else{
	var minute=minutes.toString();
}
if (seconds<10) {
var second=seconds.toString();
second=zero.concat(second);	
}
else{
	var second=seconds.toString();
}
var colon=":";
var timeminy=hour.concat(colon,minute,colon,second);


 load_chat();

 function load_chat()
 {
  $.ajax({
   url:"ajaxy.php",
   method:"POST",
   data:{
   	doney:doney,
   	id:id,
usery:usery,
timeminy:timeminy,
topicy:topicy,
totalsecs:totalsecs,
current_react:current_react

   },
   success:function(data)
   {
   displaychat();
    $('.topicy').val('');
    document.getElementById("reactionhide").innerHTML="0";
    document.getElementById("ilb").innerHTML = "+";
   }
  })
 }


});

});

  function displaychat() {
	var displaychat=1;
	  $.ajax({
   url:"ajaxy.php",
   method:"POST",
   data:{displaychat:1,
   	
   	},
   success:function(d)
   {
   $(".displayb").html(d);
   }
  })
	
}    


</script>



			</div>
			



		</div>
		<div class="chatarea_side">
			<div class="indicator" id="indicator"></div>
			<div class="chatarea_btn" id="chat_b">Chat</div>
			<div class="pnotes_btn" id="note_b">Notes</div>
		</div>
		<div class="chatbox_downbar">
			<ul class="insight_list" id="il">
				<li class="reaction"><img src="images/1.png" class="react"></li>
				<li class="reaction"><img src="images/2.png" class="react"></li>
				<li class="reaction"><img src="images/3.png" class="react"></li>
				<li class="reaction"><img src="images/4.png" class="react"></li>
				<li class="reaction"><img src="images/5.png" class="react"></li>
				<li class="reaction"><img src="images/6.png" class="react"></li>
			</ul>
			<div class="comment_insight" id="ilb">+</div>
				<input class="commentarea topicy" type="text" name="comment" placeholder="Comment here" style="display:block">
				<button class="post_btn submitposty" id="submitposty" type="submit" style="display:block"><img src="images/tick.png"></button>
				<input class="commentarea topic" type="text" name="comment" placeholder="Comment here" style="display:none">
				<button class="post_btn submitpost" id="submitpost" type="submit" style="display:none"><img src="images/tick.png" ></button>
			
		</div>
</div>
</div>

<script type="text/javascript">
	var ind = document.getElementById("indicator");
	var chat = document.getElementById("chat_b");
	var note = document.getElementById("note_b");
	var bg = document.getElementById("bg");
	var con = document.getElementById("con");
	var ddb = document.getElementById("ddb");
	var dd = document.getElementById("dd");
	var chat2 = document.getElementById("chat_b2");
	var note2 = document.getElementById("note_b2");
	var log = document.getElementById("log");
	var sign = document.getElementById("sign");
	var il = document.getElementById("il");
	var ilb = document.getElementById("ilb");
	var react = document.getElementsByClassName("react");
	var userbool=document.getElementById("php").innerHTML;
	var user=document.getElementById("phpname").innerHTML;
	var loginuser=document.getElementById("phplogin").innerHTML;
	var loginbool=document.getElementById("loginbool").innerHTML;
	var c_btn = document.getElementById("submitposty");
	var n_btn = document.getElementById("submitpost");
	var c_in = document.getElementsByClassName("topicy")[0];
	var n_in = document.getElementsByClassName("topic")[0];
	
	if (loginuser=="empty1") {
		alert("Wrong Username Or Password");
	}
	if (loginuser!="empty1" && loginbool=="1") {
		log.innerHTML="Logout";
	}

//<br>
//<b>Notice</b>:  Undefined index: user in <b>C:\MAMP\htdocs\Webdevpro-master\loda.php</b> on line <b>115</b><br>
   
	chat.onclick = function(){
		ind.style.background = "red";
		bg.style.background = "#f56e6e";
		con.innerHTML = "Chat";
		dd.style.opacity = "0";
		dd.style.transform = "translateY(-10px)";
		document.getElementsByClassName("chatbox_downbar")[0].style.pointerEvents = "all";
		 document.getElementById("main1").style.display='none';
		 document.getElementById("main2").style.display='none';
		document.getElementById("main3").style.display='none';
		document.getElementById("main4").style.display='none';
		document.getElementById("main5").style.display='none';
		document.getElementById("main6").style.display='none';
		document.getElementById("main7").style.display='block';

		chat2.style.display='none';
		note2.style.display='none';
		log.style.display='none';
		sign.style.display='none';
		n_btn.style.display='none';
		n_in.style.display='none';
		c_btn.style.display='block';
		c_in.style.display='block';
	}
	note.onclick = function(){
		ind.style.background = "#0465b5";
		bg.style.background = "#3966e3";
		con.innerHTML = "Notes";
		dd.style.opacity = "0";
		dd.style.transform = "translateY(-10px)";
		document.getElementsByClassName("chatbox_downbar")[0].style.pointerEvents = "all";
		 document.getElementById("main1").style.display='none';
		 document.getElementById("main2").style.display='none';
		document.getElementById("main4").style.display='none';
		document.getElementById("main3").style.display='none';
		document.getElementById("main5").style.display='none';
		document.getElementById("main7").style.display='none';
		chat2.style.display='none';
		note2.style.display='none';
		log.style.display='none';
		sign.style.display='none';
		n_btn.style.display='block';
		n_in.style.display='block';
		c_btn.style.display='none';
		c_in.style.display='none';
	document.getElementById("main6").style.display='block';
			if (loginbool!="1" || loginuser=="empty1") {
			document.getElementById("main4").style.display='block';
			document.getElementById("main6").style.display='none';
		}
	}
	ddb.onclick = function(){
		if (dd.style.opacity == "1"){
			dd.style.opacity = "0";
			dd.style.transform = "translateY(-10px)";
			chat2.style.display='none';
			note2.style.display='none';
			log.style.display='none';
			sign.style.display='none';
	
		} else {
			dd.style.opacity = "1";
			dd.style.transform = "translateY(0)";
			chat2.style.display='block';
			note2.style.display='block';
			log.style.display='block';
			if (log.innerHTML == "Login"){
				sign.style.display='block';
			} else {
				sign.style.display='none';
			}
			
	
		}
	}
	chat2.onclick = chat.onclick
	note2.onclick = note.onclick
	log.onclick = function(){
		con.innerHTML = "Login";
		dd.style.opacity = "0";
		dd.style.transform = "translateY(-10px)";
		ind.style.background = "#6b07ff";
		bg.style.background = "#281740";
        document.getElementById("main1").style.display='none';
		document.getElementsByClassName("chatbox_downbar")[0].style.pointerEvents = "none";
		document.getElementById("main2").style.display='block';
		document.getElementById("main3").style.display='none';
		document.getElementById("main4").style.display='none';
		document.getElementById("main6").style.display='none';
		document.getElementById("main7").style.display='none';
		chat2.style.display='none';
		note2.style.display='none';
		log.style.display='none';
		sign.style.display='none';
		n_btn.style.display='none';
		n_in.style.display='none';
		c_btn.style.display='none';
		c_in.style.display='none';
		if (log.innerHTML=="Logout") {
			document.getElementById("main2").style.display='none';
			document.getElementById("main5").style.display='block';}
		
	
		//console.log("strike");
	}
	sign.onclick = function(){
		con.innerHTML = "Sign Up";
		dd.style.opacity = "0";
		dd.style.transform = "translateY(-10px)";
		ind.style.background = "#6b07ff";
		bg.style.background = "#281740";
        document.getElementById("main1").style.display='block';
		document.getElementsByClassName("chatbox_downbar")[0].style.pointerEvents = "none";
		document.getElementById("main2").style.display='none';
		document.getElementById("main4").style.display='none';
		document.getElementById("main5").style.display='none';
		document.getElementById("main6").style.display='none';
		document.getElementById("main7").style.display='none';
		chat2.style.display='none';
		note2.style.display='none';
		log.style.display='none';
		sign.style.display='none';
		n_btn.style.display='none';
		n_in.style.display='none';
		c_btn.style.display='none';
		c_in.style.display='none';
		if (userbool=="1") {
			document.getElementById("main3").style.display='block';
			document.getElementById("main1").style.display='none';
		}
		//console.log("strike");
	}
	ilb.onclick = function(){
		if(il.style.opacity == "0"){
			il.style.opacity = "1";
		} else {
			il.style.opacity = "0";
		}
	}

	react[0].onclick = function(){
		ilb.innerHTML = "<img src='" + react[0].src + "' >";
		il.style.opacity = "0";
		document.getElementById("reactionhide").innerHTML="1";
	}
	react[1].onclick = function(){
		ilb.innerHTML = "<img src='" + react[1].src + "' >";
		il.style.opacity = "0";
		document.getElementById("reactionhide").innerHTML="2";
	}
	react[2].onclick = function(){
		ilb.innerHTML = "<img src='" + react[2].src + "' >";
		il.style.opacity = "0";
		document.getElementById("reactionhide").innerHTML="3";
		
	}
	react[3].onclick = function(){
		ilb.innerHTML = "<img src='" + react[3].src + "' >";
		il.style.opacity = "0";
		document.getElementById("reactionhide").innerHTML="4";
	}
	react[4].onclick = function(){
		ilb.innerHTML = "<img src='" + react[4].src + "' >";
		il.style.opacity = "0";
		document.getElementById("reactionhide").innerHTML="5";
	}
	react[5].onclick = function(){
		ilb.innerHTML = "<img src='" + react[5].src + "' >";
		il.style.opacity = "0";
		document.getElementById("reactionhide").innerHTML="6";
	}
</script>



		<div class="valueone">
			<header>
				<p>Value Proposition</p>
			</header>
		</div>
		<div class="my_card">
			<div class="row">
				<div class="column">

				  <div class="card">
					  <h2>Learning Experience</h2>
					  <p>
						Users can Q&A on specific moments in the video, mark keynotes and engage in discussion
					  </p>
				  </div>
				</div>
				<div class="column">
				  <div class="card">.
					<h2>Call to Action</h2>
					<p>
						Create engaging quizzes and remarks at video keynotes
					</p>
				  </div>
				</div>
				<div class="column">
				  <div class="card">.
					<h2>Analytics and Insight</h2>
					<p>
						Discover how users interact with your video content and with each other. At what moments they are most engaged and where they struggle
					</p>
				  </div>
				</div>
				<div class="column">
				  <div class="card">
					<h2>Management Tools</h2>
					<p>
						Organization aware moderation and role based user access control
					</p>
				  </div>
				</div>
			</div>
		</div>
		<div id="myModal" class="modal" data-backdrop="false">

				  <div class="modal-content">
					  <span class="close">&times;</span>
						<div class="container">
						  <form id="contact" action="" method="post">
							<h3>Contact Us</h3>

							<fieldset>
							  <input placeholder="Your name" type="text" tabindex="1" required>
							</fieldset>
							<fieldset>
							  <input placeholder="Your Email Address" type="email" tabindex="2" required>
							</fieldset>
							<fieldset>
							  <input placeholder="Your Phone Number (optional)" type="tel" tabindex="3" required>
							</fieldset>
							<fieldset>
							  <input placeholder="Your Web Site (optional)" type="url" tabindex="4" required>
						  </fieldset>
							<fieldset>
							  <textarea placeholder="Type your message here...." tabindex="5" required></textarea>
							</fieldset>

							<fieldset>
							  <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">Send Message</button>
							</fieldset>

						  </form>
						</div>
				  </div>

			  </div>






		<footer class="footer-distributed">

			<div class="footer-left">
				<h3>Annoto</h3>

				<p class="footer-links">
					<a href="#">Home</a>
					|
					<a href="#">The Team</a>
					|
					<a href="#">About</a>
					|
					<a href="#">Contact</a>
				</p>

				<p class="footer-company-name">© 2019 center for educational technology.</p>
			</div>

			<div class="footer-center">
				<div>
					<i class="fa fa-map-marker"></i>
					  <p><span>Center for Education Technology</span>
						 IIT Kharagpur</span>
						, West Bengal - 721302</p>
				</div>

				<div>
					<i class="fa fa-phone"></i>
					<p>+91 11-27782183</p>
				</div>
				<div>
					<i class="fa fa-envelope"></i>
					<p><a href="niteshjha@iitkgp.ac.in">support@something.com</a></p>
				</div>
			</div>
			<div class="footer-right">
				<p class="footer-company-about">
					<span>About the company</span>
					Video as a social sense.</p>
				<div class="footer-icons">
					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-instagram"></i></a>
					<a href="#"><i class="fa fa-linkedin"></i></a>
					<a href="#"><i class="fa fa-youtube"></i></a>
				</div>
			</div>
		</footer>







		<!-- Scripts -->
	<!--		<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script> -->
			<!-- <script src="assets/js/drag.js"></script> !-->
			<script src="assets/js/jquery.js"></script>
			<script src='assets/js/javascript.js'></script>

	</body>
</html>
