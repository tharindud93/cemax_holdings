<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<link rel='stylesheet' href='webjars/bootstrap/3.2.0/css/bootstrap.min.css'>

<title>All Invoices</title>
</head>

<div class="col-md-12" style="align: center">
	
			<div class="panel panel-primary">
				<div class="panel-heading">All Invioces</div>
				<div class="col-md-5">
					<!-- <input type="text" class="form-control" placeholder="Search here ( Ex:IN00123 )" name="srch-term" id="srch-term">
					<button class="btn btn-primary btn-md" type="submit"><i class="glyphicon glyphicon-search"></i></button>
				 -->
				 <br>
				 <div class="input-group">
  						<input type="text" class="form-control" placeholder="Search here ( Ex:IN00123 )">
  						<span class="input-group-btn">
    					<button class="btn btn-primary" style="height:34px" type="submit">
        					<i class="glyphicon glyphicon-search"></i>
   							 </button>
  							</span>
					</div>
					<br>
				 </div>
</div>

				<br>

				<!-- Table start -->


				<table class="table table-bordered">
					<thead>
						<tr>
							<th scope="col">Date</th>
							<th scope="col">Invoice No</th>
							<th scope="col">Customer Id</th>
							<th scope="col">C. Name</th>
							<th scope="col">Remain</th>
							<th scope="col">Action</th>

						</tr>
					</thead>

					<tbody>
						<tr class="danger">
							<th scope="row">24-11-2018</th>
							<td>IN00020</td>
							<td>CU-005</td>
							<td>Athula hardware</td>
							<td>(50000)</td>
							<td><button class="btn btn-success btn-xs" type="button"
									data-toggle="modal" data-target="#myModal">View</button>
						</tr>

						<tr class="warning">
							<th scope="row">11-12-2018</th>
							<td>IN00021</td>
							<td>CU-005</td>
							<td>Pathirana hardware</td>
							<td>(20000)</td>
							<td><button class="btn btn-success btn-xs" type="button"
									data-toggle="modal" data-target="#myModal">View</button>
						</tr>

						<tr class="success">
							<th scope="row">03-03-2018</th>
							<td>IN00022</td>
							<td>CU-005</td>
							<td>Nimal hardware</td>
							<td>(30000)</td>
							<td><button class="btn btn-success btn-xs" type="button"
									data-toggle="modal" data-target="#myModal">View</button>
						</tr>
						<tr>
							<th scope="row">03-12-2018</th>
							<td>IN00023</td>
							<td>CU-005</td>
							<td>Priyantha hardware</td>
							<td>(40000)</td>
							<td><button class="btn btn-success btn-xs" type="button"
									data-toggle="modal" data-target="#myModal">View</button>
						</tr>
						
						<tr>
							<th scope="row">24-11-2018</th>
							<td>IN00020</td>
							<td>CU-005</td>
							<td>Athula hardware</td>
							<td>(50000)</td>
							<td><button class="btn btn-success btn-xs" type="button"
									data-toggle="modal" data-target="#myModal">View</button>
						</tr>

						<tr>
							<th scope="row">11-12-2018</th>
							<td>IN00021</td>
							<td>CU-005</td>
							<td>Pathirana hardware</td>
							<td>(20000)</td>
							<td><button class="btn btn-success btn-xs" type="button"
									data-toggle="modal" data-target="#myModal">View</button>
						</tr>

						<tr >
							<th scope="row">03-03-2018</th>
							<td>IN00022</td>
							<td>CU-005</td>
							<td>Nimal hardware</td>
							<td>(30000)</td>
							<td><button class="btn btn-success btn-xs" type="button"
									data-toggle="modal" data-target="#myModal">View</button>
						</tr>
						<tr>
							<th scope="row">03-12-2018</th>
							<td>IN00023</td>
							<td>CU-005</td>
							<td>Priyantha hardware</td>
							<td>(40000)</td>
							<td><button class="btn btn-success btn-xs" type="button"
									data-toggle="modal" data-target="#myModal">View</button>
						</tr>

					</tbody>
				</table>



			</div>


		
	
	<!-- Table End -->
	
<body>

</body>

<script type="text/javascript" src="webjars/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript" src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</html>