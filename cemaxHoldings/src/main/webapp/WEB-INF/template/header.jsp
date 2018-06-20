<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="java.text.SimpleDateFormat" import="java.util.Date"%>

<%
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String date = sdf.format(new Date());
%>

<body onload="startTime(),openNav()">
<c:url value="/j_spring_security_logout" var="logoutUrl" />
<div style="background: #ea985d;height:5px"></div>
	<div style="height: 67px; width: 100%;background:  	#DCDCDC;"
		class="col-md-12">
		
		<span id="span"
			style="font-size: 30px; cursor: pointer; float: left; padding-left: 15px;padding-top: 12px"
			onclick="if(mySidenav.style.width==0)openNav();else closeNav();">&#9776;</span>

		
		<%-- <img src="<c:url value="/resources/img/logo.png" />" --%>
		<h1 style="float: left ;padding-bottom: 8px;padding-left:12px" >CEMAX Holdings (PVT).Ltd</h1>
		
			<form action="${logoutUrl}" method="post" id="logoutForm">
		<div style="float: right">
			<span id="span" class="col-md-1"
				style="font-size: 20px; cursor: pointer; float: left; padding-left: 15px; padding-top: 12px">
				
					  <input type="hidden" 
						name="${_csrf.parameterName}"
						value="${_csrf.token}" />
						<button onclick="formSubmit()" class="btn btn-warning">Log out</button>
					
			</span>

		</div>
			</form>
			
			<script>
		function formSubmit() {
			document.getElementById("logoutForm").submit();
		}
		</script>

	
			
			
			
		<div id="time"
			style="float: right; font: serif; font-size: x-medium; padding-top: 15px;"></div>
			

	</div>
	 	
	<script>
		function startTime() {
			var today = new Date();
			var mn = today.getMonth() + 1;
			var dy = today.getDate();
			var yyyy = today.getFullYear()
			var h = today.getHours();
			var m = today.getMinutes();
			var s = today.getSeconds();
			m = checkTime(m);
			s = checkTime(s);
			document.getElementById('time').innerHTML = yyyy + "/" + mn + "/"
					+ dy + "  " + h + ":" + m + ":" + s;
			var t = setTimeout(startTime, 500);
			if (dy < 10) {
				dy = '0' + dy
			}

			if (mn < 10) {
				mn = '0' + mn
			}

		}
		function checkTime(i) {
			if (i < 10) {
				i = "0" + i
			}
			; // add zero in front of numbers < 10
			return i;
		}
	</script>
	
</body>
