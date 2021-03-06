<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
<head>

<title>Search/Edit Cust.</title>
</head>
<body>
 <tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
	<br>
	<c:if test="${param.updated eq true}">
		<div class="alert alert-success">Customer Updated Successfully!
		</div>
		</c:if>
		<c:if test="${param.error eq true}">
		<div class="alert alert-danger">Somthing went wrong Customer not updated!
		</div>
		</c:if>
	
	<form:form class="input-sm" modelAttribute="customer" >
	<div class="col-md-12">
	<div class="panel panel-primary">
     <div class="panel-heading text-left">Search Customer</div>
      <div class="panel-body">						
	<div class="col-md-4">
	<%-- <form:hidden class="text-long" path="cid" /> --%>
	<form:input type="text" class="form-control" id="ajaxsearch" path="cid" placeholder="Enter Customer ID Here..." />
	</div>
		</div>
	</div>
	</div>										
</form:form>
						
						
<script>	
$(document).ready(function() {
	$('#ajaxsearch').autocomplete({		
		serviceUrl: '${pageContext.request.contextPath}/getCustomers',
		paramName: "cus",
		delimiter: ",",
		onSearchStart: function (query) {			
			$("#mytable td").remove();
		},
	   transformResult: function(response) {
		  var suggesti= $.map($.parseJSON(response), function(item) {			
		      return { value:[ item.cid,item.cname,item.caddress,item.owname,item.ccno1], data: item.cid };
		   })		 
			    var customers =suggesti;
			    var tabl = $("#mytable"),
			      columns, i;
			    
			    if (!$.trim(customers)){
					document.getElementById("div2").innerHTML="<div class='alert alert-danger'>No Maches Found!!</div>"
				}else{
					document.getElementById("div2").innerHTML=""
			    
			  for (i = 0; i < customers.length; i++) {				  
			   var userd=customers[i]["value"][0];
			    tabl.append(
			      '<tr>' + 
			          '<td>' + customers[i]["value"][0] + '</td>' + 
			          '<td>' + customers[i]["value"][1] + '</td>' +
			          '<td>' + customers[i]["value"][2] + '</td>' +
			          '<td>' + customers[i]["value"][3] + '</td>' +
			          '<td>' + customers[i]["value"][4] + '</td>' +
			          

			        '<td>'+'<form action="editcustomer">'+'<input type="text" hidden="true" value="'+ customers[i]["value"][0]+'" name="id"/>'+
						'<input type="submit" class="" value="Edit" />'+
						'</form>'+'</td>'+
					'<td>'+'<form action="viewcustomer">'+'<input type="text" hidden="true" value="'+ customers[i]["value"][0]+'" name="id"/>'+
						'<input type="submit" class="" value="View" />'+
						'</form>'+'</td>'+
			      '</tr>'
			    );
			  }	}   		   
		   return suggestions;
           }           
	 });
 }); 
 </script>
 <div id="div2"></div>
 
 <div class="panel-body">	
 <div id="div1" style=" text-align: left">
						<table id="mytable" class="table input-sm">
						<thead valign="top">
						<tr >
								<th class="col-xs-1">Customer ID</th>
								<th class="col-xs-1">Customer Name</th>
								<th class="col-xs-1">Address</th>
								<th class="col-xs-1">Owner Name</th>
								<th class="col-xs-1">Contact No:</th>
								<th class="col-xs-1">Edit Customer</th>	
								<th class="col-xs-1">View Customer</th>					
							</tr>
							</thead>	
					<c:forEach var="customer" items="${customers}">
						<tr>
						<td>${customer.cid}</td>
						<td>${customer.cname}</td>
						<td>${customer.caddress}</td>
						<td>${customer.owname}</td>
						<td>${customer.ccno1}</td>
						<td><form action="editcustomer"><input type="text" hidden="true" value="${customer.cid}" name="id"/>
						<input type="submit" class="" value="Edit" /></form></td>
						<td><form action="viewcustomer"><input type="text" hidden="true" value="${customer.cid}" name="id"/>
						<input type="submit" class="" value="View" /></form></td>
						</tr>
					</c:forEach> 		
							
										
						</table>											
					</div>
			</div>				
	</tiles:putAttribute>
	</tiles:insertDefinition>

<script src="<c:url value="/resources/core/jquery.autocomplete.min.js" />"></script>
</body>
</html>