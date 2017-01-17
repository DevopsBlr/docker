<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.bean.Transaction"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ABC Bank Management</title>
<script>
  function preventBack(){window.history.forward();}
  setTimeout("preventBack()", 0);
  window.onunload=function(){null};
</script>
<title>Insert title here</title>
<style type="text/css">
.ss{
font-family: Verdana,sans-serif;
font-size: 14px;
}
table{
font-family: Verdana,sans-serif;
font-size: 14px;
}
input[type=text] { text-align:center }
 input[type="submit"] {
  
   background: black;
   color: white;
   border: none;
   padding: 10px 45px;
   }
</style>
</head>

<script type="text/javascript">
    function wthdraw(){
    	var c = document.getElementById("amount").value;
    	var a = parseInt(document.getElementById("amount").value);
    	var b =  parseInt(document.getElementById("balance").value);
    	
		if(c==''){
			  document.getElementById("a").innerHTML="Please Enter Amount";
	  	      document.getElementById("a").focus();
	  	      document.getElementById("a").style.borderColor="red";
	  	      document.getElementById("a").style.color="red";
	  	      
	  	      
			return false;
			}   
		else if(!(c.match(/^[0-9]+$/))){
			document.getElementById('a').innerHTML="Please Enter Valid Amount";
			document.getElementById("a").style.borderColor = "red"; 
			document.getElementById("a").style.color = "red";
			document.getElementById("a").focus();
			 return false;  
			
		}else if(c==0){
			document.getElementById('a').innerHTML="Please Enter Valid Amount";
			document.getElementById("a").style.borderColor = "red"; 
			document.getElementById("a").style.color = "red";
			document.getElementById("a").focus();
			 return false;
			
		}
		else if(a<0){
			  document.getElementById("a").innerHTML="Please Enter Amount in positive";
			  document.getElementById("a").focus();
	  	      document.getElementById("a").style.borderColor="red";
	  	      document.getElementById("a").style.color="red";
	  	      document.getElementById("amount").value="";
	  	      return false;
		}
		else if(isNaN(a)){ 
	    	  document.getElementById("a").innerHTML="Please Enter  Amount in Numbers";
	  	      document.getElementById("a").focus();
	  	      document.getElementById("a").style.borderColor="red";
	  	      document.getElementById("a").style.color="red";
	  	      document.getElementById("amount").value="";
				return false;
			}
		else if(a>b){
    		
    		  document.getElementById("a").innerHTML="Balance is Insufficient. Please Enter Valid Amount";
	  	      document.getElementById("a").focus();
	  	      document.getElementById("a").style.borderColor="red";
	  	      document.getElementById("a").style.color="red";
	  	      document.getElementById("amount").value="";
    		return false;
    	}else{
    		
    		return true;
    	}
    }

	function fun(){
		//alert("Select your option for transaction");

        var c = document.getElementById("amount").value
		var a = parseInt(document.getElementById("amount").value);
	 if(!(c.match(/^[0-9]+$/))){
			document.getElementById('a').innerHTML= "Please Enter Valid Amount";
			document.getElementById("a").style.borderColor = "red"; 
			document.getElementById("a").style.color = "red";
			document.getElementById("a").focus();
			 return false; }
		else if(c=="null" || c==''){
			  document.getElementById("a").innerHTML="Please Enter Amount";
	  	      document.getElementById("a").focus();
	  	      document.getElementById("a").style.borderColor="red";
	  	      document.getElementById("a").style.color="red";
			return false;
			
		}else if(c==0){
			document.getElementById('a').innerHTML="Please Enter Valid Amount";
			document.getElementById("a").style.borderColor = "red"; 
			document.getElementById("a").style.color = "red";
			document.getElementById("a").focus();
			 return false;
			
		}
	
		
		return true;
	}

	

</script>
<body>
<div class="container" id="home">
			<div class="row text-center ">
<%  Transaction a= (Transaction)request.getAttribute("transbean"); %>


<center>
<h3><a class="ss"><b>Transactions</b></a></h3> 
	

<form  action="<%=request.getContextPath()%>/Controller" method="post" onsubmit="return fun()">
<table  class="table" cellpadding="10" cellspacing="0">
<tr>
<td>Customer Id</td>
<td><input type="text" name="cus" value="<%=a.getCustid()%>" readonly></td>
</tr>
<tr>

<td>Account Id</td>

<td><input type="text" name="acc" value="<%=a.getAcc_id()%>" readonly></td>
</tr>
<tr>
<td>Account Type</td>
<td><input type="text" name="acctype" value="<%=a.getAcctype()%>" readonly></td>
</tr>
<tr>
<td>Balance (&#8377;)</td>
<td> <input  type="text" name="balance" id="balance" value="<%=a.getBalance()%>"
						readonly></td>
</tr>




</table>


<a class="ss"><strong>Enter the Amount and Select the type of Transaction to Proceed</strong></a><br>
<br>


<a class="ss"><strong>Amount</strong> (&#8377;)</a><br><br>


<input type="text" name="amount" id = "amount" maxlength="9">   <span id="a"></span>
<br><br>
<input type="submit" style="vertical-align:middle" class="button" name="action" value="Withdraw" id = "proceed1" onclick="return wthdraw()"  ><br>
<br>
<input type="submit" style="vertical-align:middle"  class="button" name="action" value="Deposit" id = "proceed2" onclick="return fun()"><br>
<br>
<input type="submit" style="vertical-align:middle" class="button"  name="action" value="Transfer" id = "proceed3" onclick="return wthdraw()"><br>
</form>

</center>
</div>
</div>
</body>
</html>
