<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">

<title>Daily Inventry</title>
</head>
<body >

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

	 <tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">


	<form class="input-sm">
		<div class="col-md-12" >
			<div class="panel panel-group">

				</div>
				
				
				<div class="panel panel-group">
				<div class="panel panel-primary">
					<div class="panel-heading">Inventry Details</div>
					<div class="panel-body">
						
						<div class="table-responsive">
					<table class="table table-hover">
						<tr>
							<th>Quantity</th>
							<th>Description</th>
							<th>Unit Price(BUY)</th>
							<th>Margin</th>
							<th>Amount</th>
						</tr>
						<tr> 
							<td><input type="text" class="form-control input-sm" id="qun1"/></td>
							<td>UltraTech (OPC) Cement 50Kg</td>
							<td><input type="text" class="form-control input-sm" id="unip1"></td>
							<td><input type="text" class="form-control input-sm" id="mar1"></td>
							<td><input type="text" class="form-control input-sm" id="amoun1"></td>
						</tr>
						<tr>
							<td><input type="text" class="form-control input-sm" id="qun2"></td>
							<td>UltraTech (PPC) Cement 50Kg</td>
							<td><input type="text" class="form-control input-sm" id="unip2"></td>
							<td><input type="text" class="form-control input-sm" id="mar1"></td>
							<td><input type="text" class="form-control input-sm" id="amoun2"></td>
						</tr>

						<tr>
						
							<td></td>
							<td>Transport Chargers</td>
							<td></td>
							<td><input type="hidden" class="form-control input-sm" id="unip3"></td>
							<td><input type="text" class="form-control input-sm" id="amoun3"></td>
						</tr>
						<tr>
							<td colspan="2"></td>
							<td></td>
							<td><button type="button" id="btntot" class="btn btn-success" style="float: right; width: 100%" onclick="total()">Total</button></td>
							<td><input type="text" class="form-control input-sm" id="totl"></td>
						</tr>
					</table>
						
				</div>
				<input type="submit" class="btn btn-primary col-xs-3" value="save" />
			
				</div></div></div></div>
				</form>
		</tiles:putAttribute>
		</tiles:insertDefinition>		
				
</body>
<script>
function total(){
	var qunt1=document.getElementById('qun1').value;
	var unitp1=document.getElementById('unip1').value;
	var amount1=document.getElementById('amoun1').value= qunt1*unitp1;
	var qunt2=document.getElementById('qun2').value;
	var unitp2=document.getElementById('unip2').value;
	var amount2=document.getElementById('amoun2').value=qunt2*unitp2;
	var amount3=document.getElementById('amoun3').value*1;
	var amm=amount1+amount2;
	var total=document.getElementById('totl').value=amm+amount3;
	//qunt1*unitp1=amount1;
}
</script>
<script src="<c:url value="/resources/js/nav_bar_span.js" />"></script> 
</html>