<!DOCTYPE html>

<html>
	<head>
		
		<!-- Website Title & Description for Search Engine purposes -->
		<title></title>
		<meta name="description" content="">
		
		<!-- Mobile viewport optimized -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		 
		<!-- Bootstrap CSS -->
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="includes/css/bootstrap-glyphicons.css" rel="stylesheet">
		
		<!-- Custom CSS -->
		<link href="includes/css/styles.css" rel="stylesheet">
		<link href="styleall.css" rel="stylesheet">
		<!-- Include Modernizr in the head, before any other Javascript -->
		<script src="wds-image-gallery1/wds-image-gallery/js/modernizr-2.6.2.min.js"></script>
		

	</head>
	<body>
	
	<div class="container" id="main">

		<div class="navbar navbar-fixed-top">
			<div class="container">
				<button class="navbar-toggle" data-target=".navbar-responsive-collapse" data-toggle="collapse" type="button">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
				<a class="navbar-brand" href="homepage.jsp"><img src="images/logo.jpg" alt="Your Logo"></a>
				<div class="nav-collapse collapse navbar-responsive-collapse">
					<ul class="nav navbar-nav">
						<li class="active">
							<a href="homepage.jsp">Home</a>
						</li>
						<li>
							<a href="contactus.jsp">Contact US</a>
						</li>
						<li>
							<a href="advTemp.jsp">Advanced Search</a>
						</li>
					</ul><!-- End of nav ul -->
					<form class="navbar-form" method="post" action="search">
						<input type="text" class="form-control" placeholder="search this site" id="searchInput" name="keyword">
						<button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
					</form><!-- End navbar-form -->
					
					
				</div><!-- End of navbar-collapse div -->
			</div>
		</div><!-- End of navbar -->
		</div>
<div class="container" id="secnav">


        <div class="row">
          
            <!-- sidebar -->
            <div class="column col-sm-3" id="sidebar">
<%System.out.println("\n \n*****Home Page!!******");   
 %>
  				<!-- Navigation Bar code -->
<div >
    <ul class="nav nav-tabs nav-stacked">
        <li><a href="homepage.jsp">Home</a></li>
        
        <li>
            <a href="navigator?keyword=men">MENS &#9662;</a>
            <ul>
<li id="sublinks" ><a href="navigator?keyword=men casual">CASUALS</a></li>
<li id="sublinks" ><a href="navigator?keyword=men flipflop">FLIPFLOPS</a></li>
<li id="sublinks" ><a href="navigator?keyword=men sneaker">SNEAKERS</a></li>
<li id="sublinks" ><a href="navigator?keyword=men running">RUNNING</a></li>
<li id="sublinks" ><a href="navigator?keyword=men walking">WALKING</a></li>
<li id="sublinks" ><a href="navigator?keyword=men oxford">OXFORDS</a></li>
<li id="sublinks" ><a href="navigator?keyword=men SLIPPER">SLIPPERS</a></li>
<li id="sublinks" ><a href="navigator?keyword=men FORMAL">FORMAL</a></li>
<li id="sublinks" ><a href="navigator?keyword=men CYCLING">CYCLING</a></li>
							
						</ul>
        </li>
        <li>
            <a href="navigator?keyword=women">WOMENS &#9662;</a>
            <ul>
<li id="sublinks" ><a href="navigator?keyword=women casual">CASUALS</a></li>
<li id="sublinks" ><a href="navigator?keyword=women flipflop">FLIPFLOPS</a></li>
<li id="sublinks" ><a href="navigator?keyword=women sneaker">SNEAKERS</a></li>
<li id="sublinks" ><a href="navigator?keyword=women running">RUNNING</a></li>
<li id="sublinks" ><a href="navigator?keyword=women walking">WALKING</a></li>
<li id="sublinks" ><a href="navigator?keyword=women slipper">SLIPPER</a></li>
<li id="sublinks" ><a href="navigator?keyword=women party">PARTY</a></li>
<li id="sublinks" ><a href="navigator?keyword=women winter">WINTER</a></li>
<li id="sublinks" ><a href="navigator?keyword=women boots">BOOTS</a></li>
<li id="sublinks" ><a href="navigator?keyword=women heels">HEELS</a></li>



							</ul>
        </li>
        <li>
            <a href="navigator?keyword=kid">KIDS &#9662;</a>
            <ul>
<li id="sublinks" ><a href="navigator?keyword=kid loafer">LOAFERS</a></li>
<li id="sublinks" ><a href="navigator?keyword=kid slipper">SLIPPERS</a></li>
<li id="sublinks" ><a href="navigator?keyword=kid sandal">SANDALS</a></li>
<li id="sublinks" ><a href="navigator?keyword=kid casual">CASUALS</a></li>
<li id="sublinks" ><a href="navigator?keyword=kid sneaker">SNEAKERS</a></li>
<li id="sublinks" ><a href="navigator?keyword=kid running">RUNNING</a></li>
<li id="sublinks" ><a href="navigator?keyword=kid party">PARTY</a></li>
<li id="sublinks" ><a href="navigator?keyword=kid winter">WINTER</a></li>
<li id="sublinks" ><a href="navigator?keyword=kid cycling">CYCLING</a></li>
<li id="sublinks" ><a href="navigator?keyword=kid boots">BOOTS</a></li>

						</ul>
        </li>
        
    </ul>
</div>

            </div>
            <!-- /sidebar -->
            <!-- main -->
            <div class="column col-sm-9" id="main">


		<div class="carousel slide pull-left" id="myCarousel">
			<!-- carousel Indicators -->
			<ol class="carousel-indicators">
				<li class="active" data-slide-to="0" data-target="#myCarousel"></li>
				<li data-slide-to="1" data-target="#myCarousel"></li>
				<li data-slide-to="2" data-target="#myCarousel"></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active" id="slide1">
					<div class="carousel-caption">
						<h4>Men Wear</h4>
						<p>Find your favourite stuff, right here!</p>
					</div><!-- end of carousel-caption -->
				</div><!-- End of Item -->
				<div class="item" id="slide2">
					<div class="carousel-caption">
						<h4>Women wear</h4>
						<p>Find the most beautiful footwear that matches your style.</p>
					</div><!-- end of carousel-caption -->
				</div><!-- End of Item -->
				<div class="item" id="slide3">
					<div class="carousel-caption">
						<h4>Kids wear</h4>
						<p>Find all sportive kids Footwear, right here!</p>
					</div><!-- end of carousel-caption -->
				</div><!-- End of Item -->
		</div><!-- End of carousel-inner -->
		<!-- Controls -->
		<a class="left carousel-control" data-slide="prev" href="#myCarousel"><span class="icon-prev"></span></a>
		<a class="right carousel-control" data-slide="next" href="#myCarousel"><span class="icon-next"></span></a>
		</div><!-- End of myCarousel -->
		</div><!-- /col-9 -->
	</div><!-- End of secnav -->
		
	<!-- First try for the online version of jQuery-->
	<script src="http://code.jquery.com/jquery.js"></script>
	
	<!-- If no online access, fallback to our hardcoded version of jQuery -->
	<script>window.jQuery || document.write('<script src="includes/js/jquery-1.8.2.min.js"><\/script>')</script>
	
	<!-- Bootstrap JS -->
	<script src="bootstrap/js/bootstrap.min.js"></script>
	
	<!-- Custom JS -->
	<script src="includes/js/script.js"></script>
	
	</body>
</html>

