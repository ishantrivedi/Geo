<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/menu.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Edit Supplier</h1>

            <p class="lead">Please update the supplier information here:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/supplier/editSupplier" method="post"
                   commandName="supplier" enctype="multipart/form-data">
        <form:hidden path="supplierId" value="${supplier.supplierId}" />

        <div class="form-group">
            <label for="name">Name</label>
            <form:input path="supplierName" id="name" class="form-Control" value="${supplier.supplierName}"/>
        </div>

        <div class="form-group">
            <label for="category">Category</label>
            <label class="checkbox-inline"><form:radiobutton path="supplierCategory" id="category"
                                                             value="Camera" />Camera</label>
            <label class="checkbox-inline"><form:radiobutton path="supplierCategory" id="category"
                                                             value="Tablet" />Tablet</label>
            <label class="checkbox-inline"><form:radiobutton path="supplierCategory" id="category"
                                                             value="EHDD" />External Hard Disk</label>
        </div>

        <div class="form-group">
            <label for="description">Description</label>
            <form:textarea path="supplierDescription" id="description" class="form-Control" value="${supplier.supplierDescription}"/>
        </div>

        <div class="form-group">
            <label for="price">Price</label>
            <form:input path="supplierPrice" id="price" class="form-Control" value="${supplier.supplierPrice}"/>
        </div>

        <div class="form-group">
            <label for="condition">Condition</label>
            <label class="checkbox-inline"><form:radiobutton path="supplierCondition" id="condition"
                                                             value="new" />New</label>
            <label class="checkbox-inline"><form:radiobutton path="supplierCondition" id="condition"
                                                             value="used" />Used</label>
        </div>

        <div class="form-group">
            <label for="status">Status</label>
            <label class="checkbox-inline"><form:radiobutton path="supplierStatus" id="status"
                                                             value="active" />Active</label>
            <label class="checkbox-inline"><form:radiobutton path="supplierStatus" id="status"
                                                             value="inactive" />Inactive</label>
        </div>

        <div class="form-group">
            <label for="unitInStock">Unit In Stock</label>
            <form:input path="unitInStock" id="unitInStock" class="form-Control" value="${supplier.unitInStock}"/>
        </div>

        <div class="form-group">
            <label for="manufacturer">Manufacturer</label>
            <form:input path="supplierManufacturer" id="manufacturer" class="form-Control" value="${supplier.supplierManufacturer}"/>
        </div>

        <div class="form-group">
            <label class="control-label" for="supplierImage">Upload Picture</label>
            <form:input id="supplierImage" path="supplierImage" type="file" class="form:input-large" />
        </div>

        <br><br>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/admin/supplierInventory" />" class="btn btn-default">Cancel</a>
        </form:form>


        <%@include file="/WEB-INF/views/footer.jsp" %>
