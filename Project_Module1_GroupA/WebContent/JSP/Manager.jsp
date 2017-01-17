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
		<!-- Collect the nav links for toggling -->
		
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> 
	<!--End Navigation -->

	<!-- Navigation -->
	
	
		<%
				String user = (String) session.getAttribute("user");
			%>
		<!-- Collect the nav links for toggling -->
		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav navbar-center">
		<li>&nbsp;</li>
		<li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;&nbsp;&nbsp;&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li>
		<li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li>
					<li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li>
						<li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li>
					<li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li>
					<li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li>
		
			<li><a href="<%=request.getContextPath()%>/BankManagementController?source=myProfile&user=<%=user%>" target="index"><b>My Profile</b></a></li>
	<li><a href="<%=request.getContextPath()%>/BankManagementController?source=createcustomer" target="index"><b>Create Customer</b></a></li>
<li><a href="<%=request.getContextPath()%>//BankManagementController?source=dropdown" target="index"> <b>Update Details</b></a></li>
<li><a href="<%=request.getContextPath()%>/BankManagementController?source=viewall" target="index"><b>View All Customers</b></a></li>
	<li><a href="<%=request.getContextPath()%>/AccountController?action=viewallmang" target="index"><b>View
							Account Status</b></a></li>
						<li><a href="<%=request.getContextPath()%>/BankManagementController?source=emppwd&user=<%=user %>" target="index"><b>Change Password</b></a></li>
					
					<li><a href="<%=request.getContextPath()%>/JSP/index.jsp"><b>Logout</b></a></li>
					</ul>
				
			
		</div>
		<!-- /.navbar-collapse -->
	
	
	<!-- /.container --> </nav>
	<!--End Navigation -->
	<br>
	<br>
	<br>
		
	<br>
	<br>
	<br>
<%String user1=(String) session.getAttribute("user"); %> 
<p align="right"><font color="green"><strong ><i>Welcome <%=session.getAttribute("name")%>,Manager</i></strong></font></p>

<iframe  name="index" height=450 width=1300  frameborder="0">

<p align="center"><b>Manager</b></p>
	</iframe>	
	<!--End Header section  -->


	<!--About Section-->

	<!--End Contact Section -->
	<!--footer Section -->
	
	<div class="for-full-back " id="footer" style="background-color:#000000">ABC Bank Management
		All Rights Reserved</div>
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