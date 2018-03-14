<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<link rel='stylesheet' href='webjars/bootstrap/3.2.0/css/bootstrap.min.css'>

<title>Overall Credits</title>
</head>

<!----- Modal ------>
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Customer Debits</h4>
      </div>
      <div class="modal-body">
        <%@include file="outModal.jsp" %>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>


<!-- End Modal -->






<body>`




	<div class="container">
	
	
	
<div class="input-group">
            <input type="text" class="form-control" placeholder="Enter Customer Name" name="srch-term" id="srch-term">
            <div class="input-group-btn">
                <button class="btn btn-primary btn-md" type="submit"><i class="glyphicon glyphicon-search"></i></button>
            </div>
        </div>	</div>
	<br>
	

	<div class="container">
		<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Customer</th>
      <th scope="col">Total Outstanding</th>
      <th scope="col">Action</th>
      
    </tr>
  </thead>
  
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>100000</td>
    
      <td><button class="btn btn-success btn-xs" type="button" data-toggle="modal" data-target="#myModal">Debits</button>
      <button class="btn btn-primary btn-xs" type="button" value="Submit">Log</button></td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Miller</td>
      <td>20000</td>
    
      <td><button class="btn btn-success btn-xs" type="button" data-toggle="modal" data-target="#myModal">Debits</button>
      <button class="btn btn-primary btn-xs" type="button" value="Submit">Log</button></td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Webster</td>
      <td>30000</td>
    
      <td><button class="btn btn-success btn-xs" type="button" data-toggle="modal" data-target="#myModal">Debits</button>
      <button class="btn btn-primary btn-xs" type="button" value="Submit">Log</button></td>
    </tr>
    
   
  </tbody>
</table>
		
	
	
	</div>

</body>
<script type="text/javascript" src="webjars/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript" src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</html>