<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


	
	<div class="col-md-12">
	<div class="panel panel-primary">
     <div class="panel-heading text-left">Search Customer</div>
      <div class="panel-body">						
	<div class="col-md-4">
	<input type="text" class="form-control" id="ajaxsearch" id="cid" placeholder="Enter Customer ID Here..." />
	</div>
		</div>
	</div>
</div>
						
						
<script>	
$(document).ready(function() {
	$('#ajaxsearch').autocomplete({		
		serviceUrl: '${pageContext.request.contextPath}/getCustomers',
		paramName: "cus",
		delimiter: ",",
		onSearchStart: function (query) {			
			$("#mytable td").remove();
		},
	   transformResult: function(response) {
		  var suggesti= $.map($.parseJSON(response), function(item) {			
		      return { value:[ item.cid,item.cname,item.caddress,item.owname,item.ccno1], data: item.cid };
		   })		 
			    var customers =suggesti;
			    var tabl = $("#mytable"),
			      columns, i;
			    
			    if (!$.trim(customers)){
					document.getElementById("div2").innerHTML="<div class='alert alert-danger'>No Maches Found!!</div>"
				}else{
					document.getElementById("div2").innerHTML=""
			    
			  for (i = 0; i < customers.length; i++) {				  
			   var userd=customers[i]["value"][0];
			    tabl.append(
			      '<tr>' + 
			          '<td>' + customers[i]["value"][0] + '</td>' + 
			          '<td>' + customers[i]["value"][1] + '</td>' +
			          '<td>' + customers[i]["value"][2] + '</td>' +
			          '<td>' + customers[i]["value"][3] + '</td>' +
			          '<td>' + customers[i]["value"][4] + '</td>' +
			          

			        '<td>'+'<button onclick="select1(this)">Select</button>'+'</td>'+
					
			      '</tr>'
			    );
			  }	}   		   
		   return suggestions;
           }           
	 });
 }); 
 

 </script>
 <script>
function select1(){

	 $('#mytable tr').click(function() {
        var data = this.cells[0].innerHTML;
       if(data) {
       	document.getElementById ("cusid").value="";
       	document.getElementById ("cusid").value=data;
          $('#cusSearchModal').modal('hide'); 
			
       }
       });
	   
}
 </script>
 <div id="div2"></div>
 
 <div class="panel-body">	
 <div id="div1" style=" text-align: left">
						<table id="mytable" class="table input-sm">
						<thead valign="top">
						<tr >
								<th class="col-xs-1">Customer ID</th>
								<th class="col-xs-1">Customer Name</th>
								<th class="col-xs-1">Address</th>
								<th class="col-xs-1">Owner Name</th>
								<th class="col-xs-1">Contact No:</th>
								<th class="col-xs-1">Select Customer</th>	
				
							</tr>
							</thead>						
						</table>											
					</div>
			</div>				

<script src="<c:url value="/resources/core/jquery.autocomplete.min.js" />"></script>
</body>
</html>