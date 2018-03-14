<html>
 <link rel='stylesheet' href='webjars/bootstrap/3.2.0/css/bootstrap.min.css'>
<body>
<div class="col-md-7">
<label>Delivery Note No:</label>
<input type="text" name="delnote" class="form-control input-sm" id="delnote"/>
</div>
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
	<td><input type="text" class="form-control input-sm" id="up1"></td>
	<td><input type="text" class="form-control input-sm" id="am1"></td>
</tr>
<tr>
	<td><input type="text" class="form-control input-sm" id="q2"></td>
	<td>UltraTech (PPC) Cement 50Kg</td>
	<td><input type="text" class="form-control input-sm" id="up2"></td>
	<td><input type="text" class="form-control input-sm" id="am2"></td>
</tr>

</table>
<button type="button" id="btndelnote" class="btn btn-success">Save</button>
</body>
<script type="text/javascript" src="webjars/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript" src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</html>