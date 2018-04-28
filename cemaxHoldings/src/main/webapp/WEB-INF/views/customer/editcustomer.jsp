 	<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">


<title>Edit Coustomer</title>
</head>
<body>
 <tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
	<br>
<c:if test="${param.addsuccess eq true}">
		<div class="alert alert-success">Customer Updated Successfully!
		</div>
		</c:if>

	<form:form class="input-sm"  action="/cemaxHoldings/editcustomerpro" modelAttribute="customer">
		<div class="col-md-12" style="align: center">
		<div class="panel panel-group">
			<div class="panel panel-primary">
			<div class="panel-heading">Edit Customer</div>
			<div class="panel-body">
			<div class="col-md-6">
				
 				 <form:checkbox path="active" ></form:checkbox> Active

			</div>
			<div class="col-md-6">
				<label style="float: left">Customer ID:</label>
				<form:input class="form-control input-sm" type="text" path="cid"></form:input>
			</div>
			<div class="col-md-6">
				<label style="float: left">Customer Name:</label>
				<form:input class="form-control input-sm" type="text" path="cname"></form:input>
			</div>
			<div class="col-md-6">
				<label style="float: left">Address:</label>
				<form:input class="form-control input-sm" type="text" path="caddress"></form:input>
			</div>
			<div class="col-md-6">
				<label style="float: left">Contact No1:</label>
				<form:input class="form-control input-sm" type="text" path="ccno1"></form:input>
			</div>
			<div class="col-md-6">
				<label style="float: left">Contact No2:</label>
				<form:input class="form-control input-sm" type="text" path="ccno2"></form:input>
			</div>
			<div class="col-md-6">
				<label style="float: left">Area:</label>
				<form:input class="form-control input-sm" type="text" path="area"></form:input>
			</div>
			</div></div>
			
			<br>
			
			<div class="panel panel-primary">
			<div class="panel-heading">Owner Details</div>
			<div class="panel-body">
			<div class="col-md-6">
				<label style="float: left">Name:</label>
				<form:input class="form-control input-sm" type="text" path="owname"></form:input>
				<label style="float: left">Address:</label>
				<form:input class="form-control input-sm" type="text" path="owaddress"></form:input>
				<label style="float: left">Contact No:</label>
				<form:input class="form-control input-sm" type="text" path="owcno"></form:input>
			</div>	
				<br>
			<div class="col-md-12">	
			<br>
				<button type="Submit" class="btn btn-primary pull-center">Update</button>
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
