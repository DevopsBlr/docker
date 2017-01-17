<%@page import="java.util.ArrayList"%>
<%@page import="com.bean.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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


<script type="text/javascript">
    function Pager(tableName, itemsPerPage) {
        this.tableName = tableName;
        this.itemsPerPage = itemsPerPage;
        this.currentPage = 1;
        this.pages = 0;
        this.inited = false;
    
        
        this.showRecords = function(from, to) {        
            var rows = document.getElementById(tableName).rows;
            // i starts from 1 to skip table header row
            for (var i = 1; i < rows.length; i++) {
                if (i < from || i > to)  
                    rows[i].style.display = 'none';
                else
                    rows[i].style.display = '';
            
        }
        }
        this.showPage = function(pageNumber) {
        	if (! this.inited) {
        		alert("not inited");
        		return;
        	}

            var oldPageAnchor = document.getElementById('pg'+this.currentPage);
            oldPageAnchor.className = 'pg-normal';
            
            this.currentPage = pageNumber;
            var newPageAnchor = document.getElementById('pg'+this.currentPage);
            newPageAnchor.className = 'pg-selected';
            
            var from = (pageNumber - 1) * itemsPerPage + 1;
            var to = from + itemsPerPage - 1;
            this.showRecords(from, to);
        }   
        
        this.prev = function() {
            if (this.currentPage > 1)
                this.showPage(this.currentPage - 1);
        }
        
        this.next = function() {
            if (this.currentPage < this.pages) {
                this.showPage(this.currentPage + 1);
            }
        }                        
        
        this.init = function() {
            var rows = document.getElementById(tableName).rows;
            var records = (rows.length - 1); 
            this.pages = Math.ceil(records / itemsPerPage);
            this.inited = true;
        }

        this.showPageNav = function(pagerName, positionId) {
        	if (! this.inited) {
        		alert("not inited");
        		return;
        	}
        	var element = document.getElementById(positionId);
        	
        	var pagerHtml = '<span onclick="' + pagerName + '.prev();" class="pg-normal"> &#171 Prev </span> | ';
            for (var page = 1; page <= this.pages; page++) 
                pagerHtml += '<span id="pg' + page + '" class="pg-normal" onclick="' + pagerName + '.showPage(' + page + ');">' + page + '</span> | ';
            pagerHtml += '<span onclick="'+pagerName+'.next();" class="pg-normal"> Next &#187;</span>';            
            
            element.innerHTML = pagerHtml;
        }
    }
    /* function doo(f)
    {   var r=new RegExp("^"+f);

    	var rows=document.getElementById("results").rows;
    	var cells = document.getElementById("results").cells;
    	var len=document.getElementById("results").cells.length;
    	
    	var i=0;
    	var index=0;
    	rows[0].style.display='block';
        while(i<len) {
    	var c=cells[i].innerHTML;
    	

    	if(c.match(r)){
    		
    		rows[index].style.display='block';
    	
    		index=index+1;
    		document.getElementById("pageNavPosition").style.display='none';	
    	}
    	else
    		{
    	if(index!=0)
    		rows[index].style.display='none';
    		index=index+1;
    		}
    	 i=i+11;
    		}
       
    	
    } */
    for (var i = 1; i < tbl.rows.length; i++) {

        tbl.rows[i].style.display = 'table-row';

        for (var v = 0; v < arrayOfHTxt.length; v++) {

            var CurCell = tbl.rows[i].cells[arrayOfHtxtCellIndex[v]];

            var CurCont = CurCell.innerHTML.replace(/<[^>]+>/g, "");

            var reg = new RegExp(arrayOfHTxt[v] + ".*", "i");

            if (CurCont.match(reg) == null) {

                tbl.rows[i].style.display = 'none';

           }

        }

      }
    

</script>

<style>
.pg-normal {
	color: black;
	font-weight: normal;
	text-decoration: none;
	cursor: pointer;
}

.pg-selected {
	color: black;
	font-weight: bold;
	text-decoration: underline;
	cursor: pointer;
}

table {
	border-collapse: collapse;
	width: 100%;
}

th,td {
	text-align: center;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f2f2f2
}

th {
	background-color: black;
	color: white;
}
input { 
    text-align: center; 
    color:black;
    
}
</style>
</head>
<body>
	<!-- Navigation -->

	<p class="groove"></p>


	<!-- <fieldset>
		<form>
			<legend>Search</legend>
			<table align="center"
				style="box-shadow: 1px 1px 2px black, 0 0 25px #ccf2ff, 0 0 5px #ffb3ff">
				<tr>
					<td><b>Customer Id</b></td>
					<td><input type="text" name="cid" onkeyup="doo(this.value)"></td>
				</tr>
			</table>
			<center>
				<input type="reset" value="Reset">
			</center>
		</form>
	</fieldset> -->
	<p class="groove"></p>
	<div class="container" id="home">
		<div class="row text-center ">
			<center>
				<h3>
					<b>Customer Details</b>
				</h3>
			</center>
			<%
		ArrayList<Customer> clist = (ArrayList<Customer>) request
				.getAttribute("cusList");%>

			<table border="2" cellspacing="5" cellpadding="5" id="results">
				<tr>
					<th scope="col">Customer Id <input type="text" id="txtPrjName"
						onkeyup="searchRows('results')">
					</th>>
					<th>Status</th>
					<th>SSN Id</th>
					<th>Customer Name</th>
					<th>Age</th>
					<th>Address Line1</th>
					<th>Address Line2</th>
					<th>City</th>
					<th>State</th>
				</tr>

				<% for(Customer c:clist){ %>
				<tr>
					<td><%=c.getCustomerId()%></td>
					<td><%=c.getStatus()%></td>
					<td><%=c.getSsnId()%></td>
					<td><%=c.getCustomerName()%></td>
					<td><%=c.getAge()%></td>
					<td><%=c.getAddressLine1()%></td>
					<td><%=c.getAddressLine2()%></td>
					<td><%=c.getCity()%></td>
					<td><%=c.getState()%></td>

				</tr>
				<%} %>



			</table>
			<div id="pageNavPosition"></div>
		</div>
	</div>


	<script type="text/javascript">
    var pager = new Pager('results', 5); 
    pager.init(); 
    pager.showPageNav('pager', 'pageNavPosition'); 
    pager.showPage(1);
</script>
</body>
</html>