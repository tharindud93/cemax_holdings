<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page import="java.text.SimpleDateFormat" import="java.util.Date"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
<head  >


<title>View D-Inventry</title>
</head>
<body onload="total(),openNav(),startTime()">

 <% SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy"); %>
<c:set var="today" value="<%=sdf.format(new Date())%>" />
	<hr>
	


	 <tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">


	<form:form class="input-sm">
		<div class="col-md-12" >
			<div class="panel panel-group">

				</div>
				
				
				<div class="panel panel-group">
				<div class="panel panel-primary">
					<div class="panel-heading">Inventry Details</div>
					<div class="panel-body">
					<div class="col-md-6">
					<label  style="float:left">Inventry Id:</label>
						 <form:input class="form-control" path="id"></form:input>
						 </div>
					<div class="col-md-6"> 
					<label style="float:left">Date:</label>
						 <form:input class="form-control" path="date"></form:input>
						 </div> 
						 <hr> 
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
							<td><form:input type="text" class="form-control" id="qun1" path="opcquan" readonly="true"></form:input></td>
							<td>UltraTech (OPC) Cement 50Kg</td>
							<td><form:input type="text" class="form-control" id="unip1" path="opcprice" readonly="true"></form:input></td>
							<td><form:input type="text" class="form-control" id="mar1" path="opcmargin" readonly="true" ></form:input></td>
							<td><input type="text" class="form-control" id="amoun1"/></td>
						</tr>
						<tr>
							<td><form:input type="text" class="form-control" id="qun2" path="ppcquan" readonly="true"></form:input></td>
							<td>UltraTech (PPC) Cement 50Kg</td>
							<td><form:input type="text" class="form-control" id="unip2" path="ppcprice" readonly="true"></form:input></td>
							<td><form:input type="text" class="form-control" id="mar1" path="ppcmargin" readonly="true"></form:input></td>
							<td><input type="text" class="form-control" id="amoun2" /></td>
						</tr>

						<tr>
						
							<td></td>
							<td>Transport Chargers</td>
							<td></td>
							<td><input type="hidden" class="form-control" id="unip3" /></td>
							<td><form:input type="text" class="form-control" id="amoun3" path="transport" readonly="true"></form:input></td>
						</tr>
						<tr>
							<td></td><td>Total Amount</td>
							<td colspan="2"></td>
							<td><input type="text" class="form-control" id="totl" readonly="true"></td>
						</tr>
					</table>
						
				</div>
				
			
				</div></div></div></div>
				</form:form>
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

</html>