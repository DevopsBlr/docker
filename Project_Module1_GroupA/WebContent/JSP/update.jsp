<%@page import="java.util.ArrayList"%>
<%@page import="com.bean.Account"%>
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

function change(){
	var id=document.update.id.value;
	var customer=document.update.customer.value;
	 location.replace("<%=request.getContextPath()%>/AccountController?action=alll&customer="+customer+"&id="+id+"");
}

</script>
<style type="text/css">
input { 
    text-align: center; 
}

.id{
 text-align: left;
}
</style>
</head>
<body>
	<!-- Navigation -->
	


	<!--Header section  -->


<% String customer=(String)request.getAttribute("customer"); %>
<form action="<%=request.getContextPath()%>/AccountController" name="update" method="post" >

<%ArrayList<Account> ac=(ArrayList<Account>)request.getAttribute("account"); %>
<%Account account=(Account)request.getAttribute("account1"); %>
<br>
<h3><b>Account Details</b></h3>
<table align="center">
<tr><td class="id">Customer Id</td>
<td><input type="text" name="customer" style=border:none value=<%=customer %>></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr><td class="id">Account ID</td>
<td><select name="id" id="id" onchange="change()"><option value="select">Select</option>
<%for(Account a:ac){
	%>
	<option value="<%=a.getAccount_id()%>"><%=a.getAccount_id() %></option>
<% }%>
</select></td>
</tr>

</table>


</form>

</body>
</html>
