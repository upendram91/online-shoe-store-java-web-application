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
		<script src="includes/js/modernizr-2.6.2.min.js"></script>
		

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
				<a class="navbar-brand" href="/"><img src="images/logo.jpg" alt="Your Logo"></a>
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
		
<div class="container" id="secnav">


        <div class="row">
          
            <!-- sidebar -->
            <div class="column col-sm-3" id="sidebar">

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
            	
				<div class="tabbable">
					<ul class="nav nav-tabs">
						<li class="active">
							<a href="#tab1" data-toggle="tab">Irving </a>
						</li>
						<li>
							<a href="#tab2" data-toggle="tab">Plano</a>
						</li>
						<li>
							<a href="#tab3" data-toggle="tab">Dallas</a>
						</li>
						<li>
							<a href="#tab4" data-toggle="tab">Houston</a>
						</li>
						<li>
							<a href="#tab5" data-toggle="tab">Arlington</a>
						</li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="tab1">
							<h4><span class="glyphicon glyphicon-map-marker"></span> Our Location <small>More like our favourite surf spot</small></h4>
							<iframe src="https://www.google.com/maps/embed?pb=!1m29!1m12!1m3!1d107280.65867191738!2d-96.9499587477286!3d32.83146550186541!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m14!1i0!3e6!4m5!1s0x864e82fea0d6c559%3A0x178fa910963abb51!2s1057+W+Rochelle+Rd%2C+Irving%2C+TX+75062!3m2!1d32.845103099999996!2d-96.9586432!4m5!1s0x864e992365832e5b%3A0xd2a969e7a90b73f6!2sDallas%2C+TX+75201!3m2!1d32.7863301!2d-96.79625279999999!5e0!3m2!1sen!2sus!4v1406019930092" width="50%" height="200" frameborder="0" style="border:0"></iframe>
							<h3>Irving Feet First</h3>
							<p>	Address: <br>1057 W Rochelle Rd <br>Irving<br> TX-750629<br> Hours:9AM - 9PM</p>
						</div><!-- End tab-pane -->
						<div class="tab-pane" id="tab2">
							<h4><span class="glyphicon glyphicon-map-marker"></span> Our Location <small>More like our favourite surf spot</small></h4>
							<iframe src="https://www.google.com/maps/embed?pb=!1m29!1m12!1m3!1d214349.78192967747!2d-96.96950413810261!3d32.91890833045113!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m14!1i0!3e6!4m5!1s0x864c2358afb97ce7%3A0xe396e0b873520c3b!2s6200+Windhaven+Pkwy%2C+Plano%2C+TX+75093!3m2!1d33.0556252!2d-96.8343447!4m5!1s0x864e992365832e5b%3A0xd2a969e7a90b73f6!2sDallas%2C+TX+75201!3m2!1d32.7863301!2d-96.79625279999999!5e0!3m2!1sen!2sus!4v1406019848591" width="50%" height="200" frameborder="0" style="border:0"></iframe>
							<h4>Plano Feet First</h4>
							<p>	Address: <br>6200 Windhaven Pkwy<br> Plano<br> TX 75093<br> Hours:9AM - 9PM</p>
						</div><!-- End tab-pane -->
						<div class="tab-pane" id="tab3">
							<h4><span class="glyphicon glyphicon-map-marker"></span> Our Location <small>More like our favourite surf spot</small></h4>
							<iframe src="https://www.google.com/maps/embed?pb=!1m29!1m12!1m3!1d107341.40019030913!2d-96.76145044910733!3d32.7811541984585!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m14!1i0!3e6!4m5!1s0x864ea5990b6ae067%3A0x527b25a5c9c681d1!2s1999+N+Bryan+St%2C+Mesquite%2C+TX+75149!3m2!1d32.7783552!2d-96.59582309999999!4m5!1s0x864e992365832e5b%3A0xd2a969e7a90b73f6!2sDallas%2C+TX+75201!3m2!1d32.7863301!2d-96.79625279999999!5e0!3m2!1sen!2sus!4v1406019797627" width="50%" height="200" frameborder="0" style="border:0"></iframe>
							<h4>Dallas Feet First</h4>
							<p>	Address: <br>1999 Bryan St<br> Dallas<br> TX 75201<br> Hours:9AM - 9PM</p></div><!-- End tab-pane -->
						<div class="tab-pane" id="tab4">
							<h4><span class="glyphicon glyphicon-map-marker"></span> Our Location <small>More like our favourite surf spot</small></h4>
							<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3463.05902635385!2d-95.37365849999999!3d29.775934699999993!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8640b8b585282345%3A0x2f574b9a9d7d9abe!2s2101+Johnson+St%2C+Houston%2C+TX+77007!5e0!3m2!1sen!2sus!4v1406019677777" width="50%" height="200" frameborder="0" style="border:0"></iframe>
							<h4>Houston Feet First</h4>
							<p>	Address: <br>2101 Johnson Pkwy<br> Houston<br> TX 77058<br> Hours:9AM - 9PM</p></div><!-- End tab-pane -->
						<div class="tab-pane" id="tab5">
							<h4><span class="glyphicon glyphicon-map-marker"></span> Our Location <small>More like our favourite surf spot</small></h4>
							<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3356.318054191932!2d-97.12169129999998!3d32.730744300000005!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x864e7d0e25cf0b95%3A0x4ffe8a96ee1ceeb9!2s607+Summit+Ave%2C+The+University+of+Texas+at+Arlington%2C+Arlington%2C+TX+76013!5e0!3m2!1sen!2sus!4v1406019552210" width="50%" height="200" frameborder="0" style="border:0"></iframe>
							<h4>Arlington Feet First</h4>
							<p>	Address: <br>607 Summit Ave<br> Arlington <br> TX 76013<br> Hours:9AM - 9PM</p></div><!-- End tab-pane -->
						
					</div><!-- End tabs-content -->
				</div><!-- End Tabbable -->
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

