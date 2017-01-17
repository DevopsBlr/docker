<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
    
     input[type="submit"] {
  
   background: black;
   color: white;
   border: none;
   padding: 10px 45px;
   }
    
    </style>

</head>
<body>


	<!--End Navigation -->

	<div class="container" id="home">
		<div class="row text-center ">
			<%
				String user = (String) session.getAttribute("user");
			%>
		
			<center>
				<form
					action="<%=request.getContextPath()%>/BankManagementController"
					method="post">
					<input type="hidden" name="source" value="SecureAns"> <input
						type="hidden" name="user" value=<%=user%>>
					<table>

  


						<tr>
							<td>Select your security question</td>
							<td><select name="securtiyQn">
									<option >--Select--</option>
									<option value="1">What is your pet name?</option>
									<option value="2">What is your first school name?</option>
									<option value="3">what is your blood group?</option>


							</select></td>
						 	
						</tr>
						<tr><td>&nbsp;</td></tr>
							<!-- <tr>
							<td>Select your security question number</td>
							<td><select name="securityQNo">
									<option value=0>--Select--</option>
									<option value=1>1</option>
									<option value=2>2</option>
									<option value=3>3</option>


							</select></td>
							
						</tr>  -->
						

						<tr>
							<td>Enter your answer</td>
							<td><input type="password" name="ans"></td>
						</tr>
						<tr><td>&nbsp;</td></tr>
							<tr>
							<td>Enter your new password</td>
							<td><input type="password" name="pswd"></td>
						</tr>
					</table>
					<br>
					<input type="submit" value="Submit">
					<input type="reset" value="Reset">

				</form>
			</center>
		</div>
	</div>

</body>
</html>