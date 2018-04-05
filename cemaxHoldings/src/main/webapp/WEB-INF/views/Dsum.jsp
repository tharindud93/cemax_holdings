<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
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
		<input type="text" class="form-control" value="480">
		</div>
		<div class=" col-md-5">
		<label>Total Cost(Rs):</label>
		<input type="text" class="form-control" value="230000">
		</div>
		<div class=" col-md-5">
		<label>Total Profit(Rs):</label>
		<input type="text" class="form-control" value="120000">
		</div></div>
		</div>
		
			<div class="panel panel-primary">
				<div class="panel-heading">Distributes</div>
				<div class="col-md-5">
				
				 <br>
				 <!-- <div class="input-group">
  						<input type="text" class="form-control" placeholder="Search here ( Ex:IN00123 )">
  						<span class="input-group-btn">
    					<button class="btn btn-primary" style="height:34px" type="submit">
        					<i class="glyphicon glyphicon-search"></i>
   							 </button>
  							</span>
					</div> -->
					<br>
				 </div>


				<br>

				<!-- Table start -->


				<table class="table table-bordered">
					<thead>
						<tr>
							
							<th scope="col">Invoice No</th>
							<th scope="col">Customer Id</th>
							<th scope="col">C. Name</th>
							<th scope="col">Quantity</th>
							<th scope="col">Price</th>
							<th scope="col">Profit</th>

						</tr>
					</thead>

					<tbody>
						<tr>
							
							<td>IN00020</td>
							<td>CU-005</td>
							<td>Athula hardware</td>
							<td>200</td>
							<td>16000</td>
							<td>10000</td>
							
							</tr>

						<tr>
							
							<td>IN00021</td>
							<td>CU-010</td>
							<td>Pathirana hardware</td>
							<td>50</td>
							<td>24000</td>
							<td>12000</td>

						<tr>
							
							<td>IN00022</td>
							<td>CU-008</td>
							<td>Nimal hardware</td>
							<td>230</td>
							<td>34000</td>
							<td>25000</td>
							</tr>
						
					</tbody>
				</table>

</div>
</div>
		


		
	
	<!-- Table End -->
	
</tiles:putAttribute>
</tiles:insertDefinition>
<script src="<c:url value="/resources/js/nav_bar_span.js" />"></script> 
</html>