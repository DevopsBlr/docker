<%@page import="com.bean.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
   th,td {
    text-align: left;

} input[type="reset"] {
  
   background: black;
   color: white;
   border: none;
   padding: 10px 45px;
   }
    
    
    </style>
    <script type="text/javascript">
	function validate1() {

		var x = document.getElementById("ssnId").value;
		if ((isNaN(x))) {
			document.getElementById('ssn').innerHTML = "enter only numeric characters";
			document.getElementById('ssnId').style.borderColor = "red";
			document.getElementById('ssn').style.color = "red";
			document.getElementById('ssnId').focus();
		
			
			
			return false;

		} else if (x.length != 9) {
			document.getElementById('ssn').innerHTML = "enter only 9 digit number";
			document.getElementById('ssnId').style.borderColor = "red";
			document.getElementById('ssn').style.color = "red";
			document.getElementById('ssnId').focus();
			
			return false;
		} else {
			document.getElementById('ssn').innerHTML = "";
			document.getElementById('ssn').style.color = "green";
			document.getElementById('ssnId').style.borderColor = "green";
			return true;
		}
	}
	function validate2() {
var b=/^[A-Za-z]+$/;
		var a = document.getElementById("CustName").value;

		if (a.length == 0) {
			document.getElementById('cusname').innerHTML = "Please enter Name";
			document.getElementById('CustName').style.borderColor = "red";
			document.getElementById('cusname').style.color = "red";
			document.getElementById('CustName').focus();
			return false;

		} 
		else if (!(a.match(b))) {
			document.getElementById('cusname').innerHTML = "Enter only alphabets";
			document.getElementById('CustName').style.borderColor = "red";
			document.getElementById('cusname').style.color = "red";
			document.getElementById('CustName').focus();
		
			return false;

		} else if (a.length >25) {
			document.getElementById('cusname').innerHTML = "Maximum allowed characters are 25";
			document.getElementById('name').style.borderColor = "red";
			document.getElementById('cusname').style.color = "red";
			document.getElementById('name').focus();
		
			return false;
	 
	 else {
			document.getElementById('cusname').innerHTML = "";
			document.getElementById('CustName').style.borderColor = "green";
			return true;
		}
	}
	function validate3() {
		var x = document.getElementById("age").value;
		if ((isNaN(x))) {
			document.getElementById('Age').innerHTML = "enter only numeric characters";
			document.getElementById('age').style.borderColor = "red";
			document.getElementById('Age').style.color = "red";
			document.getElementById('age').focus();
			
			return false;
		} else if (x.length == 0) {
			document.getElementById('Age').innerHTML = "Enter age";
			document.getElementById('age').style.borderColor = "red";
			document.getElementById('Age').style.color = "red";
			document.getElementById('age').focus();
		
			return false;
		} else if (x > 18 && x < 60) {
			document.getElementById('Age').innerHTML = "";
			document.getElementById('age').style.borderColor = "green";
			return true;
		} else {
			document.getElementById('Age').innerHTML = "Age should be between 18 and 60";
			document.getElementById('age').style.borderColor = "red";
			document.getElementById('Age').style.color = "red";
			document.getElementById('age').focus();
			
			return false;
		}
	}
	function validate4() {
		var b=/^[A-Za-z]+$/;
		var x = document.getElementById("Address1").value;
		if (x.length == 0) {
			document.getElementById('Add1').innerHTML = "Enter Adrress line 1";
			document.getElementById('Address1').style.borderColor = "red";
			document.getElementById('Add1').style.color = "red";
			document.getElementById('Address1').focus();
	
			return false;
		} else if (!(x.match(b))) {
			document.getElementById('Add1').innerHTML = "Enter only alphabets";
			document.getElementById('Address1').style.borderColor = "red";
			document.getElementById('Add1').style.color = "red";
			document.getElementById('Address1').focus();
		
			return false;
		} else {
			document.getElementById('Add1').innerHTML = "";
			document.getElementById('Address1').style.borderColor = "green";
			return true;
		}
	}

	function validate5() {
		var b=/^[A-Za-z]+$/;
		var x = document.getElementById("Address2").value;
		if (x.length == 0) {
			document.getElementById('Add2').innerHTML = "Enter Adrress line 2";
			document.getElementById('Address2').style.borderColor = "red";
			document.getElementById('Add2').style.color = "red";
			document.getElementById('Address2').focus();
		
			return false;
		} else if (!(x.match(b))) {
			document.getElementById('Add2').innerHTML = "Enter only alphabets";
			document.getElementById('Address2').style.borderColor = "red";
			document.getElementById('Add2').style.color = "red";
			document.getElementById('Address2').focus();
			
			return false;
		} else {
			document.getElementById('Add2').innerHTML = "";
			document.getElementById('Address2').style.borderColor = "green";
			return true;
		}
	}
	function validate6(){
		var x = document.getElementById("city");
		var x1= x.options[x.selectedIndex].value;
		if(x1 == 0){
			document.getElementById('City').innerHTML = "please select city";
			document.getElementById('city').style.borderColor = "red";
			document.getElementById('City').style.color = "red";
			document.getElementById('city').focus();
		
			return false;
		}else{
			document.getElementById('City').innerHTML = "";
			document.getElementById('city').style.borderColor = "green";
			return true;
		}
	}
	function validate7(){
		var x = document.getElementById("state");
		var x1= x.options[x.selectedIndex].value;
		if(x1 == 0){
			document.getElementById('State').innerHTML = "please select state";
			document.getElementById('state').style.borderColor = "red";
			document.getElementById('State').style.color = "red";
			document.getElementById('state').focus();
		
			return false;
		}else{
			document.getElementById('State').innerHTML = "";
			document.getElementById('state').style.borderColor = "green";
			return true;
		}
	}
	
	
    function validate(){
    
  
    var a2=validate2();
    
    var a3=validate3();
    var a4=validate4();
    var a5=validate5();
    var a6=validate6();
    var a7=validate7();

    if(a2==false||a3==false||a4==false||a5==false||a6==false||a7==false)
   	 {
   	 return false;
   	 }
   	    return true;
   	}
   		
   	
   	
    
    
    
    </script>

</head>
<body>

	<div class="container" id="home">
		<div class="row text-center ">
	<%
		Customer cust=(Customer)request.getAttribute("custObj");

	%>

		<b>Update Details </b>
		<br><br>
		<form action="<%=request.getContextPath()%>/BankManagementController"
			method="post" onsubmit="return validate()">
			<input type="hidden" name="source" value="updatedetails"  >
			<table align="center">
				<tr>
					<th><font color="red" size="4">Customer Id<sup>*</sup></font></th>
					<td>&nbsp;<input type="text" name="CustId"
						value=<%=cust.getCustomerId()%> readonly="readonly" /></td>
				</tr>
				<tr><td>&nbsp;</td></tr>
				<tr>
					<th><font color="red" size="4">Status<sup>*</sup></font></th>
					<td>&nbsp;<input type="text" name="Status" value=<%=cust.getStatus()%>  readonly="readonly"/></td>
				</tr>
				<tr><td>&nbsp;</td></tr>
				<tr>
					<th><font color="red" size="4">SSN Id<sup>*</sup></font></th>
					<td>&nbsp;<input type="text" name="ssnId" value=<%=cust.getSsnId()%> readonly="readonly" /></td>
				</tr>
				<tr><td>&nbsp;</td></tr>
				<tr>
					<th>Customer Name<font color="red" size="4"><sup>*</sup></font></th>
					<td>&nbsp;<input type="text" name="CustName" id="CustName"
						value=<%=cust.getCustomerName()%> onblur="validate2()"  /><span id="cusname"></span></td>
				</tr>
				<tr><td>&nbsp;</td></tr>
				<tr>
					<th><font color="red" size="4">Age<sup>*</sup></font></th>
					<td>&nbsp;<input type="text" name="Age" id="age" value=<%=cust.getAge()%> 	onblur="validate3()" readonly="readonly"/><span id="Age"></span></td>
				</tr>
				<tr><td>&nbsp;</td></tr>
				<tr>
					<th>AddressLine 1<font color="red" size="4"><sup>*</sup></font></th>
					<td>&nbsp;<input type="text" name="AddLine1" id="Address1" 
						value=<%=cust.getAddressLine1()%> onblur="validate4()" /><span
								id="Add1"></span></td>
				</tr>
				<tr><td>&nbsp;</td></tr>
				<tr>
					<th>AddressLine 2<font color="red" size="4"><sup>*</sup></font></th>
					<td>&nbsp;<input type="text" name="AddLine2" id="Address2" 
						value=<%=cust.getAddressLine2()%> onblur="validate5()"><span
								id="Add2"></span></td>
				</tr>
				<tr><td>&nbsp;</td></tr>
				<tr>
							<th class="id">City<font color="red" size="4"><sup>*</sup></font>
							<td>&nbsp;&nbsp;<select name="city" id="city" onblur="validate6()" > 
									<option value="0" selected="selected"><%=cust.getCity() %></option>
									<option value="Anantapur">Anantapur</option>
									<option value="Bangalore">Bangalore</option>
									<option value="Coimbatore">Coimbatore</option>
									<option value="Dharmavaram">Dharmavaram</option>
									<option value="Kadapa">Kadapa</option>
									<option value="Trichy">Trichy</option>
									<option value="Trivandrum">Trivandrum</option>


							</select><span id="City"></span>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<th class="id">State<font color="red" size="4"><sup>*</sup></font>
							<td>&nbsp;&nbsp;<select name="state" id="state" onblur="validate7()">
									<option value="0" selected="selected"><%=cust.getState() %></option>
									<option value="AndhraPradesh">AndhraPradesh</option>
									<option value="TamilNadu">TamilNadu</option>
									<option value="Karnataka">Karnataka</option>
									<option value="Kerala">Kerala</option>

							</select><span id="State"></span>
						<tr>
							<td>&nbsp;</td>
						</tr>
				 
			</table>
			<br><br><input type="submit" value="UpdateDetails" />
			<input type="reset" value="Reset">
		</form>
		<br><br>
		<font color="red" size="4"><sup>(*)</sup></font>fields are mandatory

</div>
	</div>

</body>
</html>