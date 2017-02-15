<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="icon" type="image/png" href="resources/images/earth.png">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">	
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href='http://fonts.googleapis.com/css?family=Bitter'
	rel='stylesheet' type='text/css'>
<title>View ${customer.customerName}</title>	
<jsp:include page="menu.jsp"></jsp:include>	
<style type="text/css">
/* body{padding-top:30px;}

.glyphicon {  margin-bottom: 10px;margin-right: 10px;} */

small {
display: block;
line-height: 1.428571429;
color: #999;
}

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
</style>
</head>
<body>
<br>
<div class="container">
    <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-6">
            <div class="well well-sm">
                <div class="row">
                <div class="col-sm-6 col-md-8">
                
                        <h4>${customer.customerName}</h4>
                         <small>${customer.billingAddress.apartmentNumber} ${customer.billingAddress.streetName}, ${customer.billingAddress.city}, ${customer.billingAddress.state}, ${customer.billingAddress.country}<i class="glyphicon glyphicon-map-marker">
                        </i></small>
                        <small>${customer.shippingAddress.apartmentNumber} ${customer.shippingAddress.streetName}, ${customer.shippingAddress.city}, ${customer.shippingAddress.state}, ${customer.shippingAddress.country}<i class="glyphicon glyphicon-road">
                        </i></small>
                        <p>
                            <i class="glyphicon glyphicon-envelope"></i>${customer.customerEmail}
                            <br />
                            <i class="fa fa-mobile"></i>${customer.customerPhone}
                        <!-- Split button -->
                        <div class="btn-group">
                            <button type="button" class="btn btn-info"> <a href="<c:url value="/admin/customerInventory" />">
                                Back</a></button>
                        </div>
                    </div>
                </div>
            </div>
		</div>
	</div>
</div>
<%@include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>