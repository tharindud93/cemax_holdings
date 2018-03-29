<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<link rel='stylesheet' href='webjars/bootstrap/3.2.0/css/bootstrap.min.css'>

<title>Customer History</title>
</head>


<hr>

<div class="container">

<div class="col-md-12" style="align: center">
			<div class="panel panel-group">
				<div class="panel panel-primary">
					<div class="panel-heading">Customer History</div>
					<div class="panel-body">
		<div class="col-md-5 pull-left" style="padding:0;">
			<label>Customer Id</label> <input type="text" name="cusname"
				class="form-control input-sm" id="cusname" value="Nawala Hardware"/>
		</div>
		<div class="col-md-2"></div>
		<div>
			<div class="col-md-5 push-right" style="padding:0;">
				<label>Customer Name</label> <input type="text" name="cusname"
					class="form-control input-sm" id="cusname" value="CU-0003"/>
			</div>
		</div>
	</div>
	
	<br>



		
<div class="input-group">
            <input type="text" class="form-control" placeholder="Enter search term here ( Ex:IN00123 )" name="srch-term" id="srch-term" >
            <div class="input-group-btn">
                <button class="btn btn-primary btn-md" type="submit"><i class="glyphicon glyphicon-search"></i></button>
            </div>
        </div>	
        
	<br>
	
	
	
	
	<!-- Table start -->
	
	
		<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">Date</th>
      <th scope="col">Invoice No / Payment</th>
      <th scope="col">Value</th>
      <th scope="col">Action</th>
      
    </tr>
  </thead>
  
  <tbody>
    <tr>
      <th scope="row">24-11-2018</th>
      <td>IN00030</td>
      <td>(50000)</td>
    
      <td><button class="btn btn-success btn-xs" type="button" data-toggle="modal" data-target="#myModal">View</button>
      
    </tr>
    <tr>
      <th scope="row">11-12-2018</th>
      <td>IN00040</td>
      <td>(20000)</td>
    
      <td><button class="btn btn-success btn-xs" type="button" data-toggle="modal" data-target="#myModal">View</button>
      
    </tr>
    <tr>
      <th scope="row">03-03-2018</th>
      <td>payment</td>
      <td>+30000</td>
    
      <td><button class="btn btn-success btn-xs" type="button" data-toggle="modal" data-target="#myModal">View</button>
      
    </tr>
    <tr>
      <th scope="row">03-12-2018</th>
      <td>payment</td>
      <td>+40000</td>
    
      <td><button class="btn btn-success btn-xs" type="button" data-toggle="modal" data-target="#myModal">View</button>
      
    </tr>
    
   
  </tbody>
</table>
		
	
	
	</div>
	</div>
	</div>
	</div>
		
	
	<!-- Table End -->
	
<body>

</body>

<script type="text/javascript" src="webjars/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript" src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</html>