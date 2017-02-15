<%-- <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="/WEB-INF/views/menu.jsp"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Edit Customer</h1>

			<p class="lead">Please update the customer information here:</p>
		</div>

		<form:form id="customer"
			action="${pageContext.request.contextPath}/admin/editCustomer"
			method="post" commandName="customer" enctype="multipart/form-data">
			<form:hidden path="customerId" value="${customer.customerId}" />

			<div class="form-group">
				<label for="customerName">Customername</label>
				<form:input path="customerName" id="customerName"
					class="form-Control" value="${customer.customerName}" />
			</div>

			<div class="form-group">
				<label for="password">Password</label>
				<form:input path="password" id="password" class="form-Control"
					value="${customer.password}" />
			</div>

			<div class="form-group">
				<label for="customerEmail">Email</label>
				<form:input path="customerEmail" id="customerEmail"
					class="form-Control" value="${customer.customerEmail}" />
			</div>

			<div class="form-group">
				<label for="customerPhone">Mobile</label>
				<form:input path="customerPhone" id="customerPhone"
					class="form-Control" value="${customer.customerPhone}" />
			</div>


			<br>
			<br>
			<input type="submit" value="submit" class="btn btn-default">
			<a href="<c:url value="/admin/customerInventory" />"
				class="btn btn-default">Cancel</a>
		</form:form>
	</div>
</div>

<%@include file="/WEB-INF/views/footer.jsp"%>
 --%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<link rel="icon" type="image/png" href="resources\images\earth.png">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
<style type="text/css">
body, html {
	height: 100%;
	background-repeat: no-repeat;
	font-family: 'Oxygen', sans-serif;
}

.main {
	margin-top: 70px;
}

h1.title {
	font-size: 50px;
	font-family: 'Oxygen', sans-serif;
	font-weight: 400;
}

.form-group {
	margin-bottom: 15px;
}

label {
	margin-bottom: 15px;
}

input, input::-webkit-input-placeholder {
	font-size: 11px;
	padding-top: 3px;
}

.main-login {
	background-color: #fff;
	/* shadows and rounded borders */
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	-moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	-webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
}

.main-center {
	margin-top: 30px;
	margin: 0 auto;
	max-width: 330px;
	padding: 40px 40px;
}

.login-button {
	margin-top: 5px;
}

.login-register {
	font-size: 11px;
	text-align: center;
}
</style>
</head>

<body>
	<jsp:include page="menu.jsp"></jsp:include>

	<div class="container">
		<div class="row main">
			<div class="panel-heading">
				<div class="panel-title text-center">
					<h1 class="title">Registration</h1>
				</div>
			</div>

			<p class="lead">Please fill in your information below:</p>
		</div>
		<form:form id="customer"
			action="${pageContext.request.contextPath}/admin/editCustomer"
			method="post" commandName="customer" enctype="multipart/form-data">
			<form:hidden path="customerId" value="${customer.customerId}" />
			<form:hidden path="billingAddress.billingAddressId" value="${customer.billingAddress.billingAddressId}" />
			<form:hidden path="shippingAddress.shippingAddressId" value="${customer.shippingAddress.shippingAddressId}" />

			<h3>Basic Info</h3>

			<div class="form-group">
				<label for="customerName">Name</label>
				<form:input path="customerName" id="customerName"
					class="form-Control" value="${customer.customerName}" />
			</div>

			<div class="form-group">
				<label for="customerEmail">Email</label> <span
					style="color: #ff0000"></span>
				<form:input path="customerEmail" id="customerEmail"
					class="form-Control" value="${customer.customerEmail}" />
			</div>

			<div class="form-group">
				<label for="customerPhone">Phone</label> <input id="customerPhone"
					name="customerPhone" path="customerPhone"
					title="10 digit mobile number" pattern="[0-9]{10}"
					class="form-Control" type="text" value="${customer.customerPhone}" />
			</div>

			<div class="form-group">
				<label for="username">Username</label> <span style="color: #ff0000"></span>
				<input id="username" name="username" path="username"
					class="form-Control" type="text" value="${customer.username}" /> <br />

			</div>

			<div class="form-group">
				<label for="password">Password</label> <input id="password"
					name="password" path="password" class="form-Control"
					type="password" value="${customer.password}" /> <br />

			</div>


			<h3>Billing Address</h3>			

			<div class="form-group">
				<label for="billingStreet">Street Name</label> <input
					id="billingStreet" name="billingAddress.streetName"
					path="billingAddress.streetName" class="form-Control" type="text"
					value="${customer.billingAddress.streetName}" /> <br>

			</div>

			<div class="form-group">
				<label for="billingApartmentNumber">Apartment Number</label> <input
					id="billingApartmentNumber" name="billingAddress.apartmentNumber"
					path="billingAddress.apartmentNumber" class="form-Control"
					type="text" value="${customer.billingAddress.apartmentNumber}" /> <br>

			</div>

			<div class="form-group">
				<label for="billingCity">City</label> <input id="billingCity"
					name="billingAddress.city" class="form-Control"
					path="billingAddress.city" type="text" value="${customer.billingAddress.city}" /> <br>

			</div>

			<div class="form-group">
				<label for="billingState">State</label> <input id="billingState"
					name="billingAddress.state" class="form-Control"
					path="billingAddress.state" type="text" value="${customer.billingAddress.state}" /> <br>

			</div>

			<div class="form-group">
				<label for="billingCountry">Country</label> <input
					id="billingCountry" name="billingAddress.country"
					class="form-Control" path="billingAddress.country" type="text"
					value="${customer.billingAddress.country}" /> <br>

			</div>

			<div class="form-group">
				<label for="billingZip">Zipcode</label> <input id="billingZip"
					name="billingAddress.zipCode" title="6 digit zip code"
					path="billingAddress.zipCode" pattern="[0-9]{6}"
					class="form-Control" type="text" value="${customer.billingAddress.zipCode}" /> <br>

			</div>


			<h3>Shipping Address</h3>

			<div class="form-group">
				<label for="shippingStreet">Street Name</label> <input
					id="shippingStreet" name="shippingAddress.streetName"
					class="form-Control" path="shippingAddress.streetName" type="text"
					value="${customer.shippingAddress.streetName}" /> <br>

			</div>

			<div class="form-group">
				<label for="shippingApartmentNumber">Apartment Number</label> <input
					id="shippingApartmentNumber" name="shippingAddress.apartmentNumber"
					class="form-Control" path="shippingAddress.apartmentNumber"
					type="text" value="${customer.shippingAddress.apartmentNumber}" /> <br>

			</div>

			<div class="form-group">
				<label for="shippingCity">City</label> <input id="shippingCity"
					name="shippingAddress.city" class="form-Control"
					path="shippingAddress.city" type="text" value="${customer.shippingAddress.city}" /> <br>

			</div>

			<div class="form-group">
				<label for="shippingState">State</label> <input id="shippingState"
					name="shippingAddress.state" class="form-Control"
					path="shippingAddress.state" type="text" value="${customer.shippingAddress.state}" /> <br>

			</div>

			<div class="form-group">
				<label for="shippingCountry">Country</label> <input
					id="shippingCountry" name="shippingAddress.country"
					class="form-Control" path="shippingAddress.country" type="text"
					value="${customer.shippingAddress.country}" /> <br>

			</div>

			<div class="form-group">
				<label for="shippingZip">Zipcode</label> <input id="shippingZip"
					name="shippingAddress.zipCode" title="6 digit zip code"
					path="shippingAddress.zipCode" pattern="[0-9]{6}"
					class="form-Control" type="text" value="${customer.shippingAddress.zipCode}" /> <br>

			</div>

			<br>
			<br>
			<input type="submit" value="submit" class="btn btn-default">
			<a href="/geo/" class="btn btn-default">Cancel</a>
		</form:form>
	</div>
	<br>
	<br>
	<%@include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>