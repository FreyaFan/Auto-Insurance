<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>


	<!-- General meta information -->
	<title>Login Form</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta name="robots" content="index, follow" />
	<meta charset="utf-8" />
	<!-- // General meta information -->
	
	
	<!-- Load Javascript -->
	<script type="text/javascript" src="./js/jquery.js"></script>
	<script type="text/javascript" src="./js/jquery.query-2.1.7.js"></script>
	<script type="text/javascript" src="./js/rainbows.js"></script>
	<!-- // Load Javascipt -->

	<!-- Load stylesheets -->
	<link type="text/css" rel="stylesheet" href="css/style2.css" media="screen" />
	<!-- // Load stylesheets -->
	
<script>


	$(document).ready(function(){
 
	$("#submit1").hover(
	function() {
	$(this).animate({"opacity": "0"}, "slow");
	},
	function() {
	$(this).animate({"opacity": "1"}, "slow");
	});
 	});


</script>
	
</head>
<body>
<form method="post" action="registration.jsp">
	<div id="wrapper">
		<div id="wrappertop"></div>

		<div id="wrappermiddle">

			<h2>Register</h2>
			
			<div id="firstname_input">

				<div id="firstname_inputleft"></div>

				<div id="firstname_inputmiddle">
				
					<input type="text" name="address" id="url" value="Address" onclick="this.value = ''">
				
				</div>

				<div id="firstname_inputright"></div>

			</div>


            <div id="Lastname_input">

				<div id="Lastname_inputleft"></div>

				<div id="Lastname_inputmiddle">
			
					<input type="text" name="category" id="url" value="Home/Business" onclick="this.value = ''">
			
				</div>

				<div id="Lastname_inputright"></div>

			</div>
			<div id="username_input">

				<div id="username_inputleft"></div>

				<div id="username_inputmiddle">
			
					<input type="text" name="email" id="url" value="E-mail Address" onclick="this.value = ''">
				
				</div>

				<div id="username_inputright"></div>

			</div>
			
			<div id="un_input">

				<div id="un_inputleft"></div>

				<div id="un_inputmiddle">
					<input type="text" name="uname" id="url" value="User Name" onclick="this.value = ''">
				</div>

				<div id="un_inputright"></div>

			</div>

			<div id="password_input">

				<div id="password_inputleft"></div>

				<div id="password_inputmiddle">
					<input type="password" name="pass" id="url" value="Password" onclick="this.value = ''">
				</div>

				<div id="password_inputright"></div>

			</div>

			<div id="submit">
				<input type="image" src="./images/register2.png" id="submit1" value="Sign In">
				<input type="image" src="./images/register2.png" id="submit2" value="Sign In">
			</div>


			<div id="links_left">

			<a href="#"></a>

			</div>

			<div id="links_right"><a href="#"></a></div>

		</div>

		<div id="wrapperbottom"></div>
		
	</div>
</form>
</body>
</html>