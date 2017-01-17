<%@page import="com.bean.Transaction"%>
	<%@ page import="java.util.ArrayList"%>
	<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ABC Bank Management</title>
<style type="text/css">
.ss{
font-family: Verdana,sans-serif;
font-size: 14px;
}
</style>
<script>
  function preventBack(){window.history.forward();}
  setTimeout("preventBack()", 0);
  window.onunload=function(){null};
</script>
</head>

<script type="text/javascript">
function fun1(){
	
var b=document.getElementById("tac").value;
var c= document.getElementById("acc").value;
var a=document.form.tac;

if(b==c)
	{
	  document.getElementById("x").innerHTML="Source and target accountId cannot be same";
	      document.getElementById("x").focus();
	      document.getElementById("x").style.borderColor="red";
	      document.getElementById("x").style.color="red";
	return false;
	}
if(a.selectedIndex==0)
	   {
	      alert("please select targetAccountId ");
	      return false;
	   }return true;
}

</script>
<body>

<%Transaction a=(Transaction)request.getAttribute("obj"); %>
<% ArrayList<String> accountid=(ArrayList<String>)request.getAttribute("account"); %>
<center>
<h2>
<a class="ss">Remittances</a></h2>
<form name="form" method = "post" action="<%=request.getContextPath()%>/Controller" onsubmit="return fun1()">

<table  border="1" cellpadding="10" cellspacing="0">
<tr>
<td>Customer Id</td>
<td><input type="text" name="cus" value="<%=a.getCustid()%>" readonly></td>
</tr>
<tr>

<td>Account Id</td>

<td><input type="text" name="acc" id = "acc" value="<%=a.getAcc_id()%>" readonly></td>
</tr>
<tr>
<td>Account Type</td>
<td><input type="text" name="acctype" value="<%=a.getAcctype()%>" readonly></td>
</tr>
<tr>
<td>Balance (&#8377;)</td>
<td> <input type="text" name="balance" id="balance" value="<%=a.getBalance()%>"
						readonly></td>
</tr>
<tr>
<td>Amount (&#8377;)</td>
<td> <input type="text" name="amount" id="amount" value="<%=a.getAmount()%>"
						readonly></td>
</tr>
<tr>
<td>TargetAccountId</td><td><select name="tac" id="tac">
                         <option value="">select</option>
						  <% for(String z:accountid) {%>
                          <option value= <%= z%>><%=z%></option>
                          <% }%>
                          </select></td></tr>




</table> <br><span id="x"></span>
<br><br>



<input type="submit" name="action" value ="transfer amount">
</form> 
</center>
</body>
</html>