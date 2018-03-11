
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>adduser</title>
</head>
<body bgcolor="red">

<form:form class="input-sm">
<div class="col-md-8" style="align:center">
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
<button type="Submit" class="btn btn-info">Submit</button>
</div>
</form:form>






</body>