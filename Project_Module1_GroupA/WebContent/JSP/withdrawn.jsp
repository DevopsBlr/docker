<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success</title>
<style type="text/css">
.aa{
font-size: 30px;

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
<p class="aa" align="center"> Sum of <span class="WebRupee">&#x20B9;</span> <%=request.getAttribute("amount")%> was <a class="n" >Withdrawn Successfully</a> from AccountId : <%=request.getAttribute("accid")%></p>

<!-- <p class="aa" align="center"><strong>Your Amount has been Withdrawn Successfully </strong></p> -->
<p class="bb" align="center">Old Balance  <span class="WebRupee">&#x20B9;</span> <%=request.getAttribute("old")%></p>
<p class="bb" align="center">New Balance  <span class="WebRupee">&#x20B9;</span> <%=request.getAttribute("latest")%></p>
<p class="bb" align="center"><strong>Transaction Id  <%=request.getAttribute("tran")%></strong></p>
<%-- <p class="bb" align="center"><strong>your transaction id is<%=request.getAttribute("tran")%></strong></p> --%>
<br>
<br>
<br>
<br>



</body>
</html>