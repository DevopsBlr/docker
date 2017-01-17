<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ABC Bank Management</title>
</head>
<body>

<%String s=(String)session.getAttribute("s");
 if(s.equals("1"))
 {
	 %>
	 <font size="5" color="red">Invalid Username/Password</font>
	 <%} %>
	 

<%String s1=(String)session.getAttribute("s");
 if(s1.equals("2"))
 {
%>
	 <font size="5" color="red">Inactive User</font>
 <%} %>
 <a href="<%=request.getContextPath()%>/JSP/index.jsp"><b>Re-Login</b></a>
					
</html>