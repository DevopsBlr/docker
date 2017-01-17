<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ABC Bank Management</title>

<style>
footer {
	position: relative;
	top: 250px;
	left: 50px;
}
</style>

<script type="text/javascript">
	function validateCode() {

		var TCode = document.forms["loginform"]["username"].value;
		var PCode = document.forms["loginform"]["password"].value;

		for ( var i = 0; i < TCode.length; i++) {
			var char1 = TCode.charAt(i);
			var cc = char1.charCodeAt(0);

			if ((cc > 47 && cc < 58) || (cc > 64 && cc < 91)
					|| (cc > 96 && cc < 123)) {

			} else {
				alert('Username should be alphanumeric');
				return false;
			}
		}
		for ( var i = 0; i < PCode.length; i++) {
			var char2 = PCode.charAt(i);
			var cc1 = char2.charCodeAt(0);

			if ((cc1 > 47 && cc1 < 58) || (cc1 > 64 && cc1 < 91)
					|| (cc1 > 96 && cc1 < 123)) {

			} else {
				alert('Password should be alphanumeric');
				return false;
			}
		}
		return true;
	}
</script>
</head>
<body>
	<h1>ABC BANK MANAGEMENT</h1>

	<center>
		<form name="loginform"
			action="<%=request.getContextPath()%>/LoginController" method="post"
			onsubmit="return validateCode()">
			<input type="hidden" name="source" value="login">
			<table>
				<tr>
					<th>User Name<font color="red">*</font></th>
					<td><input type="text" name="username" id="name" required></td>
				</tr>
				<tr>
					<th>Password<font color="red">*</font></th>
					<td><input type="password" name="password" id="pass" required></td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;</td>
					<td>&nbsp;&nbsp;</td>
				</tr>
			
			</table>
			<input type="submit" value="login"> <input type="reset"
				value="Reset"><br><br>
				<a href="<%=request.getContextPath()%>/JSP/ForgotPassword.jsp">Forgot Password?</a>

		</form>
</center><br><br>
<footer>
<font size="2">Copyright © 2016 designed by GroupA_Module1</font>
</footer>
</body>
</html>