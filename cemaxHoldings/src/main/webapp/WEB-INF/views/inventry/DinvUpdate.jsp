<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page import="java.text.SimpleDateFormat" import="java.util.Date"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
<head>


<title>D-Inventry</title>
</head>
<body >

 <% SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy"); %>
<c:set var="today" value="<%=sdf.format(new Date())%>" />
	<hr>
	


	 <tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">


	<form:form class="input-sm" action="dinventrypro" method="POST">
		<div class="col-md-12" >
			<div class="panel panel-group">

				</div>
				
				
				<div class="panel panel-group">
				<div class="panel panel-primary">
					<div class="panel-heading">Inventry Details</div>
					<div class="panel-body">
						<%-- <form:input path="id"></form:input> --%>
						<form:hidden path="date" value="${today}"></form:hidden> 
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
							<td><form:input type="text" class="form-control input-sm" id="qun1" path="opcquan"></form:input></td>
							<td>UltraTech (OPC) Cement 50Kg</td>
							<td><form:input type="text" class="form-control input-sm" id="unip1" path="opcprice"></form:input></td>
							<td><form:input type="text" class="form-control input-sm" id="mar1" path="opcmargin"></form:input></td>
							<td><input type="text" class="form-control input-sm" id="amoun1"/></td>
						</tr>
						<tr>
							<td><form:input type="text" class="form-control input-sm" id="qun2" path="ppcquan"></form:input></td>
							<td>UltraTech (PPC) Cement 50Kg</td>
							<td><form:input type="text" class="form-control input-sm" id="unip2" path="ppcprice"></form:input></td>
							<td><form:input type="text" class="form-control input-sm" id="mar1" path="ppcmargin"></form:input></td>
							<td><input type="text" class="form-control input-sm" id="amoun2"/></td>
						</tr>

						<tr>
						
							<td></td>
							<td>Transport Chargers</td>
							<td></td>
							<td><input type="hidden" class="form-control input-sm" id="unip3"/></td>
							<td><form:input type="text" class="form-control input-sm" id="amoun3" path="transport"></form:input></td>
						</tr>
						<tr>
							<td colspan="2"></td>
							<td></td>
							<td><button type="button" id="btntot" class="btn btn-success" style="float: right; width: 100%" onclick="total()">Total</button></td>
							<td><input type="text" class="form-control input-sm" id="totl"></td>
						</tr>
					</table>
						
				</div>
				<input type="submit" class="btn btn-primary col-xs-3" value="save"/>
			
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
<script src="<c:url value="/resources/js/nav_bar_span.js" />"></script> 
</html>