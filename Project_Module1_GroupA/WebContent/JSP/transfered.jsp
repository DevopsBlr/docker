<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ABC Bank Management</title>
<style type="text/css">
.aa{
font-size: 30px;
font-family: Arial, Helvetica, sans-serif;
}
.n{
    color: green;}
.bb{font-size: 30px;
  font-family: Arial, Helvetica, sans-serif;}
</style>
</head>
<body>

<br>
<br>
<br>
<br>
<br>

<center><p class="aa" >Transfer of <span class="WebRupee">&#x20B9;</span> <%=request.getAttribute("amount")%> from Account Id <%=request.getAttribute("accid")%> to Account Id <%=request.getAttribute("tccid")%> was <a class="n">Successful</a></p></center>
<%--  <p class="aa" align="center"><strong>Your Amount has been transfered Successfully </strong></p>
<p class="bb" align="center"><strong>your total balance is <%=request.getAttribute("sIDbalance") %></strong></p>
<p class="bb" align="center"><strong>your transfered account balance is  <%=request.getAttribute("tIDbalance") %></strong></p> --%>
<p class="bb" align="center"><strong>Transaction Id : <%=request.getAttribute("tran") %></strong></p>



<br><br><br><br>



</body>
</html>