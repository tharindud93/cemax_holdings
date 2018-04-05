<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cemex Dashboard</title>
</head>
<body>
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
	
	<div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Dashboard</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                
 <div class="container">
<div class="row">

                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <div class="row">
                                   
                                    <div class="col-xs-12 text-center">
                                        
                                        <div >Add New Customer</div>
                                    </div>
                                </div>
                            </div>
                            <a href="#">
                                <div class="panel-footer">
                                    
                                    <span class="glyphicons glyphicons-plus"></span>

                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                   <div class="col-lg-3 col-md-6">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <div class="row">
                                   
                                    <div class="col-xs-12 text-center">
                                        
                                        <div>Add Invoice</div>
                                    </div>
                                </div>
                            </div>
                            <a href="#">
                                <div class="panel-footer">
                                    
                                    <span class="glyphicons glyphicons-plus"></span>

                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div> <div class="col-lg-3 col-md-6">
                        <div class="panel panel-info">
                            <div class="panel-heading">
                                <div class="row">
                                   
                                    <div class="col-xs-12 text-center">
                                        
                                        <div>Outstandings and Debits</div>
                                    </div>
                                </div>
                            </div>
                            <a href="#">
                                <div class="panel-footer">
                                    
                                    <span class="glyphicons glyphicons-plus"></span>

                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div> <div class="col-lg-3 col-md-6">
                        <div class="panel panel-warning">
                            <div class="panel-heading">
                                <div class="row">
                                   
                                    <div class="col-xs-12 text-center">
                                        
                                        <div>All Invoices</div>
                                    </div>
                                </div>
                            </div>
                            <a href="#">
                                <div class="panel-footer">
                                    
                                    <span class="glyphicons glyphicons-plus"></span>

                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                <!-- /.row -->
                </div>
                
                <br>
                <br>
                
                
                
                 <!-- 2nd row -->
                 
                 
                 
                <div class="row">

                  <div class="col-lg-3 col-md-6">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <div class="row">
                                   
                                    <div class="col-xs-12 text-center">
                                        
                                        <div >Daily Summary</div>
                                    </div>
                                </div>
                            </div>
                            <a href="#">
                                <div class="panel-footer">
                                    
                                    <span class="glyphicons glyphicons-plus"></span>

                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                   <div class="col-lg-3 col-md-6">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <div class="row">
                                   
                                    <div class="col-xs-12 text-center">
                                        
                                        <div>Update Inventory</div>
                                    </div>
                                </div>
                            </div>
                            <a href="#">
                                <div class="panel-footer">
                                    
                                    <span class="glyphicons glyphicons-plus"></span>

                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div> <div class="col-lg-3 col-md-6">
                        <div class="panel panel-info">
                            <div class="panel-heading">
                                <div class="row">
                                   
                                    <div class="col-xs-12 text-center">
                                        
                                        <div>Customer Log</div>
                                    </div>
                                </div>
                            </div>
                            <a href="#">
                                <div class="panel-footer">
                                    
                                    <span class="glyphicons glyphicons-plus"></span>

                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div> 
                        
                    
                     <!-- ./row -->
                </div>
                  
                
                
</tiles:putAttribute>
</tiles:insertDefinition>
<script src="<c:url value="/resources/js/nav_bar_span.js" />"></script> 
</body>

</html>