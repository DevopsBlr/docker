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
    <style type="text/css" >

 a:link {
  background-color: #e6e6e6;
    border-bottom: 1px solid #777777;
    border-left: 1px solid #000000;
    border-right: 1px solid #333333;
    border-top: 1px solid #000000;
    color: #000000;
    display: block;
    height: 1.7em;
    padding: 0 1em;
    width: 5em;       
    text-decoration: none;       
}
 input[type="submit"] {
  
   background: black;
   color: white;
   border: none;
   padding: 10px 45px;
   }



th,td {
    text-align: left;

}
</style>

</head>
<body>
	
	<div class="container" id="home">
		<div class="row text-center ">
			<%
				Customer cust = (Customer) request.getAttribute("Customer");
			%>
			<h2><b>Confirm Details</b></h2><br>
			<center>
			
				<form
					action="<%=request.getContextPath()%>/BankManagementController"
					method="post">
				<!-- 	<input type="hidden" name="source" value="Confirm"> -->
					<table>
						
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<th>SSN Id<font color="red" size="4"><sup>(*)</sup></font>
							<td><input type="text" name="ssnId"
								value=<%=cust.getSsnId()%> readonly="readonly" /></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<th>Customer Name<font color="red" size="4"><sup>(*)</sup></font>
							<td><input type="text" name="CustName"
								value=<%=cust.getCustomerName()%> readonly="readonly" /></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<th>Age<font color="red" size="4"><sup>(*)</sup></font>
							<td><input type="text" name="Age" value=<%=cust.getAge()%>
								readonly="readonly" /></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<th>Address Line 1<font color="red" size="4"><sup>(*)</sup></font>
							<td><input type="text" name="AddLine1"
								value=<%=cust.getAddressLine1()%> /></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<th>Address Line 2<font color="red" size="4"><sup>(*)</sup></font>
							<td><input type="text" name="AddLine2"
								value=<%=cust.getAddressLine2()%> readonly="readonly" /></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<th>City<font color="red" size="4"><sup>(*)</sup></font>
							<td><input type="text" name="City" value=<%=cust.getCity()%>
								readonly="readonly" /></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<th>State<font color="red" size="4"><sup>(*)</sup></font>
							<td><input type="text" name="State"
								value=<%=cust.getState()%> readonly="readonly" /></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr >
							<th>Status<font color="red" size="4"><sup>(*)</sup></font>
							<td><font color="green"><input type="text" name="Status"
								value=<%=cust.getStatus()%> readonly="readonly" /></font></td>
						</tr>
							</table>
							<center>
						<br>
							<input type="submit" name="source"  value="Confirm">
							<input type="submit" name="source" value="Cancel">
			</center>
				</form>
				<br>	<br>
			<font color="red" size="4"><sup>(*)</sup></font>fields are mandatory
			</center>
			
		</div>
	</div>

</body>
</html>