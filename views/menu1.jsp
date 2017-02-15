<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="icon" type="image/png" href="resources\images\earth.png">
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
</style>

</head>
<body>
	<!-- Menu Code -->
	<link href="https://fonts.googleapis.com/css?family=Roboto"
		rel="stylesheet">
	<div class="flipkart-navbar">
		<div class="container">
			<div class="row row1">
				<div class="cart col-md-2">
					<a class="cart-button"> <svg class="cart-svg " width="16 "
							height="16 " viewBox="0 0 16 16 "> <path
							d="M15.32 2.405H4.887C3 2.405 2.46.805 2.46.805L2.257.21C2.208.085 2.083 0 1.946 0H.336C.1 0-.064.24.024.46l.644 1.945L3.11 9.767c.047.137.175.23.32.23h8.418l-.493 1.958H3.768l.002.003c-.017 0-.033-.003-.05-.003-1.06 0-1.92.86-1.92 1.92s.86 1.92 1.92 1.92c.99 0 1.805-.75 1.91-1.712l5.55.076c.12.922.91 1.636 1.867 1.636 1.04 0 1.885-.844 1.885-1.885 0-.866-.584-1.593-1.38-1.814l2.423-8.832c.12-.433-.206-.86-.655-.86 "
							fill="#fff "></path> </svg>Cart <span class="item-number ">0</span>
					</a>
				</div>
				</ul>
				<ul class="pull-right">
					<li class="upper-links dropdown"><a class="links" href="#">Software</a>
						<ul class="dropdown-menu">
							<li class="profile-li"><a class="profile-links"
								href="/geo/opensourcesoftware">Open Source</a></li>
							<li class="profile-li"><a class="profile-links"
								href="/geo/chargeablesoftware">Chargeable Software</a></li>
						</ul></li>
					<li class="upper-links dropdown"><a class="links" href="#">Publications</a>
						<ul class="dropdown-menu">
							<li class="profile-li"><a class="profile-links"
								href="/geo/books">Books</a></li>
							<li class="profile-li"><a class="profile-links"
								href="/geo/magazines">Magazines</a></li>
						</ul></li>
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
							href="<c:url value="/user/ListofProducts/" />">Products</a></li>
					</c:if>
					
					<c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
						<li class="upper-links dropdown"><a class="links"
							href="<c:url value="/admin/ListofProducts/" />">Products</a></li>
					</c:if>
					</c:if>
					<%-- <c:if test="${empty successMsg}"> --%>
					<c:if test="${pageContext.request.userPrincipal.name != null}">
						<li class="upper-links dropdown"><a class="links">Welcome: ${pageContext.request.userPrincipal.name}</a></li>
						<li class="upper-links dropdown"><a class="links" href="<c:url value="/j_spring_security_logout" />">Logout</a></li>
						<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
						</c:if>
						<li class="upper-links dropdown"><a class="links" href="<c:url value="/customer/cart" />">Cart</a></li>
<%-- 						<c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
							<li class="upper-links dropdown"><a class="links" href="<c:url value="/admin" />">Admin</a></li>
						</c:if> --%>
					</c:if>
					<c:if test="${pageContext.request.userPrincipal.name  == null}">
						<li class="upper-links dropdown"><a class="links"
							href="<c:url value="/login/" />">Login</a></li>
						<li class="upper-links dropdown"><a class="links"
							href="<c:url value="/addUser/" />">Register</a></li>
					</c:if>
								
						<c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
						<li class="upper-links dropdown"><a class="links" href="#">Add</a>
						<ul class="dropdown-menu">
							<li class="upper-links dropdown"><a class="links"
								href="/geo/admin/addProduct">Add Product</a></li>
							<li class="upper-links dropdown"><a class="links"
								href="/geo/admin/addSupplier">Add Supplier</a></li>
							<li class="upper-links dropdown"><a class="links"
								href="/geo/admin/userInventory">Registered Users</a></li>	
						</ul></li>		
						</c:if>

						<li class="upper-links dropdown"><a class="links"
							href="/geo/contactus">Contact Us</a></li>
					<%-- </c:if> --%>


				</ul>
			</div>

			<div class="row row2">
				<div class="col-md-2">
					<h1 style="margin: 0px;">
						<a class="navbar-brand" href="<c:url value="/" /> "><div123>iGeoKart</div123></a>
					</h1>
				</div>
				<div class="flipkart-navbar-search col-md-8">
					<div class="row">
						<input type="text" class="live-search-box" placeholder="search here" />
					
						<!-- <input class="flipkart-navbar-input class="live-search-box" col-md-11" type=""
							placeholder="Search" name=""> -->
						<button class="flipkart-navbar-button col-md-1">
							<svg width="15px" height="15px"> <path
								d="M11.618 9.897l4.224 4.212c.092.09.1.23.02.312l-1.464 1.46c-.08.08-.222.072-.314-.02L9.868 11.66M6.486 10.9c-2.42 0-4.38-1.955-4.38-4.367 0-2.413 1.96-4.37 4.38-4.37s4.38 1.957 4.38 4.37c0 2.412-1.96 4.368-4.38 4.368m0-10.834C2.904.066 0 2.96 0 6.533 0 10.105 2.904 13 6.486 13s6.487-2.895 6.487-6.467c0-3.572-2.905-6.467-6.487-6.467 "></path>
							</svg>
						</button>
					</div>
				</div>
			</div>			
		</div>
	</div>
	<!-- -------------------------------------------- -->
</body>
</html>