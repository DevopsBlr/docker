<%@page import="com.bean.Account"%>
<%@page import="java.util.ArrayList"%>
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
    <script type="text/javascript">
function myFunction() {
    window.location.reload();
}


</script>
<style type="text/css">
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
}</style>
</head>
<body>
	<!-- Navigation -->

	<div class="container" id="home">
		<div class="row text-center ">


<% ArrayList<Account> act2=(ArrayList<Account>)request.getAttribute("result"); %>

<table align="center">
<tr><td>Account Id</td><td><input type="text" name="account" id="account"></td><td><input type="button" name="search" onchange="my()" value="search"></tr>

<tr>
<th>Customer Id</th>
<th>Account Id</th>
<th>Account Type</th>
<th>Balance (&#8377;)</th>
<th>Credited Date(YYYY-MM-DD)</th>
<th>Previous Credited Date(YYYY-MM-DD)</th>
<th>No. Of Transaction</th>
</tr>
<% for(Account i:act2){ %>

<tr>
<td><%=i.getCustomer_id()%></td>
<td><%=i.getAccount_id()%></td>
<td><%=i.getAccount_type() %></td>
<td><%=i.getBalance() %></td>
<td><%=i.getCredited_date() %></td>
<td><%=i.getCredited_lastdate() %></td>
<td><%=i.getNoOfTransaction() %></td>
<%} %>
</tr>
<tr><td><button onclick="myFunction()">Reload page</button></td></tr>
</table>

	</div>
	</div>

</body>
</html>
