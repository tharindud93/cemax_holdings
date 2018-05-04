<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

 <script src="<c:url value="/resources/core/jquery.autocomplete.min.js" />"></script>
<title>Invoice</title>
</head>
<body >
	 <tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
<%-- 	<!-- Modal -->
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
<!-- <end Modal> --> --%>
	<!-- Modal2 -->
	<div id="cusSearchModal" class="modal fade" role="dialog">
		<div class="modal-dialog" style="width:80%">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Search Customer</h4>
				</div>
				<div class="modal-body">
					<%@include file="SerCustomerModal.jsp"%>
				</div>
			</div>
		</div>
	</div>
<!-- <end Modal2> -->



	<form:form class="form:input-sm">
		<div class="col-md-12" style="align: center">
			<div class="panel panel-group">
				<div class="panel panel-primary">
					<div class="panel-heading">Customer Details</div>
					<div class="panel-body">
				<div class="col-md-6">
						<label>Invoice No:</label>
						 <form:input type="text" class="form-control input-sm" name="invid" path="invid" />
						 
						  </div>
				<div class="col-md-6">
						<label>Customer Name:</label>
						 <form:input type="text" class="form-control input-sm" id="cusid" name="cusid" path="cusid" />
						 <button type="button" class="btn btn-success" data-toggle="modal"
							data-target="#cusSearchModal">Get Customer</button>
						  </div><br> 
						  <div class="col-md-6">
						  <label>Delivery Note No:</label> 
						  <form:input type="text" name="delnoteno" class="form-control form:input-sm" id="delnoteno" path="delnoteno"/>
							</div>
						<!-- 	<br>
						<button type="button" class="btn btn-success" data-toggle="modal"
							data-target="#delnoteModal">Add</button> -->
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
							<td><form:input type="text" class="form-control input-sm" id="qun1" path="opcqun" ></form:input></td>
							<td>UltraTech (OPC) Cement 50Kg</td>
							<td><form:input type="text" class="form-control input-sm" id="unip1" path="opcup" value="${inventry.opcmargin}"></form:input></td>
							<td><input type="text" class="form-control input-sm" id="amoun1"></input></td>
						</tr>
						<tr>
							<td><form:input type="text" class="form-control input-sm" id="qun2" path="ppcqun"></form:input></td>
							<td>UltraTech (PPC) Cement 50Kg</td>
							<td><form:input type="text" class="form-control input-sm" id="unip2" path="ppcup" value="${inventry.ppcmargin}"></form:input></td>
							<td><input type="text" class="form-control input-sm" id="amoun2"></input></td>
						</tr>

						<tr>
						
							<td></td>
							<td>Transport Chargers</td>
							<td><input type="hidden" class="form-control input-sm" id="unip3"/></td>
							<td><form:input type="text" class="form-control input-sm" id="amoun3" path="transport"></form:input></td>
						</tr>
						<tr>
							<td colspan="2"></td>
							<td><button type="button" id="btntot" class="btn btn-success" style="float: right; width: 100%" onclick="total()">Total</button></td>
							<td><input type="text" class="form-control input-sm" id="totl"/></td>
						</tr>
					</table>
						
				</div>
				<input type="submit" class="btn btn-primary col-xs-3" value="save" />
			
				</div></div></div></div>
				</form:form>
		</tiles:putAttribute>
		</tiles:insertDefinition>		
				
</body>

<script>
/* $('#delnoteModal').on('click', '.btn-success', function(){
	alert("asasa");
    var value = $('#mq1').val();
    $('#q1').val(value);
    $('#delnoteModal').modal('hide');
}); */
$('#delnoteModal').on('hidden.bs.modal', function (e) {

    var quant1 = $('#mq1').val();
    $('#qun1').val(quant1);
    var quant2 = $('#mq2').val();
    $('#qun2').val(quant2);
    var unitp1 = $('#mup1').val();
    $('#unip1').val(unitp1);
    var unitp2 = $('#mup2').val();
    $('#unip2').val(unitp2);
    var totl1 = $('#mam1').val();
    $('#amoun1').val(totl1);
    var totl2 = $('#mam2').val();
    $('#amoun2').val(totl2);
    var delnoteno = $('#mdelnoteno').val();
    $('#delnoteno').val(delnoteno);
    });
	</script>
<script>
function total(){

	var amount1=document.getElementById('amoun1').value*1;
	var amount2=document.getElementById('amoun2').value*1;
	var amount3=document.getElementById('amoun3').value*1;
	var amm=amount1+amount2;
	var total=document.getElementById('totl').value=amm+amount3;
	//qunt1*unitp1=amount1;
}
</script>




</html>