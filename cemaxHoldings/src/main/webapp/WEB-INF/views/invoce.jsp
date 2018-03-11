<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Invoice</title>
</head>
<body style="width:80%">

<form>
<div class="panel panel-default" style="width:60%">
			<div class="panel-heading">Company Details</div>
			<div class="panel-body">
<label>Customer Name:</label>
<input type="text" class="form-control input-sm" name="cname"/>
<br>
<label>Customer Address:</label>
<input type="text" class="form-control input-sm" name="caddress"/>
<br>
<label>Delivery Note No:</label>
<input type="text" name="delnote" class="form-control input-sm" id="delnote"/>
</div></div>
<div class="panel panel-default">
			<div class="panel-body">
<br>
<div class="table-responsive">
<table class="table table-striped">
<tr>
	<th>Quantity</th>
	<th>Description</th>
	<th>Unit Price</th>
	<th>Amount</th>
</tr>
<tr>
	<td><input type="text" class="form-control input-sm" id="q1"></td>
	<td>UltraTech (OPC) Cement 50Kg</td>
	<td><input type="text" class="form-control input-sm" id="up1"></td>
	<td><input type="text" class="form-control input-sm" id="am1"></td>
</tr>
<tr>
	<td><input type="text" class="form-control input-sm" id="q2"></td>
	<td>UltraTech (PPC) Cement 50Kg</td>
	<td><input type="text" class="form-control input-sm" id="up2"></td>
	<td><input type="text" class="form-control input-sm" id="am2"></td>
</tr>

<tr>
	<td></td>
	<td>Transport Chargers</td>
	<td><input type="text" class="form-control input-sm" id="up3"></td>
	<td><input type="text" class="form-control input-sm" id="am3"></td>
</tr>
<tr>
	<td colspan="2"></td>
	<td><button type="button" id="btntot" class="btn btn-success" style="float:right;width:100%">Total</button></td>
	<td><input type="text" class="form-control input-sm" id="tot"></td>
</tr>
</table>
</div></div></div>
</form>
</body>
</html>