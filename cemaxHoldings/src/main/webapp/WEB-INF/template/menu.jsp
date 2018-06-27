<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="java.lang.*"%>



<div id="mySidenav" class="sidenav" style="float: left;"  >


<nav class="navbar navbar-inverse sidebar" role="navigation">
    <div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->

		<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-sidebar-navbar-collapse-1">

				<ul id="menu1" class="nav navbar-nav">
					<li><a class="navbar-brand">-Menu-</a></li>
					
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Customer
					<span class="caret"></span>
					<!-- <span style="font-size:16px;" class="pull-right hidden-xs showopacity"></span> --></a>
					<ul class="dropdown-menu forAnimate" role="menu">
					<li><a class="navbar-nav" href="/cemaxHoldings/addcustomer">Add Customer</a></li>
					<li><a class="navbar-nav" href="/cemaxHoldings/searchEditcustomer">Serch/Edit</a></li>
					</ul>
					</li>
					
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Inventory
					<span class="caret"></span>
					<!-- <span style="font-size:16px;" class="pull-right hidden-xs showopacity"></span> --></a>
					<ul class="dropdown-menu forAnimate" role="menu">
					<li><a class="navbar-nav" href="/cemaxHoldings/dinventry">Add Inventory</a></li>
					<li><a class="navbar-nav" href="/cemaxHoldings/serinventry">Serch/View</a></li>
					</ul>
					</li>
					
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Invoice
					<span class="caret"></span>
					<!-- <span style="font-size:16px;" class="pull-right hidden-xs showopacity"></span> --></a>
					<ul class="dropdown-menu forAnimate" role="menu">
					<li><a class="navbar-nav" href="/cemaxHoldings/invoice">Add Invoice</a></li>
					<li><a class="navbar-nav" href="/cemaxHoldings/allinv">Outstanding Invoices</a></li>
					<li><a class="navbar-nav" href="/cemaxHoldings/paidallinv">Paid Invoices</a></li>
					</ul>
					</li>
			
				
				<li><a class="navbar-nav" href="/cemaxHoldings/allcredits">Outstandings and Debits</a></li>

				<li><a class="navbar-nav" href="/cemaxHoldings/dsum">Daily Summary</a></li>
				
				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">User
					<span class="caret"></span>
					<!-- <span style="font-size:16px;" class="pull-right hidden-xs showopacity"></span> --></a>
					<ul class="dropdown-menu forAnimate" role="menu">
					<li><a class="navbar-nav" href="/cemaxHoldings/adduser">Add User</a></li>
					<li><a class="navbar-nav" href="/cemaxHoldings/searchEdituser">Serch/Edit User</a></li>
					</ul>
					</li>
			</ul>
		</div>
	</div>
</nav>


</div>
				



