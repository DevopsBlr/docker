<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*"%>
    <%@page import="com.bean.Transaction"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>ABC Bank Management</title>
<style>
.ss{
font-family: Verdana,sans-serif;
font-size: 14px;
}
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
    font-family: Verdana,sans-serif;
font-size: 14px;
}

th, td {
    text-align: center;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: black;
    color: white;
}

 input[type="button"] {
  
   background: black;
   color: white;
   border: none;
   padding: 10px 45px;
   }
   
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
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


</script>
<script>
function myFunction() {
    window.print();
}
</script>

<body>

<% ArrayList<Transaction> t = (ArrayList<Transaction>)request.getAttribute("transferdetails"); %> 
<center>
<h3>Display page</h3></center>
<center>



<h3><a class="ss"><b>All Transaction Details</b></a></h3>
<br>
<table border="2" cellspacing="5" cellpadding="5" id="results">
<tr><th>Transaction id</th><th>Account id</th><th>Transaction date(YYYY-MM-DD)</th><th>Action</th><th>Amount (&#8377;)</th>
<th>Current Balance (&#8377;)</th><th>Target Acc Id</th></tr>
<%for(Transaction tra:t){ %>
<tr>
<td><%= tra.getTran_id() %></td>
<td><%= tra.getAcc_id() %></td>
<td><%= tra.getDate() %></td>
<td><%= tra.getAction() %></td>
<td><%= tra.getAmount() %></td>
<td><%= tra.getCurr_balance() %></td>
<%if(tra.getTar_acc_id()==null){%>
 <td align="center">    -   </td>
 <% }else{ %>
<td align="center"><%= tra.getTar_acc_id() %></td>

</tr>
<%} %>
<%} %>
</table>
<br>
 <div id="pageNavPosition"></div>
</center><br><br><center>
  <input type="button" onclick="myFunction()" value="Print this page"></center>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>


<script type="text/javascript">
    var pager = new Pager('results', 5); 
    pager.init(); 
    pager.showPageNav('pager', 'pageNavPosition'); 
    pager.showPage(1);
</script>
<br><br>


</body>
</html>