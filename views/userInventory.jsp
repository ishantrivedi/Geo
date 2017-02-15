<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/menu.jsp"%>

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

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
  <div class="table-responsive">
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Customer Inventory Page</h1>

            <p class="lead">This is the customer inventory page!</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="success">
                <th>Customer Name</th>
                <th>Password</th>
                <th>Email</th>
                <th>Mobile</th>
                <th>Address</th>
                <th>Is Enabled</th>
                <th>View/Delete/Edit/Approval</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${customers}" var="customer">
               
                
            <tr >
                    <td>${customer.customername}</td>
                    <td>${customer.password}</td>
                    <td>${customer.email}</td>
                    <td>${customer.mobile}</td>
                    <td>${customer.address}</td>
                    <td>${customer.enabled}</td>
                   <td><a href="<spring:url value="/admin/viewCustomer/${customer.customerId}" />"
                    ><span class="glyphicon glyphicon-info-sign"></span></a>
                        <a href="<spring:url value="/admin/deleteCustomer/${customer.customerId}" />"
                        ><span class="glyphicon glyphicon-remove"></span></a>
                        <a href="<spring:url value="/admin/editCustomer/${customer.customerId}" />"
                        ><span class="glyphicon glyphicon-pencil"></span></a>
                        <a href="<spring:url value="/admin/approveCustomer/${customer.customerId}" />"
                        ><span class="glyphicon glyphicon-ok"></span></a>
                    </td>                    
                </tr>
                </c:forEach>
                </tbody>
            
        </table>
        </div>
        </div>
        </div>

        <%@include file="/WEB-INF/views/footer.jsp" %>
