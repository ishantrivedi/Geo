<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/menu.jsp"%>

<script>
    $(document).ready(function(){
        var searchCondition = '${searchCondition}';

        $('.table').DataTable({
            "lengthMenu": [[5,10,-1], [5,10, "All"]],
            "oSearch": {"sSearch": searchCondition}
        });
    });

</script>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>All Customers</h1>

            <p class="lead">Checkout all the awesome customers available now!</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Photo Thumb</th>
                <th>Customer Name</th>
                <th>Category</th>
                <th>Condition</th>
                <th>Price</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${customers}" var="customer">
                <tr>
                    <td><img src="<c:url value="/resources/images/${customer.customerId}.jpg" /> " alt="image"
                             style="width:100%"/></td>
                    <td>${customer.customerName}</td>
                    <td>${customer.customerCategory}</td>
                    <td>${customer.customerCondition}</td>
                    <td>${customer.customerPrice} USD</td>
                    <td><a href="<spring:url value="/customer/viewCustomer/${customer.customerId}" />"
                    ><span class="glyphicon glyphicon-info-sign"></span></a></td>
                </tr>
            </c:forEach>
        </table>

<%@include file="/WEB-INF/views/footer.jsp" %>
