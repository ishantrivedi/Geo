<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/menu.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Add Product</h1>

            <p class="lead">Fill the below information to add a product:</p>
        </div>

        <form:form action="/geo/admin/addProduct" method="post" commandName="product" enctype="multipart/form-data">
        <div class="form-group">
            <label for="name">Name</label> <form:errors path="ProductName" cssStyle="color: #ff0000;" />
            <form:input path="ProductName" id="name" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="category">Category</label>
            <label class="checkbox-inline"><form:radiobutton path="ProductCategory" id="category"
                                                             value="Software" />Software</label>
            <label class="checkbox-inline"><form:radiobutton path="ProductCategory" id="category"
                                                             value="Books" />Books</label>
            <label class="checkbox-inline"><form:radiobutton path="ProductCategory" id="category"
                                                             value="Magazines" />Magazines</label>
        </div>

        <div class="form-group">
            <label for="description">Description</label>
            <form:textarea path="ProductDescription" id="description" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="Price">Price</label>  <form:errors path="ProductPrice" cssStyle="color: #ff0000;" />
            <form:input path="ProductPrice" id="price" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="condition">Condition</label>
            <label class="checkbox-inline"><form:radiobutton path="ProductCondition" id="condition"
                                                             value="new" />New</label>
            <label class="checkbox-inline"><form:radiobutton path="ProductCondition" id="condition"
                                                             value="used" />Used</label>
        </div>

        <div class="form-group">
            <label for="status">Status</label>
            <label class="checkbox-inline"><form:radiobutton path="ProductStatus" id="status"
                                                             value="active" />Active</label>
            <label class="checkbox-inline"><form:radiobutton path="ProductStatus" id="status"
                                                             value="inactive" />Inactive</label>
        </div>

        <div class="form-group">
            <label for="Stock">Stock</label>  <form:errors path="Stock"
                                                                         cssStyle="color: #ff0000;" />
            <form:input path="Stock" id="Stock" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="manufacturer">Manufacturer</label>
            <form:input path="productManufacturer" id="manufacturer" class="form-Control"/>
        </div>

        <div class="form-group">
            <label class="control-label" for="productImage">Upload Picture</label>
            <form:input id="productImage" path="productImage" type="file" class="form:input-large" />
        </div>

        <br><br>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/admin/ListofProducts" />" class="btn btn-default">Cancel</a>
        </form:form>


        <%@include file="/WEB-INF/views/footer.jsp" %>
