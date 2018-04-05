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


<form:form class="input-sm">
<div class="col-md-8" style="align:center">
<div class="panel panel-group">
			<div class="panel panel-primary">
			<div class="panel-heading">Register New User</div>
			<div class="panel-body">
<label style="float: left">User ID:</label>
<form:input class="form-control input-sm" type="text" path="userid"></form:input>
<label style="float: left">User Name:</label>
<form:input class="form-control input-sm" type="text" path="username"></form:input>
<label style="float: left">NIC No:</label>
<form:input class="form-control input-sm" type="text" path="nic"></form:input>
<label style="float: left">Contact No:</label>
<form:input class="form-control input-sm" type="text" path="cno"></form:input>
<label style="float: left">Address:</label>
<form:input class="form-control input-sm" type="text" path="address"></form:input>
<label style="float: left">Password:</label>
<form:input class="form-control input-sm" type="text" path="pass"></form:input>
<label style="float: left">Re-Enter Password:</label>
<form:input class="form-control input-sm" type="text" path="repass"></form:input>
<br>
<button type="Submit" class="btn btn-primary pull-right">Submit</button>
</div>
</div>
</div>
</div>
</form:form>


</tiles:putAttribute>
</tiles:insertDefinition>

<script src="<c:url value="/resources/js/nav_bar_span.js" />"></script> 

</body>