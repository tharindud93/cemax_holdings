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
<body bgcolor="red">
 <tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">


	<form:form class="input-sm">
		<div class="col-md-8" style="align: center">
		<div class="panel panel-group">
			<div class="panel panel-primary">
			<div class="panel-heading">Register New Customer</div>
			<div class="panel-body">
				<label style="float: left">Customer ID:</label>
				<form:input class="form-control input-sm" type="text" path="cid"></form:input>
				<label style="float: left">Customer Name:</label>
				<form:input class="form-control input-sm" type="text" path="cname"></form:input>
				<label style="float: left">Address:</label>
				<form:input class="form-control input-sm" type="text" path="caddress"></form:input>
				<label style="float: left">Contact No1:</label>
				<form:input class="form-control input-sm" type="text" path="ccno1"></form:input>
				<label style="float: left">Contact No2:</label>
				<form:input class="form-control input-sm" type="text" path="ccno2"></form:input>
				<label style="float: left">Area:</label>
				<form:input class="form-control input-sm" type="text" path="area"></form:input>
			</div></div>
			
			<br>
			
			<div class="panel panel-primary">
			<div class="panel-heading">Owner Details</div>
			<div class="panel-body">
				<label style="float: left">Name:</label>
				<form:input class="form-control input-sm" type="text" path="owname"></form:input>
				<label style="float: left">Address:</label>
				<form:input class="form-control input-sm" type="text" path="owaddress"></form:input>
				<label style="float: left">Contact No:</label>
				<form:input class="form-control input-sm" type="text" path="owcno"></form:input>
				<br>
				<button type="Submit" class="btn btn-primary pull-right">Submit</button>
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
