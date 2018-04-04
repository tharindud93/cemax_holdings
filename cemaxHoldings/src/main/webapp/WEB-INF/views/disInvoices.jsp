<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<link rel='stylesheet'
	href='webjars/bootstrap/3.2.0/css/bootstrap.min.css'>
<title>All Invoices</title>
</head>
<body>

	<div class="container">

		<div class="col-md-12" style="align: center">
			<div class="panel panel-group">
				<div class="panel panel-primary">
					<div class="panel-heading">All Invoices View</div>
					<div class="panel-body">


						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Enter Invoice Id" name="srch-term"
								id="srch-term">
							<div class="input-group-btn">
								<button class="btn btn-primary btn-md" type="submit">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</div>
						</div>
					</div>
					<br>



					<table class="table table-bordered">
						<thead>
							<tr>
								<th scope="col">Date</th>
								<th scope="col">Invoice Id</th>
								<th scope="col">Customer Name</th>
								<th scope="col">Total Cement Amount</th>
								<th scope="col">Total Value</th>

							</tr>
						</thead>

						<tbody>
							<tr>
								
								<td>21/07/2018</td>
								<td>Inv001</td>
								<td>Mahinda Hardware</td>
								<td>50</td>
								<td>50000</td>
								<td><button class="btn btn-success btn-xs" type="button"
										data-toggle="modal" data-target="#myModal">View</button>
								
							</tr>
							<tr>
								
								<td>02/10/2018</td>
								<td>Inv020</td>
								<td>Jayasinghe Hardware</td>
								<td>20</td>
								<td>20000</td>

								<td><button class="btn btn-success btn-xs" type="button"
										data-toggle="modal" data-target="#myModal">View</button>
						
							</tr>
							<tr>
								
								<td>16/08/2018</td>
								<td>Inv006</td>
								<td>Nandana Hardware</td>
								<td>40</td>
								<td>40000</td>
								
								<td><button class="btn btn-success btn-xs" type="button"
										data-toggle="modal" data-target="#myModal">View</button>
									
							</tr>


						</tbody>
					</table>



				</div>
			</div>
		</div>
	</div>

</body>
</html>