<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page import="java.text.SimpleDateFormat" import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="initial-scale=1, maximum-scale=1">


<title>Daily Summary</title>
</head>


 <tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
	<div class="col-md-12" style="align: center">
		<div class="panel panel-primary">
		<div class="panel-heading">Summary</div>
		<div class="panel-body">
		<div class=" col-md-5">
		<label>Total Units:</label>
		<input type="text" class="form-control" value="${inventry.opcquan+inventry.ppcquan}">
		</div>
		<div class=" col-md-5">
		<label>Total Cost(Rs):</label>
		<input type="text" class="form-control" value="${inventry.opcprice* inventry.opcquan+inventry.ppcquan*inventry.ppcprice}">
		<form action="viewinventry"><input type="text" hidden="true" value="${inventry.date}" name="date"/>
						<input type="submit" class="" value="View Inventry" /></form>
		</div>
		<div class=" col-md-5">
		<label>Total Profit(Rs):</label>
		<input type="text" class="form-control" value="">
		</div></div>
		</div>
		
			<div class="panel panel-primary">
				<div class="panel-heading">Distributes</div>
				<div class="col-md-5">
				
				 <br>

					<br>
				 </div>
				<br>

				<!-- Table start -->


				<table id="mytable" class="table input-sm">
					<thead>
						<tr>
							<th scope="col">Date</th>
							<th scope="col">Invoice No</th>
							<th scope="col">Customer Id</th>
							<th scope="col">Value</th>
							<th scope="col">Given Duration</th>
							<th scope="col">Action</th>

						</tr>
					</thead>

					<c:forEach var="invoice" items="${invoices}">
						<tr>
						<td>${invoice.date}</td>
						<td>${invoice.invid}</td>
						<td>${invoice.cusid}</td>
						<td>${invoice.opcqun*invoice.opcup+invoice.ppcqun*invoice.ppcup}</td>
						<td>${invoice.duration}</td>
						<td><form action="viewinv"><input type="text" hidden="true" value="${invoice.invid}" name="id"/>
						<input type="submit" class="" value="View" /></form></td>
						</tr>
					</c:forEach> 
					
				</table>

</div>
</div>
	<!-- Table End -->
	
</tiles:putAttribute>
</tiles:insertDefinition>
<script src="<c:url value="/resources/js/nav_bar_span.js" />"></script> 
</html>