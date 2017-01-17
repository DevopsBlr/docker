
    <%@page import = "com.bean.Account" %>
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
            <style>
table {
    border-collapse: collapse;
    width: 50%;
}

th, td {
    text-align: left;
    padding: 5px;
}

tr:nth-child(odd){background-color: #f2f2f2}

th {
    background-color: #66c2ff;
    color: white;
}
input:nth-child(even){background-color: #f2f2f2}
input { 
    text-align: left; 
}

 input[type="submit"] {
  
   background: black;
   color: white;
   border: none;
   padding: 10px 45px;
   }


</style>
</head>
<body>
	<!-- Navigation -->
	<!--End Navigation -->


	<!--Header section  -->
	<div class="container" id="home">
		<div class="row text-center ">

<%Account acc = (Account)request.getAttribute("account");%>

<form method="post"
	action="<%=request.getContextPath()%>/AccountController"> 
	<h3><b>Account Status</b></h3>
	<table border="2" cellspacing="5" cellpadding="5" align="center">
<tr>
<div id="siteInfo">
<td>Customer Id</td><td><input type="text" name="customerid" style=border:none value=<%=acc.getCustomer_id()%> readOnly></td>
</div>
</tr>
<tr>

<td>Account Id</td><td><input type="text" name="accountid" style=border:none value=<%=acc.getAccount_id()%> readOnly></td>

</tr>
<tr>
<td>Account Type </td>
<td><%=acc.getAccount_type()%></td>
</tr>
<tr>
<td>Balance(&#8377;)</td>
<td><%=acc.getBalance()%></td>
</tr>
<tr>
<td>Credited Date (YYYY-MM-DD)</td>
<td><%=acc.getCredited_date() %></td>
</tr>
<tr>
<td> Previous Credited Date (YYYY-MM-DD)</td>
<td><%=acc.getCredited_lastdate()%></td>
</tr>
<tr>
<td>No. of Transactions</td>
<td><%=acc.getNoOfTransaction()%></td>
</tr>
<tr>
<td>Status</td>
<td><input type="text" name="status" style=border:none value=<%=acc.getStatus() %> readOnly></td></tr>
 

</table>
<%if(acc.getStatus().equals("Active")){ %>

<input type="submit" name="action" value="Deactive" >
<%} %>
<%if(acc.getStatus().equals("Deactive")){%>
<input type="submit" name="action" value="Active">
<%} %>
	
</form>

		</div>
	</div>
</body>
</html>
