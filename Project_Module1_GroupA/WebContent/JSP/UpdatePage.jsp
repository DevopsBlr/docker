<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>
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
     input[type="submit"] {
  
   background: black;
   color: white;
   border: none;
   padding: 10px 45px;
   }
    
    
    </style>

</head>
<body>

	<% ArrayList<String> id=(ArrayList<String>)request.getAttribute("idList"); %>

	<div class="container" id="home">
		<div class="row text-center ">

		<form action="<%=request.getContextPath()%>/BankManagementController"
			method="post">
	
			<input type="hidden" name="source" value="update">
			<table align="center">
				<tr><td>CustomerId</td>
<td><select  name="CustId" >

<%for(String s:id){ %>

	<option value=<%=s %>> <%=s %></option>
<% }%>
</select></td>
</tr>
				
				
				
				<tr>
				<td>
				&nbsp;&nbsp;
				&nbsp;&nbsp;
				</td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;</td>
					<td><input type="submit" value="Update" /></td></tr>
</table>
</form>
</div>
	</div>
</body>
</html>