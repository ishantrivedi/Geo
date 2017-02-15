<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" type="image/png" href="resources\images\earth.png">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Open Source Software</title>
<style type="text/css">
body {
  font-family: 'open sans';
  overflow-x: hidden; }

img {
  max-width: 100%; }

.preview {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column; }
  @media screen and (max-width: 996px) {
    .preview {
      margin-bottom: 20px; } }

.preview-pic {
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
      -ms-flex-positive: 1;
          flex-grow: 1; }

.preview-thumbnail.nav-tabs {
  border: none;
  margin-top: 15px; }
  .preview-thumbnail.nav-tabs li {
    width: 18%;
    margin-right: 2.5%; }
    .preview-thumbnail.nav-tabs li img {
      max-width: 100%;
      display: block; }
    .preview-thumbnail.nav-tabs li a {
      padding: 0;
      margin: 0; }
    .preview-thumbnail.nav-tabs li:last-of-type {
      margin-right: 0; }

.tab-content {
  overflow: hidden; }
  .tab-content img {
    width: 100%;
    -webkit-animation-name: opacity;
            animation-name: opacity;
    -webkit-animation-duration: .3s;
            animation-duration: .3s; }

.card {
  margin-top: 50px;
  background: #eee;
  padding: 3em;
  line-height: 1.5em; }

@media screen and (min-width: 997px) {
  .wrapper {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex; } }

.details {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column; }

.colors {
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
      -ms-flex-positive: 1;
          flex-grow: 1; }

.product-title, .price, .sizes, .colors {
  text-transform: UPPERCASE;
  font-weight: bold; }

.checked, .price span {
  color: #ff9f1a; }

.product-title, .rating, .product-description, .price, .vote, .sizes {
  margin-bottom: 15px; }

.product-title {
  margin-top: 0; }

.size {
  margin-right: 10px; }
  .size:first-of-type {
    margin-left: 40px; }

.color {
  display: inline-block;
  vertical-align: middle;
  margin-right: 10px;
  height: 2em;
  width: 2em;
  border-radius: 2px; }
  .color:first-of-type {
    margin-left: 20px; }

.add-to-cart {
  background: #ff9f1a;
  padding: 1.2em 1.5em;
  border: none;
  text-transform: UPPERCASE;
  font-weight: bold;
  color: #fff;
  -webkit-transition: background .3s ease;
          transition: background .3s ease; }
  .add-to-cart:hover {
    background: #b36800;
    color: #fff; }

.not-available {
  text-align: center;
  line-height: 2em; }
  .not-available:before {
    font-family: fontawesome;
    content: "\f00d";
    color: #fff; }

.tooltip-inner {
  padding: 1.3em; }

@-webkit-keyframes opacity {
  0% {
    opacity: 0;
    -webkit-transform: scale(3);
            transform: scale(3); }
  100% {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1); } }

@keyframes opacity {
  0% {
    opacity: 0;
    -webkit-transform: scale(3);
            transform: scale(3); }
  100% {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1); } }

</style>
</head>
<body>
<jsp:include page="menu1.jsp"></jsp:include>
<script type="text/javascript">
jQuery(document).ready(function($){

$('.live-search-list li').each(function(){
$(this).attr('data-search-term', $(this).text().toLowerCase());
});

$('.live-search-box').on('keyup', function(){

var searchTerm = $(this).val().toLowerCase();

    $('.live-search-list li').each(function(){

        if ($(this).filter('[data-search-term *= ' + searchTerm + ']').length > 0 || searchTerm.length < 1) {
            $(this).show();
        } else {
            $(this).hide();
        }

    });

});

});
</script>
<ul class="live-search-list">
<li>
<div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1"><img src="resources/products/qgis-1.png" /></div>
						  <div class="tab-pane" id="pic-2"><img src="resources/products/qgis-2.png" /></div>
						  <div class="tab-pane" id="pic-3"><img src="resources/products/qgis-3.png" /></div>
						  <div class="tab-pane" id="pic-4"><img src="resources/products/qgis-4.jpg" /></div>
						</div>
						<ul class="preview-thumbnail nav nav-tabs">
						  <li class="active"><a data-target="#pic-1" data-toggle="tab"><img src="resources/products/qgis-1.png" /></a></li>
						  <li><a data-target="#pic-2" data-toggle="tab"><img src="resources/products/qgis-2.png" /></a></li>
						  <li><a data-target="#pic-3" data-toggle="tab"><img src="resources/products/qgis-3.png" /></a></li>
						  <li><a data-target="#pic-4" data-toggle="tab"><img src="resources/products/qgis-4.jpg" /></a></li>
						</ul>
						
					</div>
					<div class="details col-md-6">
						<h3 class="product-title">QGIS</h3>
						<div class="rating">
							<div class="stars">
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
							</div>
							</div>
						<p class="product-description">QGIS is jam-packed with hidden gems at your fingertips. Automate map production, process geospatial data, and generate drool-worthy cartographic figures.</p>
						<h4 class="price">this product is available at <span>free</span> of cost</h4> 
						<h5 class="sizes">download link:
							<span class="size" data-toggle="tooltip" title="small">http://qgis.org/downloads/</span>
						</h5>
						<div class="action">
							<button class="add-to-cart btn btn-default" type="button">add to cart</button>
							<!--<button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button>-->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</li>
<!-- -------------------------------------------------------------------- -->
<li>
<div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-5"><img src="resources/products/grass-1.png" /></div>
						  <div class="tab-pane" id="pic-6"><img src="resources/products/grass-2.png" /></div>
						  <div class="tab-pane" id="pic-7"><img src="resources/products/grass-3.png" /></div>
						  <div class="tab-pane" id="pic-8"><img src="resources/products/grass-4.jpg" /></div>
						</div>
						<ul class="preview-thumbnail nav nav-tabs">
						  <li class="active"><a data-target="#pic-5" data-toggle="tab"><img src="resources/products/grass-1.png" /></a></li>
						  <li><a data-target="#pic-6" data-toggle="tab"><img src="resources/products/grass-2.png" /></a></li>
						  <li><a data-target="#pic-7" data-toggle="tab"><img src="resources/products/grass-3.png" /></a></li>
						  <li><a data-target="#pic-8" data-toggle="tab"><img src="resources/products/grass-4.jpg" /></a></li>
						</ul>
						
					</div>
					<div class="details col-md-6">
						<h3 class="product-title">GRASS GIS</h3>
						<div class="rating">
							<div class="stars">
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star"></span>
							</div>
							</div>
						<p class="product-description">GRASS GIS (Geographic Resources Analysis Support System) was developed by the US Army Corps of Engineers as a tool for land management and environmental planning.</p>
						<h4 class="price">this product is available at <span>free</span> of cost</h4> 
						<h5 class="sizes">download link:
							<span class="size" data-toggle="tooltip" title="small">https://grass.osgeo.org/download/software/</span>
						</h5>
						<div class="action">
							<button class="add-to-cart btn btn-default" type="button">add to cart</button>
						<!--<button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button>-->	
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</li>	
<!-- ------------------------------------------------------------------------- -->
<li>
<div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-9"><img src="resources/products/openjump-1.png" /></div>
						  <div class="tab-pane" id="pic-10"><img src="resources/products/openjump-2.png" /></div>
						  <div class="tab-pane" id="pic-11"><img src="resources/products/openjump-3.png" /></div>
						  <div class="tab-pane" id="pic-12"><img src="resources/products/openjump-4.png" /></div>
						</div>
						<ul class="preview-thumbnail nav nav-tabs">
						  <li class="active"><a data-target="#pic-9" data-toggle="tab"><img src="resources/products/openjump-1.png" /></a></li>
						  <li><a data-target="#pic-10" data-toggle="tab"><img src="resources/products/openjump-2.png" /></a></li>
						  <li><a data-target="#pic-11" data-toggle="tab"><img src="resources/products/openjump-3.png" /></a></li>
						  <li><a data-target="#pic-12" data-toggle="tab"><img src="resources/products/openjump-4.png" /></a></li>
						</ul>
						
					</div>
					<div class="details col-md-6">
						<h3 class="product-title">OpenJump</h3>
						<div class="rating">
							<div class="stars">
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star"></span>
								<span class="fa fa-star"></span>
							</div>
							</div>
						<p class="product-description">OpenJump GIS (JAVA Unified Mapping Platform) started as a first class conflation project. It handles large data sets well. Rendering is above-grade with a whole slew of mapping options like pie charts, plotting and choropleth maps.</p>
						<h4 class="price">this product is available at <span>free</span> of cost</h4> 
						<h5 class="sizes">download link:
							<span class="size" data-toggle="tooltip" title="small">http://www.openjump.org/</span>
						</h5>
						<div class="action">
							<button class="add-to-cart btn btn-default" type="button">add to cart</button>
						<!--<button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button>-->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</li>
</ul>
<br><br>	
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>