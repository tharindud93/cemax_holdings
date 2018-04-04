<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<link rel='stylesheet'
	href='webjars/bootstrap/3.2.0/css/bootstrap.min.css'>
<title>Invoice</title>
</head>
<body style="width: 80%">

	<!-- Modal -->
	<div id="delnoteModal" class="modal fade" role="dialog">
		<div class="modal-dialog" style="width:80%">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Delivery Note</h4>
				</div>
				<div class="modal-body">
					<%@include file="delNote.jsp"%>
				</div>
			</div>
		</div>
	</div>
	<!-- <End modal> -->
	<hr>
	
	<!--  panel commented
	<form>
		<div class="panel panel-default col-md-7">
			<div class="panel-heading">Company Details</div>
			<div class="panel-body">
				<label>Customer Name:</label> <input type="text"
					class="form-control input-sm" name="cname" /> <br> <label>Customer
					Address:</label> <input type="text" class="form-control input-sm"
					name="caddress" /> <br> <label>Delivery Note No:</label> <input
					type="text" name="delnote" class="form-control input-sm"
					id="delnote" />
				<button type="button" class="btn" data-toggle="modal"
					data-target="#delnoteModal">Add</button>
			</div>
		</div>
		 <div class="panel panel-default col-md-5">
<div class="panel-body">
<p class="col-xs-5">asd;</p>
</div>
</div> 
		<div class="panel panel-primary">
			<div class="panel-body">
				<br>
				<div class="table-responsive">
					<table class="table table-hover">
						<tr>
							<th>Quantity</th>
							<th>Description</th>
							<th>Unit Price</th>
							<th>Amount</th>
						</tr>
						<tr>
							<td><input type="text" class="form-control input-sm" id="q1"></td>
							<td>UltraTech (OPC) Cement 50Kg</td>
							<td><input type="text" class="form-control input-sm"
								id="up1"></td>
							<td><input type="text" class="form-control input-sm"
								id="am1"></td>
						</tr>
						<tr>
							<td><input type="text" class="form-control input-sm" id="q2"></td>
							<td>UltraTech (PPC) Cement 50Kg</td>
							<td><input type="text" class="form-control input-sm"
								id="up2"></td>
							<td><input type="text" class="form-control input-sm"
								id="am2"></td>
						</tr>

						<tr>
							<td></td>
							<td>Transport Chargers</td>
							<td><input type="text" class="form-control input-sm"
								id="up3"></td>
							<td><input type="text" class="form-control input-sm"
								id="am3"></td>
						</tr>
						<tr>
							<td colspan="2"></td>
							<td><button type="button" id="btntot"
									class="btn btn-success" style="float: right; width: 100%">Total</button></td>
							<td><input type="text" class="form-control input-sm"
								id="tot"></td>
						</tr>
					</table>
				</div>
				<input type="submit" class="btn btn-primary col-xs-3" value="save" />
			</div>
		</div>
	</form>
	
	-->
	<div class="container">
	</div>
	<form:form class="input-sm">
		<div class="col-md-12" style="align: center">
			<div class="panel panel-group">
				<div class="panel panel-primary">
					<div class="panel-heading">Customer Details</div>
					<div class="panel-body">

						<label>Customer Name:</label> <input type="text"
							class="form-control input-sm" name="cname" /> <br> <label>Customer
							Address:</label> <input type="text" class="form-control input-sm"
							name="caddress" /> <br> <label>Delivery Note No:</label> <input
							type="text" name="delnote" class="form-control input-sm"
							id="delnote" />
							
							<br>
						<button type="button" class="btn btn-success" data-toggle="modal"
							data-target="#delnoteModal">Add</button>
					</div>
				</div>
				</div>
				
				
				<div class="panel panel-group">
				<div class="panel panel-primary">
					<div class="panel-heading">Invoice Details</div>
					<div class="panel-body">
						
						<div class="table-responsive">
					<table class="table table-hover">
						<tr>
							<th>Quantity</th>
							<th>Description</th>
							<th>Unit Price</th>
							<th>Amount</th>
						</tr>
						<tr>
							<td><input type="text" class="form-control input-sm" id="q1"></td>
							<td>UltraTech (OPC) Cement 50Kg</td>
							<td><input type="text" class="form-control input-sm"
								id="up1"></td>
							<td><input type="text" class="form-control input-sm"
								id="am1"></td>
						</tr>
						<tr>
							<td><input type="text" class="form-control input-sm" id="q2"></td>
							<td>UltraTech (PPC) Cement 50Kg</td>
							<td><input type="text" class="form-control input-sm"
								id="up2"></td>
							<td><input type="text" class="form-control input-sm"
								id="am2"></td>
						</tr>

						<tr>
							<td></td>
							<td>Transport Chargers</td>
							<td><input type="text" class="form-control input-sm"
								id="up3"></td>
							<td><input type="text" class="form-control input-sm"
								id="am3"></td>
						</tr>
						<tr>
							<td colspan="2"></td>
							<td><button type="button" id="btntot"
									class="btn btn-success" style="float: right; width: 100%">Total</button></td>
							<td><input type="text" class="form-control input-sm"
								id="tot"></td>
						</tr>
					</table>
					
					
				</div>
				<input type="submit" class="btn btn-primary col-xs-3" value="save" />
				
				
				
				
				
				
				</div>
				</form:form>
				
				


				<script type="text/javascript"
					src="webjars/jquery/2.1.1/jquery.min.js"></script>
				<script type="text/javascript"
					src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>