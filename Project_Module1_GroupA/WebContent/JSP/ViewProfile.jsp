<%@page import="com.bean.Customer"%>
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
    text-align: left;
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
	
	<div class="container" id="home">
		<div class="row text-center ">
		<center><h3><b>My Profile</b></h3></center>
	<%
		String user = (String) session.getAttribute("user");
	%>
	
	<%
		Customer cust = (Customer) request.getAttribute("profileView");
	%>
		
	<table border="2" cellspacing="5" cellpadding="5">

		<tr>
			<th>Customer Id</th>
			<th>Status</th>
			<th>SSN Id</th>
			<th>Customer Name</th>
			<th>Age</th>
			<th>Address Line 1</th>
			<th>Address Line 2</th>
			<th>City</th>
			<th>State</th>
		</tr>
		<tr>
			<td><%=cust.getCustomerId()%></td>

			<td><%=cust.getStatus()%></td>
			<td><%=cust.getSsnId()%></td>
			<td><%=cust.getCustomerName()%></td>
			<td><%=cust.getAge()%></td>
			<td><%=cust.getAddressLine1()%></td>
			<td><%=cust.getAddressLine2()%></td>
			<td><%=cust.getCity()%></td>
			<td><%=cust.getState()%></td>

		</tr>

	</table>
	
	</div>
	</div>

</body>
</html>