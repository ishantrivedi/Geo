<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<head>
<link rel="icon" type="image/png" href="resources\images\earth.png">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
<style type="text/css">
body, html{
     height: 100%;
 	background-repeat: no-repeat;
 	font-family: 'Oxygen', sans-serif;
}

.main{
 	margin-top: 70px;
}

h1.title { 
	font-size: 50px;
	font-family: 'Oxygen', sans-serif; 
	font-weight: 400; 
}

.form-group{
	margin-bottom: 15px;
}

label{
	margin-bottom: 15px;
}

input,
input::-webkit-input-placeholder {
    font-size: 11px;
    padding-top: 3px;
}

.main-login{
 	background-color: #fff;
    /* shadows and rounded borders */
    -moz-border-radius: 2px;
    -webkit-border-radius: 2px;
    border-radius: 2px;
    -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);

}

.main-center{
 	margin-top: 30px;
 	margin: 0 auto;
 	max-width: 330px;
    padding: 40px 40px;

}

.login-button{
	margin-top: 5px;
}

.login-register{
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
<%-- 				<div class="main-login main-center">
					<form:form action="/geo/addCustomer" method="post" commandName="customer" enctype="multipart/form-data" class="form-horizontal">

						<div class="form-group">
							<label for="customerName" class="cols-sm-2 control-label">Customername:</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="customerName" id="customerName"  placeholder="Enter your Customername"/>
								</div>
							</div>
						</div>
											
						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Password:</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="password" id="password"  placeholder="Enter your Password"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Email:</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="email" id="email"  placeholder="Enter your Email"/>
								</div>
							</div>
						</div>			
						
						<div class="form-group">
							<label for="text" class="cols-sm-2 control-label">Address:</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-home fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="address" id="address"  placeholder="Enter your Address"/>
								</div>
							</div>
						</div>		
						
						<div class="form-group">
							<label for="text" class="cols-sm-2 control-label">Mobile:</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-mobile fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="mobile" id="mobile"  placeholder="Enter your Mobile"/>
								</div>
							</div>
						</div>													
						<h1>Billing Address</h1>
						<div class="form-group">
							<label for="streetName" class="cols-sm-2 control-label">Address:</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-home fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="address" id="address"  placeholder="Enter your Address"/>
								</div>
							</div>
						</div>
						
						
						
						
						
						
						
						
						<input type="submit" value="Submit" class="btn btn-default">
							
						<c:if test="${pageContext.request.customerPrincipal.name  == null}">
						<ul class="pagination pagination-lg">
    						<li><a href="/geo/BillingAddress/">Next</a></li>
  						</ul>
  						</c:if>

					</form:form> --%>
					
					            <p class="lead">Please fill in your information below:</p>
        </div>

        <form id="customer" action="/geo/addCustomer" method="post">

        <h3>Basic Info</h3>

        <div class="form-group">
            <label for="name">Name</label>
            <input id="name" name="customerName" class="form-Control" type="text" value=""/>
            <br />
            
        </div>

        <div class="form-group">
            <label for="email">Email</label> <span style="color: #ff0000"></span>
            <input id="email" name="customerEmail" class="form-Control" type="text" value=""/>
            <br />
            
        </div>

        <div class="form-group">
            <label for="phone">Phone</label>
            <input id="phone" name="customerPhone" title="10 digit mobile number" pattern="[0-9]{10}" class="form-Control" type="text" value=""/>
        </div>

        <div class="form-group">
            <label for="username">Username</label> <span style="color: #ff0000"></span>
            <input id="username" name="username" class="form-Control" type="text" value=""/>
            <br/>
            
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-Control" type="password" value=""/>
            <br />
            
        </div>


        <h3>Billing Address</h3>

        <div class="form-group">
            <label for="billingStreet">Street Name</label>
            <input id="billingStreet" name="billingAddress.streetName" class="form-Control" type="text" value=""/>
            <br>
            
        </div>

        <div class="form-group">
            <label for="billingApartmentNumber">Apartment Number</label>
            <input id="billingApartmentNumber" name="billingAddress.apartmentNumber" class="form-Control" type="text" value=""/>
        	<br>
            
        </div>

        <div class="form-group">
            <label for="billingCity">City</label>
            <input id="billingCity" name="billingAddress.city" class="form-Control" type="text" value=""/>
            <br>
            
        </div>

        <div class="form-group">
            <label for="billingState">State</label>
            <input id="billingState" name="billingAddress.state" class="form-Control" type="text" value=""/>
            <br>
            
        </div>

        <div class="form-group">
            <label for="billingCountry">Country</label>
            <input id="billingCountry" name="billingAddress.country" class="form-Control" type="text" value=""/>
            <br>
            
        </div>

        <div class="form-group">
            <label for="billingZip">Zipcode</label>
            <input id="billingZip" name="billingAddress.zipCode" title="6 digit zip code" pattern="[0-9]{6}" class="form-Control" type="text" value=""/>
            <br>
            
        </div>


        <h3>Shipping Address</h3>

        <div class="form-group">
            <label for="shippingStreet">Street Name</label>
            <input id="shippingStreet" name="shippingAddress.streetName" class="form-Control" type="text" value=""/>
            <br>
            
        </div>

        <div class="form-group">
            <label for="shippingApartmentNumber">Apartment Number</label>
            <input id="shippingApartmentNumber" name="shippingAddress.apartmentNumber" class="form-Control" type="text" value=""/>
            <br>
            
        </div>

        <div class="form-group">
            <label for="shippingCity">City</label>
            <input id="shippingCity" name="shippingAddress.city" class="form-Control" type="text" value=""/>
            <br>
            
        </div>

        <div class="form-group">
            <label for="shippingState">State</label>
            <input id="shippingState" name="shippingAddress.state" class="form-Control" type="text" value=""/>
            <br>
            
        </div>

        <div class="form-group">
            <label for="shippingCountry">Country</label>
            <input id="shippingCountry" name="shippingAddress.country" class="form-Control" type="text" value=""/>
            <br>
            
        </div>

        <div class="form-group">
            <label for="shippingZip">Zipcode</label>
            <input id="shippingZip" name="shippingAddress.zipCode" title="6 digit zip code" pattern="[0-9]{6}" class="form-Control" type="text" value=""/>
            <br>
            
        </div>

        <br><br>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="/geo/" class="btn btn-default">Cancel</a>
        </form>
					
					
					
					
					${message}
				</div>
			</div>
		</div>        					
<br><br>													
        <%@include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>