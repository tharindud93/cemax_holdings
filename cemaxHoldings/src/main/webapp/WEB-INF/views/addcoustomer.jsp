
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>addCoustomer</title>
</head>
<body bgcolor="red">

	<form:form class="input-sm">
		<div class="col-md-8" style="align: center">
		<div class="panel panel-group">
			<div class="panel panel-default">
			<div class="panel-heading" style="height:25px">Company Details</div>
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
			<div class="panel panel-default">
			<div class="panel-heading" style="height:25px">Owner Details</div>
			<div class="panel-body">
				<label style="float: left">Name:</label>
				<form:input class="form-control input-sm" type="text" path="owname"></form:input>
				<label style="float: left">Address:</label>
				<form:input class="form-control input-sm" type="text" path="owaddress"></form:input>
				<label style="float: left">Contact No:</label>
				<form:input class="form-control input-sm" type="text" path="owcno"></form:input>
			</div>
				
				<button type="Submit" class="btn btn-info">Submit</button>
			</div>
			</div></div>
	</form:form>

</body>