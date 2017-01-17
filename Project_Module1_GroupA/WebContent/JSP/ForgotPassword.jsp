<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
  function preventBack(){window.history.forward();}
  setTimeout("preventBack()", 0);
  window.onunload=function(){null};
</script>
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
    
    <style>
    h1{
    color:"blue";
    }
    
    </style>

</head>
<body>
	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" style="background:#000000;">
	<div class="container">
		<div class="navbar-header">
		<strong><font color="white" size="6">ABC Bank Management</font> </strong>
		</div>
		<ul>
		<li>&nbsp;</li><li>&nbsp;</li>
		<li><a href="<%=request.getContextPath()%>/JSP/index.jsp"><b>HOME</b></a></li>
		
		
		</ul>
		<!-- Collect the nav links for toggling -->
		
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> 
	<!--End Navigation -->

	<!-- Navigation --></nav>
	
	<div class="container" id="home">
		<div class="row text-center ">

<center>

	<br><br><br><br><br>
		<h3><font color="blue">Change Password</font></h3>
		<form 
			action="<%=request.getContextPath()%>/BankManagementController" method="post">
			
		<input type="hidden" name="source" value="validate">
		<br><br><br><br><br>
		<table>
		<tr>
		<td>Username<font color="red" size="4"><sup>(*)</sup></font></td>
		<td><input type="text" name="id"></td>
		</tr>
		
						<tr>
							<td>Select your security question<font color="red" size="4"><sup>(*)</sup></font></td>
							<td><select name="securtiyQn">
									<option >--Select--</option>
									<option value="1">What is your pet name?</option>
									<option value="2">What is your first school name?</option>
									<option value="3">what is your blood group?</option>


							</select></td>
						 	
						</tr>
						
						<tr>
							<td>Enter your answer<font color="red" size="4"><sup>(*)</sup></font></td>
							<td><input type="password" name="ans"></td>
						</tr>
		
		</table>
		<br>
			<input type="submit" value="submit">	
			<input type="reset" name="Reset">		
			</form>
			<font color="red" size="4"><sup>(*)</sup></font>fields are mandatory
			</center>
			</div>
	</div>
	<!--End Header section  -->

<br><br><br>
	<!--About Section-->

	<!--End Contact Section -->
	<!--footer Section -->
	
	<div class="for-full-back " id="footer">2016 TVM1617_TVM11_TJA58_PROJECT_GROUP_A |
		All Right Reserved</div>
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