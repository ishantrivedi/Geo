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
            <h1>All Suppliers</h1>

            <p class="lead">Checkout all the awesome suppliers available now!</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Photo Thumb</th>
                <th>Supplier Name</th>
                <th>Category</th>
                <th>Condition</th>
                <th>Price</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${suppliers}" var="supplier">
                <tr>
                    <td><img src="<c:url value="/resources/images/${supplier.supplierId}.jpg" /> " alt="image"
                             style="width:100%"/></td>
                    <td>${supplier.supplierName}</td>
                    <td>${supplier.supplierCategory}</td>
                    <td>${supplier.supplierCondition}</td>
                    <td>${supplier.supplierPrice} USD</td>
                    <td><a href="<spring:url value="/supplier/viewSupplier/${supplier.supplierId}" />"
                    ><span class="glyphicon glyphicon-info-sign"></span></a></td>
                </tr>
            </c:forEach>
        </table>

<%@include file="/WEB-INF/views/footer.jsp" %>
