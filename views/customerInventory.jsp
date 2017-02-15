<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<title>List of Users</title>	

<script>
	$(document).ready(
			function() {

				$('.table').DataTable(
						{
							"lengthMenu" : [ [ 1, 2, 3, 5, 10, -1 ],
									[ 1, 2, 3, 5, 10, "All" ] ]
						});
			});
</script>
<!-- <script>
$(document).ready(function(){
    $('#myTable').dataTable();
});
</script> -->

</head>
<body>
<%@include file="/WEB-INF/views/menu.jsp"%>
	<div class="container-wrapper">
			<div class="container">
				<div class="page-header">
					<h1>List of Users</h1>
				</div>

				<table class="table table-striped table-hover">
					<thead>
						<tr class="success">
							<th>Customer Name</th>
							<th>Email</th>
							<th>Mobile</th>
							<th>User Name</th>
							<th>Password</th>
							<th>Is Enabled</th>
							<th>View/Delete/Edit/Approval</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${customers}" var="customer">


							<tr>
								<td>${customer.customerName}</td>
								<td>${customer.customerEmail}</td>
								<td>${customer.customerPhone}</td>
								<td>${customer.username}</td>
								<td>${customer.password}</td>
								<td>${customer.enabled}</td>
								<td><a
									href="<spring:url value="/admin/viewCustomer/${customer.customerId}" />"><span
										class="glyphicon glyphicon-info-sign"></span></a> <a
									href="<spring:url value="/admin/deleteCustomer/${customer.customerId}" />"><span
										class="glyphicon glyphicon-remove"></span></a> <a
									href="<spring:url value="/admin/editCustomer/${customer.customerId}" />"><span
										class="glyphicon glyphicon-pencil"></span></a> <a
									href="<spring:url value="/admin/approveCustomer/${customer.customerId}" />"><span
										class="glyphicon glyphicon-ok"></span></a></td>
							</tr>
						</c:forEach>
					</tbody>

				</table>
				<div class="page-header">
					<h1>Billing Address</h1>
				</div>
				<table class="table table-striped table-hover">
					<thead>
						<tr class="success">
							<th>Customer Name</th>
							<th>Street Name</th>
							<th>Apartment Number</th>
							<th>City</th>
							<th>State</th>
							<th>Country</th>
							<th>Zip Code</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${customers}" var="customerbill">


							<tr>
								<td>${customerbill.customerName}</td>
								<td>${customerbill.billingAddress.streetName}</td>
								<td>${customerbill.billingAddress.apartmentNumber}</td>
								<td>${customerbill.billingAddress.city}</td>
								<td>${customerbill.billingAddress.state}</td>
								<td>${customerbill.billingAddress.country}</td>
								<td>${customerbill.billingAddress.zipCode}</td>
							</tr>
						</c:forEach>
					</tbody>

				</table>
				<div class="page-header">
					<h1>Shipping Address</h1>
				</div>
					<table class="table table-striped table-hover">
					<thead>
						<tr class="success">
							<th>Customer Name</th>
							<th>Street Name</th>
							<th>Apartment Number</th>
							<th>City</th>
							<th>State</th>
							<th>Country</th>
							<th>Zip Code</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${customers}" var="customership">


							<tr>
								<td>${customership.customerName}</td>
								<td>${customership.shippingAddress.streetName}</td>
								<td>${customership.shippingAddress.apartmentNumber}</td>
								<td>${customership.shippingAddress.city}</td>
								<td>${customership.shippingAddress.state}</td>
								<td>${customership.shippingAddress.country}</td>
								<td>${customership.shippingAddress.zipCode}</td>
							</tr>
						</c:forEach>
					</tbody>

				</table>				
			</div>
		</div>
	
	<%@include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>