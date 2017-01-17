<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
  function preventBack(){window.history.forward();}
  setTimeout("preventBack()", 0);
  window.onunload=function(){null};
</script>
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
.ss{
font-family: Verdana,sans-serif;
font-size: 14px;
color:black;
}
.id {
	 text-align: left;
}
 input[type="submit"] {
  
   background: black;
   color: white;
   border: none;
   padding: 10px 45px;
   }
</style>
</head>
<script type="text/javascript">
function   fun3()
{
	document.getElementById("startdate").disabled=true;
	document.getElementById("enddate").disabled=true;
	 var a=document.myForm.accid;
	 if(a.selectedIndex==0)
	   {
		 document.getElementById("ac").innerHTML="Please Select your Account Id";
 	      document.getElementById("ac").focus();
 	      document.getElementById("ac").style.borderColor="red";
 	      document.getElementById("ac").style.color="red";
	      return false;
	   }return true;
	}
function check()
{
	
	 document.getElementById("ac").innerHTML="";
	 
	 document.getElementById("ac").style.borderColor="blue";
	
	}
function check1()
{
	
	 document.getElementById("ac1").innerHTML="";
	 
	 document.getElementById("ac1").style.borderColor="blue";
	
	}
function check2()
{
	
	 document.getElementById("ac2").innerHTML="";
	 
	 document.getElementById("ac2").style.borderColor="blue";
	
	}
function checkRadio()
{
   var a=document.myForm.accid;
   var b=document.getElementById("startdate").value;
   var c=document.getElementById("enddate").value;
   var d1=new Date(b);
   var d2=new Date(c);
   if(d1>d2)
	   {

		document.getElementById("ac2").innerHTML=" Please Select end Date correctly";
	      document.getElementById("ac2").focus();
	      document.getElementById("ac2").style.borderColor="red";
	      document.getElementById("ac2").style.color="red";
	 return false;
	   
	   }
   var d = /^[A-Za-z]+$/;
   if(a.selectedIndex==0)
	   {
	   document.getElementById("ac").innerHTML="Please Select Account Id";
	      document.getElementById("ac").focus();
	      document.getElementById("ac").style.borderColor="red";
	      document.getElementById("ac").style.color="red";
	      return false;
	   }
	   
	if(b=="")
		{
		document.getElementById("ac1").innerHTML=" Please Enter Date ";
	      document.getElementById("ac1").focus();
	      document.getElementById("ac1").style.borderColor="red";
	      document.getElementById("ac1").style.color="red";
		 return false;
		}
	if(b.match(d))
	{
		 alert("please enter  date in a correct format");
		 return false;
		}
	 if(c=="")
		 {
			document.getElementById("ac2").innerHTML=" Please Enter Date";
		      document.getElementById("ac2").focus();
		      document.getElementById("ac2").style.borderColor="red";
		      document.getElementById("ac2").style.color="red";
		 return false;
		 }
	 if(c.match(d))
			{
			 alert("please enter  date in a correct format");
			 return false;
			}
	 
	 return true;
}



</script>
<body>
<a class="ss"><strong>Account Statement</strong></a>
		<div class="container" id="home">
			<div class="row text-center ">
	<% ArrayList<String> accountid=(ArrayList<String>)request.getAttribute("account"); %>
	<form  action="<%=request.getContextPath()%>/Controller" name="myForm" >
	<table align="center">
		
			
		<tr><td class="id">Account Id
  						  </td><td><select name="accid" id="accid" onchange="check()">
  						  <option value="">select</option>
						  <% for(String a:accountid) {%>
                          <option value= <%= a%>><%=a%></option>
                          <% }%>
                          </select></td></tr><span id="ac"></span>
                          <tr><td>&nbsp;</td></tr>
<tr><td class="id">Start Date</td><td>
<input type="date" name="startdate" id="startdate" onchange="check1()"><span id="ac1"></span></td></tr>
<tr><td>&nbsp;</td></tr>
<tr><td class="id">End Date</td><td>

<input type="date" name="enddate" id="enddate" onchange="check2()"><span id="ac2"></span></td></tr>
	</table>
	<br>
<input type="submit" name="action" value="View All Transactions by Date" onclick="return checkRadio()"><br><br>
<center><a class="ss"><strong>OR</strong></a></center><br>

<input  type="submit" id="ten" name="action" value="Get Last Ten Statements" onclick="return fun3()">
	</form>	

	</div>
	</div>


</body>
</html>