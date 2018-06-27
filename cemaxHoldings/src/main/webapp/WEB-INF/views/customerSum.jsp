 	<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

 <tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">


<div class="col-md-12" style="align: center">
			<div class="panel panel-primary">
				<div class="panel-heading">Invioces</div>
				<div class="col-md-5">
				
					<br>
				 </div>


				<br>

				<!-- Table start -->

	<div class="col-md-4">
			<label>Customer Id</label> <input type="text" name="cusname"
				class="form-control input-sm" id="cusname" value="${cusid}" readonly="true" />
		</div>
		<div class="col-md-6">
			<label>Customer Name</label> <input type="text" name="cusname"
				class="form-control input-sm" id="cusname" value="${cname}" readonly="true" />
		</div>
<div class="col-md-12"><br></div>
	<table class="table table-bordered">
		<tr bgcolor="success">

			<th>Invoice Number</th>
			<th>Issued Date</th>
			<th>Remaining Days</th>
			<th>Value</th>
			<th>Remain</th>
			
		</tr>
					<c:forEach var="invoice" items="${invoices}">

						<c:set var="summ" value="${summ+invoice.paid_amount+invoice.remain_amount}"></c:set>
						<c:set var="remainsumm" value="${remainsumm+invoice.remain_amount}"></c:set>
						<tr>
							<td>${invoice.invid}</td>
							<td>${invoice.date}</td>
							<td>${invoice.remaindays}</td>
							<td>${invoice.paid_amount+invoice.remain_amount}</td>
							<td>${invoice.remain_amount}</td>
						</tr>
					</c:forEach>
					<tr>
								<td colspan="2"></td>
								<td class="success">Total Amount</td>
								<td>${summ}</td>
								<td>${remainsumm}</td>
								</tr>

	</table>
		<form action="deducepro" method="post">
		<input type="hidden" name="cusid" value="${cusid}">	
	<div class="row">
		<div class="col-md-6 pull-right">
			<label>Debited Amount</label>
			<input type="text" name="debamount" class="form-control input-sm" id="debamount" />
		</div>
	</div>
	<div class="row">
		<div class="col-md-6 pull-right">
		 	<label>Date of payment</label>
			<input type="date" name="cusname" class="form-control input-sm" id="paydate" />
		</div>
	</div>
	<br>

	<div class="row">
		<div class="col-md-6 col-md-push-6">

			<input type="submit" id="btndeduce" class="btn btn-success col-md-4"value="Send"/>
		</div>
	</div>
	</form>
		<div class="row"><br></div>
</div>
</div>

	
	
<%--  <!-- Modal -->
	<div id="authModal" class="modal fade" role="dialog" >
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<%@include file="debitauth.jsp"%>
				</div>
			</div>
		</div>
	</div>
	<!-- <End modal> --> 
	 --%>
	</tiles:putAttribute>
	</tiles:insertDefinition>