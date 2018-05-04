<html>

<body>
<div class="col-md-7">
<label>Delivery Note No:</label>
<input type="text" name="delnote" class="form-control input-sm" id="mdelnoteno"/>
</div>
<table class="table table-hover">
<tr>
	<th>Quantity</th>
	<th>Description</th>
	<th>Unit Price</th>
	<th>Amount</th>
</tr>
<tr>
	<td><input type="text" class="form-control input-sm" id="mq1"></td>
	<td>UltraTech (OPC) Cement 50Kg</td>
	<td><input type="text" class="form-control input-sm" id="mup1" value="${inventry.opcmargin}"></td>
	<td><input type="text" class="form-control input-sm" id="mam1" onclick="tot1()"></td>
</tr>
<tr>
	<td><input type="text" class="form-control input-sm" id="mq2"></td>
	<td>UltraTech (PPC) Cement 50Kg</td>
	<td><input type="text" class="form-control input-sm" id="mup2" value="${inventry.ppcmargin}"></td>
	<td><input type="text" class="form-control input-sm" id="mam2" onclick="tot2()"></td>
</tr>

</table>
<button type="button" id="btndelnote" class="btn btn-success" onclick="val()">Save</button>
</body>
<script>
function tot1(){
	var qunt1=document.getElementById('mq1').value;
	var unitp1=document.getElementById('mup1').value;
	var amount1=document.getElementById('mam1').value= qunt1*unitp1;
}
</script>
<script>
function tot2(){
	var qunt2=document.getElementById('mq2').value;
	var unitp2=document.getElementById('mup2').value;
	var amount2=document.getElementById('mam2').value=qunt2*unitp2;
}
</script>
</html>