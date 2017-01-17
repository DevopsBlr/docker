
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
    width: 80%;
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

	<!--Header section  -->
	<div class="container" id="home">
		<div class="row text-center ">

<%Account acc = (Account)request.getAttribute("account");%>
<form method="post"
	action="<%=request.getContextPath()%>/AccountController"> 
	<h3><b>Account Details</b></h3>
<table border="2" cellspacing="5" cellpadding="5" align="center">
<tr>
<td>Customer Id</td><td><%=acc.getCustomer_id()%></td>

</tr>
<tr>

<td>Account Id</td><td><%=acc.getAccount_id()%></td>

</tr>
<tr>
<td>Account Type </td>
<td><%=acc.getAccount_type()%></td>
</tr>
<tr>
<td>Balance (&#8377;)</td>
<td><%=acc.getBalance()%></td>
</tr>
<tr>
<td>Credited Date(YYYY-MM-DD)</td>
<td><%=acc.getCredited_date()%></td>
</tr>
<tr>
<td>Previous Credited Date(YYYY-MM-DD)</td>
<td><%=acc.getCredited_lastdate()%></td>
</tr>
<tr>
<td>No. of Transactions</td>
<td><%=acc.getNoOfTransaction()%></td>
</tr>
<tr>
<td>Status</td>
<td><%=acc.getStatus() %></td>
</tr>

</table>	
</form>
		</div>
	</div>

</body>
</html>
