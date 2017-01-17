<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<%@page import="com.bean.Customer"%>
<%@page import="java.util.ArrayList"%>
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
    <style type="text/css">
    input { 
    text-align: left; 
}   
 input[type="submit"] {
  
   background: black;
   color: white;
   border: none;
   padding: 10px 45px;
   }
    input[type="reset"] {
       background: black;
   color: white;
   border: none;
   padding: 10px 45px;
   }
    
    </style>
<script type="text/javascript">
function check(){


	var id=document.insert.customerid.value;
	var type=document.insert.type.value;
	var exp=/^[0-9a-z]+$/;

	var exp2=/^[A-Z]+$/;
	var amount=document.insert.amount.value;
	var no=id.length;

	if(amount==''){
		
		document.getElementById('idd').innerHTML= "Enter the amount";
		document.getElementById("amount").style.borderColor = "red"; 
		document.getElementById("idd").style.color = "red";
		document.getElementById("amount").focus();
		
		 return false;  
	}
	else if(!(amount.match(/^[0-9]+$/))){
		document.getElementById('idd').innerHTML= "Deposit amount should be only numeric";
		document.getElementById("amount").style.borderColor = "red"; 
		document.getElementById("idd").style.color = "red";
		document.getElementById("amount").focus();
		 return false;  
		
	}
	else if(amount<=499 || amount>=9999){
		document.getElementById('idd').innerHTML="Deposit amount should be mininum of Rs.500 & maximum of Rs.10000";
		document.getElementById("amount").style.borderColor = "red"; 
		document.getElementById("idd").style.color = "red";
		document.getElementById("amount").focus();
		 return false;  
	
	}
	else{
		return true;
	}

	
	}     
</script>

</head>
<body>
	<!-- Navigation -->
	
	<!--End Navigation -->


	<!--Header section  -->
	<form action="<%=request.getContextPath()%>/AccountController" name="insert" method="post" onsubmit="return check()">
		<div class="container" id="home">
			<div class="row text-center ">

<%String cus=(String) request.getAttribute("aaa"); %>


<h3><b>Add Account</b></h3>
<table align="center">


<tr><td align="left">Customer Id</td>
<td align="left"><input type="text" name="customerid" style=border:none value=<%=cus%> readOnly></td>
</tr>
<tr><td> &nbsp;</td></tr>
<tr><td align="left">Account Type</td>
<td align="left"><select name="type" id="type">
<option value="Savings Account">Savings Account</option>
<option value="Current Account">Current Account</option>
</select></td>
</tr>
<tr><td> &nbsp;</td></tr>
<tr><td align="left">Deposit Amount(&#8377;)<span class="requiredField" style="color:red"><font size="4"> <sup>* </sup></font></span></td>
<td align="left"><input type="text" name="amount" id="amount"><span id="idd"></span></td>

</tr>
<tr><td> &nbsp;</td></tr>
<tr><td> <input type="reset" value="Reset"></td>
<td><input type="submit" name="action" value=Submit ></td>
</tr><tr><td>&nbsp;</td></tr>
<tr><td><span class="requiredField" style="color:red"><font size="4"> <sup>* </sup></font></span>All fields are mandatory</td></tr>
</table>

			</div>
		</div>
	</form>
</body>
</html>