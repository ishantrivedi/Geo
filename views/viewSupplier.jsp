<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/menu.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Supplier Detail</h1>

            <p class="lead">Here is the detail information of the supplier!
            </p>
        </div>

        <div class="container" ng-app = "cartApp">
            

                <div class="col-md-5">
                    <h3>${supplier.suppliername}</h3>
                    <p>${supplier.password}</p>
                    <p>
                       <strong>Email</strong> : ${supplier.email}
                    </p>
                    <p>
                        <strong>Address</strong> : ${supplier.address}
                    </p>
                    <p>
                        <strong>Mobile</strong> : ${supplier.mobile}
                    </p>

                    <br>

                    <!--<c:set var="role" scope="page" value="${param.role}" />
                    <c:set var="url" scope="page" value="/supplier/supplierList" />
                    <c:if test="${role='admin'}"> -->
                        <c:set var="url" scope="page" value="/admin/supplierInventory" />
                    </c:if>

                    <!--<p ng-controller="cartCtrl">
                        <a href="<c:url value="/supplier/supplierList/all" />" class="btn btn-default">Back</a>
                        <a href="#" class="btn btn-warning btn-large"
                           ng-click="addToCart('${supplier.supplierId}')"><span
                                class="glyphicon glyphicon-shopping-cart"></span> Order Now</a>
                        <a href="<spring:url value="/customer/cart" />"
                           class="btn btn-default"><span class="glyphicon glyphicon-hand-right"></span>View Cart</a>
                    </p> -->
                </div>
            </div>
        </div>
<br>
<br>
</div>
</div>

<br>
<br>
    <script src="<c:url value="/resources/js/controller.js" /> "></script>
    <!-- Angular JS -->
	<script type="text/javascript" src="<c:url value="/resources/js/angular.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/angular-resource.js"/>"></script>
	
	<script type="text/javascript" src="<c:url value="/resources/js/angular.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/controller.js" />"></script>
    
    <%--Jquery--%>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery-2.1.4.min.js"/>"></script>
	
 <%@include file="/WEB-INF/views/footer.jsp" %>
