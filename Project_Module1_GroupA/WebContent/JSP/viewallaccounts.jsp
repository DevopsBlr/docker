<%@page import="com.bean.Account"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
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
    <script type="text/javascript">
    



    function searchRows(tblId) {
    var tbl = document.getElementById(tblId);
    var headRow = tbl.rows[0];
    var arrayOfHTxt = new Array();
    var arrayOfHtxtCellIndex = new Array();

    for (var v = 0; v < headRow.cells.length; v++) {
     if (headRow.cells[v].getElementsByTagName('input')[0]) {
     var Htxtbox = headRow.cells[v].getElementsByTagName('input')[0];
      if (Htxtbox.value.replace(/^\s+|\s+$/g, '') != '') {
        arrayOfHTxt.push(Htxtbox.value.replace(/^\s+|\s+$/g, ''));
        arrayOfHtxtCellIndex.push(v);
      }
     }
    }

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
    }
    </script>

    
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
    <script type="text/javascript">
    
    function check(){


    	var id=document.view.accountid.value;
    	if(id==''){
    		
    		document.getElementById('idd').innerHTML= "Enter the Account Id";
    		document.getElementById("accountid").style.borderColor = "red"; 
    		document.getElementById("idd").style.color = "red";
    		document.getElementById("accountid").focus();
    		
    		 return false;  
    	}
    }

    </script>
 <style type="text/css">


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

th, td {
    text-align: left;
    padding: 6px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: black;
    color: white;
}
 input[type="text"] {
  color: black;
 }
 input[type="submit"] {
  
   background: black;
   color: white;
   border: none;
   padding: 7px 35px;
   }

</style>
  </head>
   


	<!-- Navigation -->

	<!--End Navigation -->

<body>
	<!--Header section  -->
	<div class="container" id="home">
		<div class="row text-center ">
<form action="<%=request.getContextPath()%>/AccountController" name="view" method="post" onsubmit="return check()">
	
			<h3><b>All Account Details</b></h3>
			<%
				ArrayList<Account> accountlist = (ArrayList<Account>)request.getAttribute("accountrecords");%>
                
			<%	if (accountlist!= null && accountlist.size() > 0){%>
	
	
				<br><span id="idd"></span><br>
			<table border="2" cellspacing="5" cellpadding="5"  id="tblS">
	 
				<tr>
					<th>Customer Id</th>
					
  <th scope="col">
 Account Id
  <input type="text" id="txtPrjName" onkeyup="searchRows('tblS')" >
  </th>
					<th>Account Type</th>
					<th>Balance (&#8377;)</th>
					<th>Credited Date<br>(YYYY-MM-DD)</th>
					<th>Previous Credited Date<br>(YYYY-MM-DD)</th>
					<th>No. of Transactions</th>
						<th>Status</th>
				</tr>

				<%
					for (Account acc : accountlist) {
				%><tbody class="list">
				<tr>
					<td><%=acc.getCustomer_id()%></td>
					
				<td class="account"><a href="<%=request.getContextPath()%>/AccountController?action=Search_account&accountid=<%=acc.getAccount_id()%>"><%=acc.getAccount_id()%></a></td>
	
	
					
					<td><%=acc.getAccount_type() %></td>
					<td><%=acc.getBalance()%></td>
					<td><%=acc.getCredited_date()%></td>
					<td><%=acc.getCredited_lastdate()%></td>
					<td><%=acc.getNoOfTransaction()%> </td>
					<td><%=acc.getStatus() %></td>

					<%
						}
					%>


				</tr>



			</table>

	


			<%
				}
			%>
		

<div id="pageNavPosition"></div>
</form>
</div>
	</div>

<script type="text/javascript">
    var pager = new Pager('tblS', 5); 
    pager.init(); 
    pager.showPageNav('pager', 'pageNavPosition'); 
    pager.showPage(1);
</script>
</body>
</html>
