<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="icon" type="image/png" href="resources/images/earth.png">
<title>Welcome</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
.carousel {
	background: #2f4357;
	margin-top: 20px;
}

.carousel .item img {
	margin: 0 auto; /* Align slide image horizontally center */
}

.bs-example {
	margin: 20px;
}

.tales {
	width: 100%;
}

.carousel-inner {
	width: 100%;
	max-height: 400px
}

</style>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("button").click(function(){
        $("#div1").fadeToggle();

    });
});
</script> -->
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>

	<c:if test="${showContactUs}">
		<jsp:include page="contactus.jsp"></jsp:include>
	</c:if>

<!-- 	<button>Click to fade in/out boxes</button>
	<br><br><br><br><br>
 	<div id="div1" style="width:1000px;height:1000px;"> -->
	<!-- -------------------------------------------------------------- -->
	<div class="bs-example">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Carousel indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>
			<!-- Wrapper for carousel items -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img class="first-slide home-image" src="resources\images\software1.jpg" alt="First Slide">
				</div>
				<div class="item">
					<img src="resources\images\books1.jpg" alt="Second Slide">
				</div>
				<div class="item">
					<img src="resources\images\satellite_image1.jpg" alt="Third Slide">
				</div>
				<div class="item">
					<img src="resources\images\tutorials1.jpg" alt="Fifth Slide">
				</div>
			</div>
			<!-- Carousel controls -->
			<a class="carousel-control left" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a> <a class="carousel-control right" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div>
<!-- 	</div> -->
	<script
		type="$(document).ready(function () {           
            $('.Carousel').Carousel();       
        });"></script>
	<!-- ----------------------------------------------- -->
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>