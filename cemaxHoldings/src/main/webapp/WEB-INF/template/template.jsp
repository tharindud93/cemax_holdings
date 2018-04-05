<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="viewport" content="initial-scale=1,width=device-width"/>
<link rel='stylesheet' href='webjars/bootstrap/3.2.0/css/bootstrap.min.css'/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>

<style type="text/css"><%@include file="../../../resources/css/common/navigation_bar.css"%></style>
<script type="text/javascript" src="webjars/jquery/2.1.1/jquery.min.js"></script> 
<script type="text/javascript"src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script type="text/javascript"><%@include file="/resources/js/nav_bar_span.js"%></script>
<%-- <script src="<c:url value="/resources/core/jquery.1.10.2.min.js" />"></script> --%>
<%-- <script src="<c:url value="/resources/core/jquery.autocomplete.min.js" />"></script>
<link href="<c:url value="/resources/core/main.css" />" rel="stylesheet"/>
 --%>


<style>
.table-fixed {
    table-layout: fixed; 
    overflow: hidden;
}

.panel-default > .panel-heading {
  color: #333;
  background-color: #ea985d;
  border-color: #c4c4c4;
}
.panel-default > .panel-body{
  background-color: #fcf5ed;
  border-color: #ea985d;
}

.breadcrumb {
    float: none;
    text-align: left;
    margin-top: 0;
}
.header-post-title-container .post-title-wrapper {
    float: none;
}
.error {
	color: #ff0000;
}


.footer {
    position: fixed;
    left: 0;
    bottom: 0;
    width: 100%;
    background-color: #ea985d;
    color: white;
    text-align: center;
}


</style>
</head>

<body style="background-color: #F8F8FF;">
<div id="main" >
	
		<tiles:insertAttribute name="header" />
		
		 	<tiles:insertAttribute name="menu" /> 
		<center>	
			<tiles:insertAttribute name="body" />
		</center>
	<tiles:insertAttribute name="footer"  />
	</div>
</body>

	
	
		
</html>