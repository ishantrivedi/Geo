<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<title>List of Suppliers</title>

 <script>
    $(document).ready(function(){

        $('.table').DataTable({
            "lengthMenu": [[1,2,3,5,10,-1], [1,2,3,5,10, "All"]]
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
<jsp:include page="menu.jsp"></jsp:include>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Supplier Inventory Page</h1>

            <p class="lead">This is the supplier inventory page!</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="success">
                <th>Supplier Name</th>
                <th>Password</th>
                <th>Email</th>
                <th>Address</th>
                <th>Mobile</th>
                <th>View/Delete/Edit </th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${suppliers}" var="supplier">
               
                
            <tr >
                    <td>${supplier.suppliername}</td>
                    <td>${supplier.password}</td>
                    <td>${supplier.email}</td>
                    <td>${supplier.mobile}</td>
                    <td>${supplier.address}</td>
                   <td><a href="<spring:url value="/admin/viewSupplier/${supplier.supplierId}" />"
                    ><span class="glyphicon glyphicon-info-sign"></span></a>
                        <a href="<spring:url value="/admin/supplier/deleteSupplier/${supplier.supplierId}" />"
                        ><span class="glyphicon glyphicon-remove"></span></a>
                        <a href="<spring:url value="/admin/supplier/editSupplier/${supplier.supplierId}" />"
                        ><span class="glyphicon glyphicon-pencil"></span></a>
                    </td>                    
                </tr>
                </c:forEach>
                </tbody>
            
        </table>
        </div>
        </div>

        <%@include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>