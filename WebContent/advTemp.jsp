<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="change.js"></script>
<title>Insert title here</title>
</head>
<body>
 -->
 
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="change1.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		
		<!-- Bootstrap CSS -->
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="includes/css/bootstrap-glyphicons.css" rel="stylesheet">
		
		<!-- Custom CSS -->
		<link href="includes/css/styles.css" rel="stylesheet">
		<link href="styleall.css" rel="stylesheet">
		<!-- Include Modernizr in the head, before any other Javascript -->
		<script src="includes/js/modernizr-2.6.2.min.js"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
		
		
		
<title>Select Category</title>

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
							<a href="index.html">Home</a>
						</li>
						<li>
							<a href="contactus.html">Contact US</a>
						</li>
						<li>
							<a href="advsearch.html">Adv Search</a>
						</li>
					</ul><!-- End of nav ul -->
					<form class="navbar-form">
						<input type="text" class="form-control" placeholder="search this site..." id="searchInput">
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
            	<div class="">
            	<div class="well">
            		<div class="page-header">
            			<h1>Advance Search <small> Narrow your Search</small></h1>
            		</div><!-- End of page-header -->
            		<p class="lead">Select the filters and click ok to search!</p>

            		
					<div class="row">
<div class="col-sm-4"></div>
<div class="col-sm-4" >
 
 
<form action="advsearch1" method="get" id="keyword1" name="keyword1" enctype="application/x-www-form-urlencoded">
	    <strong>Select Category</strong>
	    <select class="form-control" id="select1" onchange="changeTest()" name="keyword">
            		   	<option selected="selected" value="NONE">- select -</option>
		   	<option value="MEN">Men</option>
		   	<option value="WOMEN">Women</option>
		   	<option value="KIDS">Kids</option>
		   	</select>

		   <!-- 	<input type="submit"  class="btn btn-primary" id="submit" value="search"/> -->
		   	</form>
</body>


        <script type="text/javascript">
        function changeTest(){
        document.forms["keyword1"].submit();
    /* document.keyword.submit(); */
    }
        </script>

</html>
