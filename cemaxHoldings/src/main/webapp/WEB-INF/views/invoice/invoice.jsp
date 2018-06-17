<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page import="java.text.SimpleDateFormat" import="java.util.Date"%>
 <script src="<c:url value="/resources/core/jquery.autocomplete.min.js" />"></script>
<title>Invoice</title>
</head>
<body >
<%
	SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
	SimpleDateFormat ti = new SimpleDateFormat("HH:mm:ss");

%>
<c:set var="today1" value="<%=sdf1.format(new Date())%>" />
<c:set var="now" value="<%=ti.format(new Date())%>" />
	 <tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
	
	<c:if test="${param.success eq true}">
		<div class="alert alert-success">Invoice added Successfully!
		</div>
		</c:if>
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



	<form:form class="form:input-sm" action="addinvoicepro" method="post">
		<div class="col-md-12" style="align: center">
			<div class="panel panel-group">
				<div class="panel panel-primary">
					<div class="panel-heading">Customer Details</div>
					<div class="panel-body">
					
					<form:hidden path="date" value="${today1}"></form:hidden>
					<form:hidden path="time" value="${now}"></form:hidden>
				<div class="col-md-6">
						<label>Invoice No:</label>
						<form:input type="text" class="form-control input-sm" name="invid" path="invid" ></form:input>
				</div>
				<div class="col-md-6">
						<label>Duration:</label>
						<form:input type="text" class="form-control input-sm" name="invid" path="duration" ></form:input>
				</div>
				<div class="col-md-6">
						<label>Customer Id:</label>
						<form:input type="text" class="form-control input-sm" id="cusid" name="cusid" path="cusid" readonly="true"></form:input>
						<button type="button" class="btn btn-success" data-toggle="modal" data-target="#cusSearchModal">Get Customer</button>
				</div>
				<br> 
				<div class="col-md-6">
						<label>Delivery Note No:</label> 
						<form:input type="text" name="delnoteno" class="form-control form:input-sm" id="delnoteno" path="delnoteno"></form:input>
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
							<th>Remain</th>
							<th>Quantity</th>
							<th>Description</th>
							<th>Unit Price</th>
							<th>Amount</th>
						</tr>
						<tr>
							<td><form:input id="opcremainL" class="form-control" path="opcremain" value="${inventry.opcremain}" readonly="true"></form:input> <input type="text" hidden="true" id="opcremain" value="${inventry.opcremain}"/></td> 
							<td><form:input type="text" class="form-control input-sm" id="opcquan" path="opcqun" onkeyup="opcrem(this,document.getElementById('opcremain'))"></form:input></td>
							<td>UltraTech (OPC) Cement 50Kg</td>
							<td><form:input type="text" class="form-control input-sm" id="unip1" path="opcup" value="${inventry.opcprice+inventry.opcmargin}"></form:input></td>
							<td><input type="text" class="form-control input-sm" id="amoun1"></input></td>
						</tr>
						<tr>
							<td><form:input id="ppcremainL" class="form-control" path="ppcremain" value="${inventry.ppcremain}" readonly="true"></form:input> <input type="text" hidden="true" id="ppcremain" value="${inventry.ppcremain}"/></td>
							<td><form:input type="text" class="form-control input-sm" id="ppcquan" path="ppcqun" onkeyup="ppcrem(this,document.getElementById('ppcremain'))"></form:input></td>
							<td>UltraTech (PPC) Cement 50Kg</td>
							<td><form:input type="text" class="form-control input-sm" id="unip2" path="ppcup" value="${inventry.ppcprice+inventry.ppcmargin}"></form:input></td>
							<td><input type="text" class="form-control input-sm" id="amoun2"></input></td>
						</tr>

						<tr>
						
							<td colspan="2"></td>
							<td>Transport Chargers</td>
							<td><input type="hidden" class="form-control input-sm" id="unip3"/></td>
							<td><form:input type="text" class="form-control input-sm" id="amoun3" path="transport"></form:input></td>
						</tr>
						<tr>
							<td colspan="3"></td>
							<td><button type="button" id="btntot" class="btn btn-success" style="float: right; width: 100%" onclick="total()">Total</button></td>
							<td><input type="text" class="form-control input-sm" id="totl"/></td>
						</tr>
					</table>
						
				</div>
				<input type="submit" class="btn btn-primary col-xs-3" id="btnsave" value="save" />
			
				</div></div></div></div>
				</form:form>
		</tiles:putAttribute>
		</tiles:insertDefinition>		
				
</body>

<!-- <script>
 $('#delnoteModal').on('click', '.btn-success', function(){
	alert("asasa");
    var value = $('#mq1').val();
    $('#q1').val(value);
    $('#delnoteModal').modal('hide');
});
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
	</script> -->
	<script>
	/* $('#btntot').click(function(){
		alert("asasasa");
	}); */
	var btntot=document.getElementById("btntot");
	var btnsave=document.getElementById("btnsave");
	function opcrem(qun,rem){
		var quentity=qun.value;
		var remain=rem.value;
		var rem=remain-quentity;
		if(rem>=0){
			document.getElementById("opcremainL").value=rem;
				
			if( "Out of Stock!".localeCompare(document.getElementById("ppcremainL").value)!=0){
			btntot.disabled=false;
			btnsave.disabled=false;
			}
		}else{
		document.getElementById("opcremainL").value="Out of Stock!"
			btntot.disabled=true;
			btnsave.disabled=true;
		}
	}
	function ppcrem(qun2,rem2){
		var quentity=qun2.value;
		var remain=rem2.value;
		var rem2=remain-quentity;
		if(rem2>=0){
			document.getElementById("ppcremainL").value=rem2;
			if( "Out of Stock!".localeCompare(document.getElementById("opcremainL").value)!=0 ){
				btntot.disabled=false;
				btnsave.disabled=false;
				}
		}else{
			document.getElementById("ppcremainL").value="Out of Stock!";
			btntot.disabled=true;
			btnsave.disabled=true;
		}
	}
</script>
<script>
function total(){
	
	var qunt1=document.getElementById('opcquan').value;
	var unitp1=document.getElementById('unip1').value;
	var amount1= document.getElementById('amoun1').value=qunt1*unitp1;
	var qunt2=document.getElementById('ppcquan').value;
	var unitp2=document.getElementById('unip2').value;	
	var amount2=document.getElementById('amoun2').value=qunt2*unitp2;
	var amount3=document.getElementById('amoun3').value*1;
	
	var total=document.getElementById('totl').value=amount1+amount2+amount3;
	//qunt1*unitp1=amount1;
}
</script>




</html>