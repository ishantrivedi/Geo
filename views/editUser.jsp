<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/menu.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Edit Customer</h1>

            <p class="lead">Please update the customer information here:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/customer/editCustomer" method="post"
                   commandName="customer" enctype="multipart/form-data">
<%--         <form:hidden path="customerId" value="${customer.customerId}" /> --%>

        <div class="form-group">
            <label for="customername">Customername</label>
            <form:input path="customername" id="customername" class="form-Control" value="${customer.customername}"/>
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <form:input path="password" id="password" class="form-Control" value="${customer.password}"/>
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <form:input path="email" id="email" class="form-Control" value="${customer.email}"/>
        </div>

        <div class="form-group">
            <label for="mobile">Mobile</label>
            <form:input path="mobile" id="mobile" class="form-Control" value="${customer.mobile}"/>
        </div>

        <div class="form-group">
            <label for="address">Address</label>
            <form:input path="address" id="address" class="form-Control" value="${customer.address}"/>
        </div>                        

        <br><br>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/admin/customerInventory" />" class="btn btn-default">Cancel</a>
        </form:form>
</div>
</div>

        <%@include file="/WEB-INF/views/footer.jsp" %>
