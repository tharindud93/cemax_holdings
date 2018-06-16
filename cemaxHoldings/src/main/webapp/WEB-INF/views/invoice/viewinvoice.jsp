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
	SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
	SimpleDateFormat ti = new SimpleDateFormat("HH:mm:ss");

%>
<c:set var="today1" value="<%=sdf1.format(new Date())%>" />
<c:set var="now" value="<%=ti.format(new Date())%>" />
	 <tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute  name="body">
	<form:form class="form:input-sm" action="addinvoicepro" method="post">
		<div class="col-md-12" style="align: center">
			<div class="panel panel-group">
				<div class="panel panel-primary">
					<div class="panel-heading">Customer Details</div>
					<div class="panel-body">
				<div class="col-md-6">
						<label>Date Issued:</label>
						<form:input type="text" class="form-control input-sm" name="invid" path="date" ></form:input>
				</div>	
				<div class="col-md-6">
						<label>Issued Time</label>
						<form:input type="text" class="form-control input-sm" name="invid" path="time" ></form:input>
				</div>
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
						<form:input type="text" class="form-control input-sm" id="cusid" name="cusid" path="cusid" ></form:input>
						
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
							<th>Quantity</th>
							<th>Description</th>
							<th>Unit Price</th>
							<th>Amount</th>
						</tr>
						<tr> 
							<td><form:input type="text" class="form-control input-sm" id="qun1" path="opcqun" ></form:input></td>
							<td>UltraTech (OPC) Cement 50Kg</td>
							<td><form:input type="text" class="form-control input-sm" id="unip1" path="opcup"></form:input></td>
							<td><input type="text" class="form-control input-sm" id="amoun1" value="${command.opcup*command.opcqun }"></input></td>
						</tr>
						<tr>
							<td><form:input type="text" class="form-control input-sm" id="qun2" path="ppcqun"></form:input></td>
							<td>UltraTech (PPC) Cement 50Kg</td>
							<td><form:input type="text" class="form-control input-sm" id="unip2" path="ppcup"></form:input></td>
							<td><input type="text" class="form-control input-sm" id="amoun2" value="${command.opcup*command.opcqun }"></input></td>
						</tr>

						<tr>
						
							<td></td>
							<td>Transport Chargers</td>
							<td><input type="hidden" class="form-control input-sm" id="unip3"/></td>
							<td><form:input type="text" class="form-control input-sm" id="amoun3" path="transport"></form:input></td>
						</tr>
						<tr>
							<td colspan="2"></td>
							<td></td>
							<td><input type="text" class="form-control input-sm" id="totl" value="${command.opcup*command.opcqun+command.opcup*command.opcqun+command.transport}"/></td>
						</tr>
					</table>
						
				</div>	
				</div>
		</div>
		</div>
		</div>
		</form:form>
		</tiles:putAttribute>
		</tiles:insertDefinition>		