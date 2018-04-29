
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<title>Search/Edit Cust.</title>
</head>
<body>
 <tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
	<br>
	<c:if test="${param.updated eq true}">
		<div class="alert alert-success">User Updated Successfully!
		</div>
		</c:if>
		<c:if test="${param.error eq true}">
		<div class="alert alert-danger">Somthing went wrong user not updated!
		</div>
		</c:if>
	
	<form:form class="input-sm" modelAttribute="user" >
	<div class="col-md-12">
	<div class="panel panel-primary">
     <div class="panel-heading text-left">Search User</div>
      <div class="panel-body">						
	<div class="col-md-4">
	<%-- <form:hidden class="text-long" path="cid" /> --%>
	<form:input type="text" class="form-control" id="ajaxsearch" path="userid" placeholder="Enter User ID Here..." />
	</div>
		</div>
	</div>
	</div>										
</form:form>
						
						
<script>	
$(document).ready(function() {
	$('#ajaxsearch').autocomplete({		
		serviceUrl: '${pageContext.request.contextPath}/getusers',
		paramName: "uid",
		delimiter: ",",
		onSearchStart: function (query) {			
			$("#mytable td").remove();
		},
	   transformResult: function(response) {
		  var suggesti= $.map($.parseJSON(response), function(item) {			
		      return { value:[ item.userid,item.username,item.nic,item.cno,item.address], data: item.userid };
		   })		 
			    var users =suggesti;
			    var tabl = $("#mytable"),
			      columns, i;
			    
			    if (!$.trim(users)){
					document.getElementById("div2").innerHTML="<div class='alert alert-danger'>No Maches Found!!</div>"
				}else{
					document.getElementById("div2").innerHTML=""
			    
			  for (i = 0; i < users.length; i++) {				  
			   var userd=users[i]["value"][0];
			    tabl.append(
			      '<tr>' + 
			          '<td>' + users[i]["value"][0] + '</td>' + 
			          '<td>' + users[i]["value"][1] + '</td>' +
			          '<td>' + users[i]["value"][2] + '</td>' +
			          '<td>' + users[i]["value"][3] + '</td>' +
			          '<td>' + users[i]["value"][4] + '</td>' +
			          

			        '<td>'+'<form action="edituser">'+'<input type="text" hidden="true" value="'+ users[i]["value"][0]+'" name="id"/>'+
						'<input type="submit" class="" value="Edit" />'+
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
								<th class="col-xs-1">User ID</th>
								<th class="col-xs-1">User Name</th>
								<th class="col-xs-1">NIC</th>
								<th class="col-xs-1">Contact No:</th>
								<th class="col-xs-1">Address</th>
								<th class="col-xs-1">Edit Customer</th>	
													
							</tr>
							</thead>						
						</table>											
					</div>
			</div>				
	</tiles:putAttribute>
	</tiles:insertDefinition>

<script src="<c:url value="/resources/core/jquery.autocomplete.min.js" />"></script>
</body>
</html>