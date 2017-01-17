<%@page import="com.bean.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
    <style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: center;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: black;
    color: white;
}
</style>
    
</head>
<body>
	<!-- Navigation -->
	

	<div class="container" id="home">
		<div class="row text-center ">
	
		<center><h2><b>My Profile</b></h2></center>


	<%
		Employee emp = (Employee) request.getAttribute("profileView");
	%>
		
	<table border="2" cellspacing="5" cellpadding="5">

		<tr>
			<th>Employee Id</th>
			<th>Employee Name</th>
			<th>Designation</th>
			<th>Contact No.</th>
			<th>Email Id</th>
		</tr>
		<tr>
			<td><%=emp.getEmpId()%></td>

			<td><%=emp.getEmpName()%></td>
			<td><%=emp.getDesignation()%></td>
			<td><%=emp.getContactNo()%></td>
			<td><%=emp.getEmailId()%></td>

		</tr>

	</table>
	
	</div>
	</div>
</body>
</html>