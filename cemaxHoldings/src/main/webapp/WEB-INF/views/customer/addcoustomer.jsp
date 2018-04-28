 	<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">


<title>addCoustomer</title>
</head>
<body>
 <tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
	<br>
		<c:if test="${param.addsuccess eq true}">
		<div class="alert alert-success">Customer is added Successfully!
		</div>
		</c:if>
		<c:if test="${param.cusexist eq true}">
		<div class="alert alert-danger">Customer Already exist!
		</div>
		</c:if>
		<c:if test="${param.error eq true}">
		<div class="alert alert-danger">Somthing went wrong!
		</div>
		</c:if>

	<form:form class="input-sm"  action="/cemaxHoldings/addcustomerpro" modelAttribute="customer">
		
		<div class="col-md-12" style="align: center">
		<div class="panel panel-group">
			<div class="panel panel-primary">
			<div class="panel-heading">Register New Customer</div>
			<div class="panel-body">
			
				
 				 <form:hidden path="active" value="true"></form:hidden>
				
			
			<div class="col-md-6">
				<label style="float: left">Customer ID:</label>
				<form:input class="form-control input-sm" type="text" path="cid" required="required" oninvalid="this.setCustomValidity('Id is required')"></form:input>
			</div>
			<div class="col-md-6">
				<label style="float: left">Customer Name:</label>
				<form:input class="form-control input-sm" type="text" path="cname" required="required"></form:input>
			</div>
			<div class="col-md-6">
				<label style="float: left">Address:</label>
				<form:input class="form-control input-sm" type="text" path="caddress" required="required"></form:input>
			</div>
			<div class="col-md-6">
				<label style="float: left">Contact No1:</label>
				<form:input class="form-control input-sm" type="number" path="ccno1" required="required"></form:input>
			</div>
			<div class="col-md-6">
				<label style="float: left">Contact No2:</label>
				<form:input class="form-control input-sm" type="number" path="ccno2"></form:input>
			</div>
			<div class="col-md-6">
				<label style="float: left">Area:</label>
				<form:input class="form-control input-sm" type="text" path="area" required="required"></form:input>
			</div>
			</div></div>
			
			<br>
			
			<div class="panel panel-primary">
			<div class="panel-heading">Owner Details</div>
			<div class="panel-body">
			<div class="col-md-6">
				<label style="float: left">Name:</label>
				<form:input class="form-control input-sm" type="text" path="owname" required="required"></form:input>
				<label style="float: left">Address:</label>
				<form:input class="form-control input-sm" type="text" path="owaddress"></form:input>
				<label style="float: left">Contact No:</label>
				<form:input class="form-control input-sm" type="text" path="owcno" required="required"></form:input>
			</div>	
				<br>
			<div class="col-md-12">	
			<br>
				<button type="Submit" class="btn btn-primary pull-center">Submit</button>
			</div>
			</div>
				<div class="row">
					
					<div class="continer-fluid">
					
					</div>
				</div>
				
				
			</div>
			</div></div>
	</form:form>
</tiles:putAttribute>
</tiles:insertDefinition>

</body>
