 	<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">


<title>Overall Credits</title>
</head>

<!-- Modal -->
	<div id="logModal" class="modal fade" role="dialog">
		<div class="modal-dialog" style="width:80%">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Customer</h4>
				</div>
				<div class="modal-body">
					<%@include file="cusLog.jsp"%>
				</div>
			</div>
		</div>
	</div>
	<!-- <End modal> -->
<body>
 <tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
			<div class="container">

				<div class="col-md-12" style="align: center">
					<div class="panel panel-group">
						<div class="panel panel-primary">
							<div class="panel-heading">Customer Outstandings and Debits</div>
							<div class="panel-body">

								<!-- ////////////// ///////////////////////////////////////////////////////////////////////////////////-->
								<div class="input-group">
									<input type="text" class="form-control"
										placeholder="Enter Customer Name" name="srch-term"
										id="srch-term">
									<div class="input-group-btn">
										<button class="btn btn-primary btn-md" type="submit"
											style="height: 34px">
											<i class="glyphicon glyphicon-search"></i>
										</button>
									</div>
								</div>
							</div>
							<br>

							<table class="table table-bordered">
								<thead>
									<tr>
										<th scope="col">Id</th>
										<th scope="col">Customer</th>
										<th scope="col">Total Outstanding</th>
										<th scope="col">Action</th>

									</tr>
								</thead>


								<c:forEach var="val" items="${asd}">

									<tr>
										<td>${val[1]}</td>
										<td>${val[2]}</td>
										<td>${val[0]}</td>
										
										<td><form action="customersum">
												<input type="text" hidden="true" value="${val[1] }"
													name="cusid" />
													<input type="text" hidden="true" value="${val[2] }"
													name="cname" /> <input type="submit" class="" value="View" />
											</form></td>
									</tr>
								</c:forEach>

								</tbody>
							</table>



						</div>
					</div>
				</div>
			</div>
		</tiles:putAttribute>
</tiles:insertDefinition>
	
 
</body>

</html>