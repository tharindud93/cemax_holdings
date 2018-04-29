<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
<head>
<link rel='stylesheet' href='webjars/bootstrap/3.2.0/css/bootstrap.min.css'>
<title>adduser</title>
</head>
 <tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">


<form:form class="input-sm" action="/cemaxHoldings/edituserpro" method="POST" modelAttribute="user">
<div class="col-md-12" style="align:center">
<div class="panel panel-group">
			<div class="panel panel-primary">
			<div class="panel-heading">Update User</div>
			<div class="panel-body">
<label style="float: left">User ID:</label>
<form:input class="form-control input-sm" type="text" path="userid" readonly="true"></form:input>
<label style="float: left">User Name:</label>
<form:input class="form-control input-sm" type="text" path="username"></form:input>
<label style="float: left">NIC No:</label>
<form:input class="form-control input-sm" type="text" path="nic" readonly="true"></form:input>
<label style="float: left">Contact No:</label>
<form:input class="form-control input-sm" type="text" path="cno"></form:input>
<label style="float: left">Address:</label>
<form:input class="form-control input-sm" type="text" path="address"></form:input>
<label style="float: left">Password:</label>
<form:input class="form-control input-sm" type="password" path="pass"></form:input>
<label style="float: left">Re-Enter Password:</label>
<form:input class="form-control input-sm" type="password" path="repass"></form:input>
<br>
<button type="Submit" class="btn btn-primary pull-right">Submit</button>
</div>
</div>
</div>
</div>
</form:form>


</tiles:putAttribute>
</tiles:insertDefinition>


</body>