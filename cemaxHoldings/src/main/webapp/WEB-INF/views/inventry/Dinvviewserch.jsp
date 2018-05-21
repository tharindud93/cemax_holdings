<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
<head>

<title>View D-Inventry</title>
</head>
<body>
 <tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
	<br>
	
	<form class="input-sm">
	<div class="col-md-12">
	<div class="panel panel-primary">
     <div class="panel-heading text-left">Search Inventory</div>
      <div class="panel-body">						
	<div class="col-md-4">
	<%-- <form:hidden class="text-long" path="cid" /> --%>
	<input type="text" class="form-control" id="ajaxsearch" placeholder="DD/MM/YYYY" />
	</div>
		</div>
	</div>
	</div>										
</form>
						
						
<script>	
$(document).ready(function() {
	$('#ajaxsearch').autocomplete({		
		serviceUrl: '${pageContext.request.contextPath}/getInventrys',
		paramName: "invid",
		delimiter: ",",
		onSearchStart: function (query) {			
			$("#mytable td").remove();
		},
	   transformResult: function(response) {
		  var suggesti= $.map($.parseJSON(response), function(item) {			
		      return { value:[ item.id,item.date,item.opcquan,item.opcprice,item.ppcquan,item.ppcprice], data: item.cid };
		   })		 
			    var inventrys =suggesti;
			    var tabl = $("#mytable"),
			      columns, i;
			    
			    if (!$.trim(inventrys)){
					document.getElementById("div2").innerHTML="<div class='alert alert-danger'>No Maches Found!!</div>"
				}else{
					document.getElementById("div2").innerHTML=""
			    
			  for (i = 0; i < inventrys.length; i++) {				  
			   var userd=inventrys[i]["value"][0];
			    tabl.append(
			      '<tr>' + 
			          '<td>' + inventrys[i]["value"][0] + '</td>' + 
			          '<td>' + inventrys[i]["value"][1] + '</td>' +
			          '<td>' + inventrys[i]["value"][2] + '</td>' +
			          '<td>' + inventrys[i]["value"][3] + '</td>' +
			          '<td>' + inventrys[i]["value"][4] + '</td>' +
			          '<td>' + inventrys[i]["value"][5] + '</td>' +
			          
					'<td>'+'<form action="viewinventry">'+'<input type="text" hidden="true" value="'+ inventrys[i]["value"][1]+'" name="date"/>'+
						'<input type="submit" class="" value="View" />'+
						'</form>'+'</td>'+
			      '</tr>'
			    );
			  }	}   		   
		   return suggestions;
           }           
	 });
 }); 
 </script>
 <div id="div2"></div>
 
 <div class="panel-body">	
 <div id="div1" style=" text-align: left">
						<table id="mytable" class="table input-sm">
						<thead valign="top">
						<tr >
								<th class="col-xs-1">Inventory Id</th>
								<th class="col-xs-1">Date</th>
								<th class="col-xs-1">OPC Quantity</th>
								<th class="col-xs-1">OPC Price</th>
								<th class="col-xs-1">PPC Quantity</th>
								<th class="col-xs-1">PPC Price</th>	
								<th class="col-xs-1">View Inventory</th>					
							</tr>
							</thead>
							<c:forEach var="inventries" items="${inventries}">

					
					
						<tr>
						<td>${inventries.id}</td>
						<td>${inventries.date}</td>
						<td>${inventries.opcquan}</td>
						<td>${inventries.opcprice}</td>
						<td>${inventries.ppcquan}</td>
						<td>${inventries.ppcprice}</td>
						<td><form><input type="text" hidden="true" value="${inventries.id}" name="id"/>
						<input type="submit" class="" value="Edit" /></form></td>
						</tr>
					</c:forEach> 						
						</table>											
					</div>
			</div>				
	</tiles:putAttribute>
	</tiles:insertDefinition>

<script src="<c:url value="/resources/core/jquery.autocomplete.min.js" />"></script>
</body>
</html>