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
	<div class="col-md-12" style="align: center">
			<div class="panel panel-primary">
				<div class="panel-heading">All Invioces</div>
				<div class="col-md-5">
				
				 <br>
				 <div class="input-group">
  						<input type="text" class="form-control" placeholder="Search here ( Ex:IN00123 )">
  						<span class="input-group-btn">
    					<button class="btn btn-primary" style="height:34px" type="submit">
        					<i class="glyphicon glyphicon-search"></i>
   							 </button>
  							</span>
					</div>
					<br>
				 </div>


				<br>

				<!-- Table start -->


				<table class="table table-bordered">
					<thead>
						<tr>
							<th scope="col">Date</th>
							<th scope="col">Invoice No</th>
							<th scope="col">Customer Id</th>
							<th scope="col">C. Name</th>
							<th scope="col">Value</th>
							<th scope="col">Remain(days)</th>
							<th scope="col">Action</th>

						</tr>
					</thead>

					<c:forEach var="invoice" items="${invoices}">
					<c:if test="${invoice.duration<14}">
						<c:set var="colours" value="primary"></c:set>
					</c:if>
					<c:if test="${invoice.duration<7}">
						<c:set var="colours" value="warning"></c:set>
					</c:if>
					<c:if test="${invoice.duration<0}">
						<c:set var="colours" value="danger"></c:set>
					</c:if>
					
					
						<tr class="${colours }">
						<td>${invoice.date}</td>
						<td>${invoice.invid}</td>
						<td>${invoice.cusid}</td>
						<td>${invoice.cusid}</td>
						<td>${invoice.opcqun*invoice.opcup+invoice.ppcqun*invoice.ppcup}</td>
						<td>${invoice.duration}</td>
						<td><form><input type="text" hidden="true" value="${invoice.invid}" name="id"/>
						<input type="submit" class="" value="Edit" /></form></td>
						</tr>
					</c:forEach> 
					
									</table>

</div>
</div>
		


		
	
	<!-- Table End -->
	
</tiles:putAttribute>
</tiles:insertDefinition>

</html>