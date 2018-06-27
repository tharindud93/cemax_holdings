 	<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="initial-scale=1, maximum-scale=1">


<title>All Invoices</title>
</head>

<!-- Modal -->
	<div id="invModal" class="modal fade" role="dialog">
		<div class="modal-dialog" style="width:80%">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<%@include file="viewinvoice.jsp"%>
				</div>
			</div>
		</div>
	</div>
	<!-- <End modal> -->

 <tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
	
	<script>	
$(document).ready(function() {
 //   $( "#ajaxsearch" ).datepicker();
	$('#ajaxsearch').autocomplete({		
		serviceUrl: '${pageContext.request.contextPath}/getInvoices',
		paramName: "invid",
		delimiter: ",",
		onSearchStart: function (query) {			
			$("#mytable td").remove();
		},
	   transformResult: function(response) {
		  var suggesti= $.map($.parseJSON(response), function(item) {			
		      return { value:[ item.date,item.invid,item.cusid,item.opcqun,item.opcup,item.ppcqun,item.ppcup,item.duration,item.remaindays], data: item.invid };
		   })		 
			    var invoices =suggesti;
			    var tabl = $("#mytable"),
			      columns, i;
			    
			    if (!$.trim(invoices)){
					document.getElementById("div2").innerHTML="<div class='alert alert-danger'>No Maches Found!!</div>"
				}else{
					document.getElementById("div2").innerHTML=""
					
				/* 	var color="";
					switch (invoices[i]["value"][7]){
					case <14:
						color="primary";
					break;
					case <7:
						color="warning";
					break;
					case <0:
						color="danger";
					break;
					default:
						color="primary";
					
					} */
			    
			  for (i = 0; i < invoices.length; i++) {				  
			 //  var userd=invoices[i]["value"][1];
			    tabl.append(
			      '<tr>' + 
			          '<td>' + invoices[i]["value"][0] + '</td>' + 
			          '<td>' + invoices[i]["value"][1] + '</td>' +
			          '<td>' + invoices[i]["value"][2] + '</td>' +
			          '<td>' + (invoices[i]["value"][3]*invoices[i]["value"][4]+invoices[i]["value"][5]*invoices[i]["value"][6]) + '</td>' +
			          '<td>' + invoices[i]["value"][7] + '</td>' +
			          '<td>' + invoices[i]["value"][8] + '</td>' +
					'<td>'+'<form action="viewinv">'+'<input type="text" hidden="true" value="'+ invoices[i]["value"][1]+'" name="id"/>'+
						'<input type="submit" class="" value="View" />'+
						'</form>'+'</td>'+
			      '</tr>'
			    );
			  }	}   		   
		   return suggesti;
           }           
	 });
 }); 
 </script>
	
	<div class="col-md-12" style="align: center">
			<div class="panel panel-primary">
				<div class="panel-heading">All Invioces</div>
				<div class="col-md-5">
				
				 <br>
				 <div class="col-md-04">
  						<input type="text" class="form-control" id="ajaxsearch" placeholder="Search Invoice here....">
  						<!--<span class="input-group-btn">
    					<button class="btn btn-primary" style="height:34px" type="submit">
        					 <i class="glyphicon glyphicon-search"></i> 
   							 </button>
  							</span>-->
					</div>
					<br>
				 </div>


				<br>

				<!-- Table start -->

 <div id="div2"></div>
				<table id="mytable" class="table input-sm">
					<thead>
						<tr>
							<th scope="col">Date</th>
							<th scope="col">Invoice No</th>
							<th scope="col">Customer Id</th>
							<th scope="col">Customer name</th> 
							<th scope="col">Value</th>
							<th scope="col">Given Duration</th>
							<th scope="col">Remain days</th>
							<th scope="col">Action</th>

						</tr>
					</thead>

					<c:forEach var="invoice" items="${invoices}">
 					
 					<c:if test="${invoice.remaindays<=14}">
						<c:set var="colours" value="primary"></c:set>
					</c:if>
					<c:if test="${invoice.remaindays<7}">
						<c:set var="colours" value="warning"></c:set>
					</c:if>
					<c:if test="${invoice.remaindays<0}">
						<c:set var="colours" value="danger"></c:set>
					</c:if> 
					
					
						<tr class="${colours }">
						 <td>${invoice.date}</td> 
						<td>${invoice.invid}</td>
						<td>${invoice.cusid}</td>
					 	<td>${invoice.cname}</td> 
						<td>${invoice.opcqun*invoice.opcup+invoice.ppcqun*invoice.ppcup}</td>
						<td>${invoice.duration}</td>
						<td>${invoice.remaindays}</td> 
						<td><form action="viewinv"><input type="text" hidden="true" value="${invoice.invid}" name="id"/>
						<input type="submit" class="" value="View" /></form></td>
						</tr>
					</c:forEach> 
					
			</table>

</div>
</div>

	<!-- Table End -->
	
</tiles:putAttribute>
</tiles:insertDefinition>

<script src="<c:url value="/resources/core/jquery.autocomplete.min.js" />"></script>
</html>