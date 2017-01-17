<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->

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
.id {
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
<script>
	function validate1() {

		var x = document.getElementById("ssnId").value;
		if ((isNaN(x))) {
			document.getElementById('ssn').innerHTML = "Please enter only numeric characters";
			document.getElementById('ssnId').style.borderColor = "red";
			document.getElementById('ssn').style.color = "red";
			document.getElementById('ssnId').focus();	
			return false;

		} else if (x.length != 9) {
			document.getElementById('ssn').innerHTML = "Please enter only 9 digit number";
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

		var a = document.getElementById("name").value;
		var b=/^[A-Za-z]+$/;

		if (a.length == 0) {
			document.getElementById('cusname').innerHTML = "Please enter Name";
			document.getElementById('name').style.borderColor = "red";
			document.getElementById('cusname').style.color = "red";
			document.getElementById('name').focus();
		
			return false;

		} else if (!(a.match(b))) {
			document.getElementById('cusname').innerHTML = "Please enter only alphabets";
			document.getElementById('name').style.borderColor = "red";
			document.getElementById('cusname').style.color = "red";
			document.getElementById('name').focus();
		
			return false;

		}else if (a.length >25) {
			document.getElementById('cusname').innerHTML = "Maximum allowed characters are 25";
			document.getElementById('name').style.borderColor = "red";
			document.getElementById('cusname').style.color = "red";
			document.getElementById('name').focus();
		
			return false;

		} else {
			document.getElementById('cusname').innerHTML = "";
			document.getElementById('name').style.borderColor = "green";
			return true;
		}
	}
	function validate3() {
		var x = document.getElementById("age").value;
		if ((isNaN(x))) {
			document.getElementById('Age').innerHTML = "Please enter only numeric characters";
			document.getElementById('age').style.borderColor = "red";
			document.getElementById('Age').style.color = "red";
			document.getElementById('age').focus();
			
			return false;
		} else if (x.length == 0) {
			document.getElementById('Age').innerHTML = "Please enter age";
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
		var x = document.getElementById("Address1").value;
		var b=/^[A-Za-z]+$/;
		if (x.length == 0) {
			document.getElementById('Add1').innerHTML = "Please enter Adrress line 1";
			document.getElementById('Address1').style.borderColor = "red";
			document.getElementById('Add1').style.color = "red";
			document.getElementById('Address1').focus();
	
			return false;
		} else if (!(x.match(b))) {
			document.getElementById('Add1').innerHTML = "Please enter only alphabets";
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
		var x = document.getElementById("Address2").value;
		var b=/^[A-Za-z]+$/;
		if (x.length == 0) {
			document.getElementById('Add2').innerHTML = "Please enter Adrress line 2";
			document.getElementById('Address2').style.borderColor = "red";
			document.getElementById('Add2').style.color = "red";
			document.getElementById('Address2').focus();
		
			return false;
		} else if (!(x.match(b))) {
			document.getElementById('Add2').innerHTML = "Please enter only alphabets";
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
	

	/*{
 		var x1 = document.getElementById("ssnId").value;
		var x2 = document.getElementById("name").value;
		var x3= document.getElementById("age").value;
		var x4 = document.getElementById("Address1").value;
		var x5 = document.getElementById("Address2").value;
		var x6 = document.getElementById("city");
		var x7= x6.options[x6.selectedIndex].value;
		var x8 = document.getElementById("state");
		var x9= x8.options[x8.selectedIndex].value;
		
		validate3();
		if(x1.length==0 || x2.length==0 || x3.length==0 || x4.length==0 || x5.length==0 || x7 == 0 || x9 == 0)
			{
			document.getElementById('name1').innerHTML = "Enter Valid Details";
			document.getElementById('name1').style.color = "red";
		
			
			return false;
			}
		if ((isNaN(x3))) {
			document.getElementById('Age').innerHTML = "enter only numeric characters";
			document.getElementById('age').style.borderColor = "red";
			document.getElementById('Age').style.color = "red";
			document.getElementById('age').focus();
			
			return false;
		} else if (x3.length == 0) {
			document.getElementById('Age').innerHTML = "Enter age";
			document.getElementById('age').style.borderColor = "red";
			document.getElementById('Age').style.color = "red";
			document.getElementById('age').focus();
		
			return false;
		} else if (x3 > 18 && x3 < 60) {
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
 */	function validate(){
 var a1=validate1();
 var a2=validate2();
 var a3=validate3();
 var a4=validate4();
 var a5=validate5();
 var a6=validate6();
 var a7=validate7();

 if(a1==false||a2==false||a3==false||a4==false||a5==false||a6==false||a7==false)
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
		
			<center>
				<form name="addform"
					action="<%=request.getContextPath()%>/BankManagementController"
					method="post" onsubmit="return validate()">
					<input type="hidden" name="source" value="add">
					
					<h2><b>Add Customer</b></h2>
					
				
<span id="name1"></span>
					<table>
						<tr>

							<td>&nbsp;&nbsp;<input type="hidden" name="status"
								value="active" /></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<th class="id">SSN Id<font color="red" size="4"><sup>*</sup></font>
							<td>&nbsp;&nbsp;<input type="text" name="ssnId" id="ssnId"
								onblur="validate1()" /><span id="ssn"></span></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<th class="id">Customer Name<font color="red" size="4"><sup>*</sup></font>
							<td>&nbsp;&nbsp;<input type="text" name="CustName" id="name"
								onblur="validate2()" /><span id="cusname"></span></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>

							<th class="id">Age<font color="red" size="4"><sup>*</sup></font>
							<td>&nbsp;&nbsp;<input type="text" name="Age" id="age"
								onblur="validate3()" /><span id="Age"></span></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<th class="id">Address Line 1<font color="red" size="4"><sup>*</sup></font>
							<td>&nbsp;&nbsp;<input type="text" name="AddLine1"
								name="AddLine1" id="Address1" onblur="validate4()" /><span
								id="Add1"></span></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<th class="id">Address Line 2<font color="red" size="4"><sup>*</sup></font>
							<td>&nbsp;&nbsp;<input type="text" name="AddLine2"
								name="AddLine2" id="Address2" onblur="validate5()" /><span
								id="Add2"></span></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<th class="id">City<font color="red" size="4"><sup>*</sup></font>
							<td>&nbsp;&nbsp;<select name="city" id="city" onblur="validate6()"> 
									<option value="0" selected="selected">--Select--</option>
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
									<option value="0" selected="selected">--Select--</option>
									<option value="AndhraPradesh">AndhraPradesh</option>
									<option value="TamilNadu">TamilNadu</option>
									<option value="Karnataka">Karnataka</option>
									<option value="Kerala">Kerala</option>

							</select><span id="State"></span>
						<tr>
							<td>&nbsp;</td>
						</tr>
					


					</table>

					<br>
					
						<input type="submit" value="Add">
							<input type="reset" value="Reset">
						
				
					

				</form>
				<br><br>
				<font color="red" size="4"><sup>(*)</sup></font>fields are mandatory
			</center>
			
</div>
	</div>
	<!--End Header section  -->


	<!--About Section-->



</body>
</html>