<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<%@page import="java.util.ArrayList"%>
<html lang="en">
<!--<![endif]-->
<head>
<style type="text/css">
.ss{
font-family: Verdana,sans-serif;
font-size: 14px;
color:black;
}

</style>
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
<script type="text/javascript">
function fun3()
{
	document.getElementById("cashierform").submit(); 

	}

function fun1(){
	document.getElementById("cashierform").submit();
	}

function fun2(){
	document.getElementById("cashierform").submit();
	}
</script>
</head>
<body>
<div class="container" id="home">
		<div class="row text-center ">

<% String x=(String)request.getAttribute("source");%>
<%if(x.equals("getaccount")) { %>
<center><strong><a class="ss">Transaction page</a></strong></center><br><br>
<form name="cashierform" id="cashierform" action="<%=request.getContextPath()%>/Controller" >
				Please  Select Id type <br>
				<select name="selection" id="selection" onchange="fun3()">
				<option value="">select</option>
				<option value="customerid">customer id</option>
				<option value="accountid">account id</option>
				</select><br><br>

 Customer Id<br>
						<select disabled="disabled">
						<option >select</option>
						</select> <br>  <br>           
                         Account Id<br>
  						   <select disabled="disabled" >
						  <option value="">select</option>
		           </select><br> <br>
		           <input type="hidden"  name="action" value="cust_selected">
</form>

<%} %>
<%if(x.equals("customerselected")){ %>
<% ArrayList<String> customerids=(ArrayList<String>)request.getAttribute("customer"); %> 
<% String customerselected=(String)request.getAttribute("sel1");%>
<center><strong><a class="ss">Transaction page</a></strong></center><br><br>
<form name="cashierform" id="cashierform" action="<%=request.getContextPath()%>/Controller" >
       Please Select Id type <br>
       <select disabled="disabled"> 
       <option><%=customerselected%></option>
        </select>
<br><br>
		 Customer Id<br>
						<select name="customerid"  id="customerid" onchange="fun1()">
						<option value="">select</option>
						
						<% for(String a:customerids) {%>
                        <option value= <%= a%>><%=a%></option>
                          <% }%>
						</select> <br><br>
                Account Id <br>	
<select disabled="disabled"> 
       <option>select</option>
        </select><br><br>
         <input type="hidden" name="action" value="go">

</form>

<%} %>
<%if(x.equals("cust_acc")){ %>
<% ArrayList<String> accountid=(ArrayList<String>)request.getAttribute("account"); %> 
<%String cust_id=(String)request.getAttribute("custid"); %>
<center><strong><a class="ss">Transaction page</a></strong></center><br><br>
<form name="cashierform" id="cashierform" action="<%=request.getContextPath()%>/Controller" >
 Please Select Id type <br>
       <select disabled="disabled"> 
       <option  >Customer Id</option>
        </select>
<br><br>
                       Customer Id <br>
						<select disabled="disabled">
						<option ><%= cust_id %></option>
						</select> <br><br>
                         Account Id <br>
  					 <select name="accid" id="accid" onchange="fun2()">
						  <option value="">select</option>
						  <% for(String a:accountid) {%>
                          <option value= <%=a%>><%= a%></option>
                          <% }%> </select><br><br>
                           <input type="hidden" name="action" value="display">
</form>

<%} %>
<%if(x.equals("accountselected")){ %>
	<% ArrayList<String> accountid=(ArrayList<String>)request.getAttribute("account"); %> 
<center><strong><a class="ss">Transaction page</a></strong></center><br><br>
<form name="cashierform" id="cashierform" action="<%=request.getContextPath()%>/Controller" >
     Please Select Id type <br>
       <select disabled="disabled"> 
       <option>accountid</option>
        </select>
        <br><br>
        Customer Id<br>
					<select disabled="disabled">
						<option >select</option>
						</select> <br> <br>
						Account Id<br>
  					 <select name="accid" id="accid" onchange="fun2()">
						  <option value="">select</option>
						  <% for(String a:accountid) {%>
                          <option value= <%=a%>><%= a%></option>
                          <% }%> </select><br><br>
                           <input type="hidden" name="action" value="display">
</form>
       
<%} %>


</div>
</div>

</body>
</html>