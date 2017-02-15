<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="icon" type="image/png" href="resources\images\earth.png">
<c:if test="${pageContext.request.userPrincipal.name  != null}">
<link rel="icon" type="image/png" href="resources/images/earth.png">
</c:if>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">	
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href='http://fonts.googleapis.com/css?family=Bitter'
	rel='stylesheet' type='text/css'>
<title>Insert title here</title>
<style type="text/css">
body {
	background-color: #bcbb73;
}

.flipkart-navbar {
	background-color: #bc946f;
	color: #000000;
}

.row1 {
	padding-top: 10px;
}

.row2 {
	padding-bottom: 20px;
}

.flipkart-navbar-input {
	padding: 11px 16px;
	border-radius: 2px 0 0 2px;
	border: 0 none;
	outline: 0 none;
	font-size: 15px;
}

.flipkart-navbar-button {
	background-color: #92ce6f;
	border: 1px solid #92ce6f;
	border-radius: 0 2px 2px 0;
	color: #565656;
	padding: 10px 0;
	height: 43px;
	cursor: pointer;
}

.cart-button {
	background-color: #92ce6f;
	box-shadow: 0 2px 4px 0 rgba(0, 0, 0, .23), inset 1px 1px 0 0
		hsla(0, 0%, 100%, .2);
	padding: 10px 0;
	text-align: center;
	height: 41px;
	border-radius: 2px;
	font-weight: 500;
	width: 120px;
	display: inline-block;
	color: #FFFFFF;
	text-decoration: none;
	color: inherit;
	border: none;
	outline: none;
}

.cart-button:hover {
	text-decoration: none;
	color: #fff;
	cursor: pointer;
}

.cart-svg {
	display: inline-block;
	width: 16px;
	height: 16px;
	vertical-align: middle;
	margin-right: 8px;
}

.item-number {
	border-radius: 3px;
	background-color: rgba(0, 0, 0, .1);
	height: 20px;
	padding: 3px 6px;
	font-weight: 500;
	display: inline-block;
	color: #fff;
	line-height: 12px;
	margin-left: 10px;
}

.upper-links {
	display: inline-block;
	padding: 0 11px;
	line-height: 23px;
	font-family: 'Roboto', sans-serif;
	letter-spacing: 0;
	color: inherit;
	border: none;
	outline: none;
	font-size: 12px;
}

.dropdown {
	position: relative;
	display: inline-block;
	margin-bottom: 0;
}

.dropdown:hover {
	background-color: #fff;
}

.dropdown:hover .links {
	color: #000;
}

.dropdown:hover .dropdown-menu {
	display: block;
}

.dropdown .dropdown-menu {
	position: absolute;
	top: 100%;
	display: none;
	background-color: #fff;
	color: #333;
	left: 0;
	border: 0;
	border-radius: 0;
	box-shadow: 0 4px 8px -3px #555454;
	margin: 0;
	padding: 0;
}

.links {
	color: #fff;
	text-decoration: none;
}

.links:hover {
	color: #fff;
	text-decoration: none;
}

.profile-links {
	font-size: 12px;
	font-family: 'Roboto', sans-serif;
	border-bottom: 1px solid #e9e9e9;
	display: block;
	padding: 0 11px;
	line-height: 23px;
}

/*blinking style*/
div123 {
    width: 100px;
    height: 100px;
    font-color: #bc946f;;
    -webkit-animation-name: example; /* Safari 4.0 - 8.0 */
    -webkit-animation-duration: 20s; /* Safari 4.0 - 8.0 */
    animation-name: example;
    animation-duration: 20s;
}

/* Safari 4.0 - 8.0 */
@-webkit-keyframes example {
    0%   {background-color: #bc946f;}
    20%   {background-color: #a2bc6f;}
    40%  {background-color: #6fbc7d;}
    60%  {background-color: #6fbcbc;}
    80%  {background-color: #766fbc;}
    100% {background-color: #bc6fac;}
}

/* Standard syntax */
@keyframes example {
    0%   {background-color: #bc946f;}
    20%   {background-color: #a2bc6f;}
    40%  {background-color: #6fbc7d;}
    60%  {background-color: #6fbcbc;}
    80%  {background-color: #766fbc;}
    100% {background-color: #bc6fac;}
}

/*new search bar codes  */
.form-horizontal .form-group {
    margin-left: 0;
    margin-right: 0;
}
.form-group .form-control:last-child {
    border-top-left-radius: 4px;
    border-bottom-left-radius: 4px;
}

</style>

</head>
<body>
	<!-- Menu Code -->
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
	<div class="flipkart-navbar">
		<div class="container">
			<div class="row row1">

			<ul class="pull-left">
			<div class="row row2">
				<div class="col-md-2">
					<h1 style="margin: 0px;">
						<a class="navbar-brand" href="<c:url value="/" /> "><div123 style="font-size:35px; !important">iGeoKart</div123></a>
					</h1>
				</div>
				</div>
			</ul>	
				<div class="flipkart-navbar-search col-md-4">
						<div class="row">
						
                                <form class="form-horizontal" role="form" id="f1" action="/geo/ListofProductsByCat" method="Get">
                                
                                  <div class="form-group">
                                  
                                    <select class="flipkart-navbar-input" id="category" name="category">
                                       	<option value="undefined">--- Search by Category ---</option>
   										<option value="Software">Software</option>
   										<option value="Books">Books</option>
   										<option value="Magazines">Magazines</option>
                                    </select>
                                  <button type="submit" name="submit" value="Search" class="btn btn-primary">Search</button>
                                  </div> 
                                
                                </form>
                                
						</div>
				 </div>
			
			
			
				<ul class="pull-left">
					<li class="upper-links dropdown"><a class="links" href="#">E-tutorials</a>
						<ul class="dropdown-menu">
							<li class="profile-li"><a class="profile-links"
								href="/geo/gistutorial">GIS</a></li>
							<li class="profile-li"><a class="profile-links"
								href="/geo/remotesensingtutorial">Remote Sensing</a></li>
							<li class="profile-li"><a class="profile-links"
								href="/geo/lidartutorial">LIDAR</a></li>
						</ul></li>
<!------------------user and admin ---------------------------------------->

					<c:if test="${pageContext.request.userPrincipal.name  == null}">
						<li class="upper-links dropdown"><a class="links"
							href="<c:url value="/ListofProducts/" />">Products</a></li>
					</c:if>						
						
 					<c:if test="${pageContext.request.userPrincipal.name  != null}">
 					<c:if test="${pageContext.request.userPrincipal.name  != 'admin'}">
						<li class="upper-links dropdown"><a class="links"
							href="<c:url value="/customer/ListofProducts/" />">Products</a></li>
					</c:if>
					
					<c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
						<li class="upper-links dropdown"><a class="links"
							href="<c:url value="/admin/ListofProducts/" />">Products</a></li>
					</c:if>
					</c:if>
					
					<c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
					<li class="upper-links dropdown"><a class="links"
							href="<c:url value="/admin/supplierInventory" />">Suppliers</a>
						<ul class="dropdown-menu">
						<li class="upper-links dropdown"><a class="links" href="/geo/admin/addSupplier">Add Supplier</a></li>
						</ul></li>
					</c:if>

					<c:if test="${pageContext.request.userPrincipal.name  == null}">
						<li class="upper-links dropdown"><a class="links"
							href="<c:url value="/login/" />">Login</a></li>
						<li class="upper-links dropdown"><a class="links"
							href="<c:url value="/addCustomer/" />">Register</a></li>
					</c:if>

						<li class="upper-links dropdown"><a class="links"
							href="/geo/contactus">Contact Us</a></li>
					
					<c:if test="${pageContext.request.userPrincipal.name != null}">
					<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
						<li class="upper-links dropdown"><a class="links">Welcome: ${pageContext.request.userPrincipal.name}</a>
					<ul class="dropdown-menu">
						<li class="upper-links dropdown"><a class="links" href="<c:url value="/j_spring_security_logout" />">Sign Out</a></li>
					</ul></li>
						
						</c:if>
					
<%-- 						<li class="upper-links dropdown"><a class="links" href="<c:url value="/customer/cart" />">Cart</a></li> --%>
<%-- 						<c:if test="${pageContext.request.customerPrincipal.name  == 'admin'}">
							<li class="upper-links dropdown"><a class="links" href="<c:url value="/admin" />">Admin</a></li>
						</c:if> --%>
					</c:if>
					
					<c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
					<li class="upper-links dropdown"><a class="links" href="/geo/admin/customerInventory">Users</a></li>
					</c:if>
					
					<c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
						<li class="upper-links dropdown"><a class="links">Welcome: ${pageContext.request.userPrincipal.name}</a>
					<ul class="dropdown-menu">
						<li class="upper-links dropdown"><a class="links" href="/geo/admin/addProduct">Add Product</a></li>
							<!-- <li class="upper-links dropdown"><a class="links" href="/geo/admin/addSupplier">Add Supplier</a></li> -->
							<li class="upper-links dropdown"><a class="links" href="/geo/admin/customerInventory">Registered Users</a></li>
						<li class="upper-links dropdown"><a class="links" href="<c:url value="/j_spring_security_logout" />">Sign Out</a></li>
					</ul></li>
					</c:if>
					
<!-- 				<div class="cart col-md-2"> -->
					<a class="cart-button"> <svg class="cart-svg " width="16 "
							height="16 " viewBox="0 0 16 16 "> <path
							d="M15.32 2.405H4.887C3 2.405 2.46.805 2.46.805L2.257.21C2.208.085 2.083 0 1.946 0H.336C.1 0-.064.24.024.46l.644 1.945L3.11 9.767c.047.137.175.23.32.23h8.418l-.493 1.958H3.768l.002.003c-.017 0-.033-.003-.05-.003-1.06 0-1.92.86-1.92 1.92s.86 1.92 1.92 1.92c.99 0 1.805-.75 1.91-1.712l5.55.076c.12.922.91 1.636 1.867 1.636 1.04 0 1.885-.844 1.885-1.885 0-.866-.584-1.593-1.38-1.814l2.423-8.832c.12-.433-.206-.86-.655-.86 "
							fill="#fff "></path> </svg>Cart <span class="item-number ">0</span>
					</a>
<!-- 				</div> -->

				</ul>
			</div>
</div>

		</div>
	</div>
	<!-- -------------------------------------------- -->
	
		<div class="col-md-12">
            
          </div>
	
	
	
	
</body>
</html>