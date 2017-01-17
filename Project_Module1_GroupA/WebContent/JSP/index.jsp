<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
<title>ABC Bank Management</title>
<!--REQUIRED STYLE SHEETS-->
<!-- BOOTSTRAP CORE STYLE CSS -->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- FONTAWESOME STYLE CSS -->
<link href="assets/css/font-awesome.min.css" rel="stylesheet" />
<!-- CUSTOM STYLE CSS -->
<link href="assets/css/style.css" rel="stylesheet" />
<!-- GOOGLE FONT -->
<link href='http://fonts.googleapis.com/css?family=Ruluko'
	rel='stylesheet' type='text/css' />
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
<style type="text/css">
.id {
	 text-align: left;
}
</style>

<script type="text/javascript">

	
	 function validatecode1() {

		var TCode = document.getElementById("name").value;
		for ( var i = 0; i < TCode.length; i++) {
			var char1 = TCode.charAt(i);
			var cc = char1.charCodeAt(0);

			if ((cc > 47 && cc < 58) || (cc > 64 && cc < 91)
					|| (cc > 96 && cc < 123)) {

			} else {
				document.getElementById('useName').innerHTML = "Username should be alphanumeric";
				document.getElementById('name').style.borderColor = "red";
				document.getElementById('useName').style.color = "red";
				return false;
					
			}
			
			}
	
	}
	function validatecode2() {

		var TCode = document.getElementById("pass").value;
		for ( var i = 0; i < TCode.length; i++) {
			var char1 = TCode.charAt(i);
			var cc = char1.charCodeAt(0);

			if ((cc > 47 && cc < 58) || (cc > 64 && cc < 91)
					|| (cc > 96 && cc < 123)) {

			} else {
				document.getElementById('passWord').innerHTML = "Password should be alphanumeric";
				document.getElementById('pass').style.borderColor = "red";
				document.getElementById('passWord').style.color = "red";
				return false;
					
			}
			
			}
	
	} 
	
</script>
<style type="text/css">

 input[type="submit"] {
  
   background: black;
   color: white;
   border: none;
   padding: 10px 45px;
   }
    input[type="reset"] {
  
   background: black;
   color: white;
   border: none;
   padding: 10px 45px;
   }

</style>
</head>
<body>
	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation " style="background:#000000;">
		<div class="container">
			<div class="navbar-header"></div>
			<!-- Collect the nav links for toggling -->




			<strong><font color="white" size="6">ABC Bank
					Management</font></strong>



			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>
	<!--End Navigation -->
</body>
<body>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<form name="loginform"
		action="<%=request.getContextPath()%>/LoginController" method="post"
		onsubmit="validateCode()">
		<input type="hidden" name="source" value="login">

		<table align="center">

			<tr>
				<th class="id">Username<font color="red" size="4"><sup>*</sup></font></th>
				<td>&nbsp;<input type="text" name="username" id="name" required
					onblur="validatecode1()"><span id="useName"></span></td>
			</tr>

			<tr>
				<td>&nbsp;</td>
			</tr>

			<tr>
				<th class="id">Password<font color="red" size="4"><sup>*</sup></font></th>
				<td>&nbsp;<input type="password" name="password" id="pass"
					required onblur="validatecode2()"><span id="passWord"></span></td>
			</tr>
			<tr>

				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			</tr>

			<tr>
				<td>&nbsp;</td>
				<td><input size="5" type="submit" value="Login"> <input
					size="5" type="reset" value="Reset"></td>
			</tr>
			<tr>
				<td><br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td><a
					href="<%=request.getContextPath()%>/JSP/ForgotPassword.jsp">Forgot
						Password?</a></td>
			</tr>
		</table>
		
		<%String a=(String)request.getAttribute("result");%>
		<%if(a!=null){%>
		<p align="center"><font color="red"><%=a %></font></p>
		<%}%>
	</form>
	<font color="red" size="4"><sup>(*)</sup></font>fields are mandatory
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>


	<!--End Header section  -->


	<!--About Section-->

	<!--End Contact Section -->
	<!--footer Section -->
	<div class="for-full-back " id="footer">2016
		ABC Bank Management | All Rights Reserved</div>
	<!--End footer Section -->
	<!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
	<!-- CORE JQUERY  -->
	<script src="assets/plugins/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP CORE SCRIPT   -->
	<script src="assets/plugins/bootstrap.js"></script>
	<!-- CUSTOM SCRIPTS -->
	<script src="assets/js/custom.js"></script>

</body>
</html>
