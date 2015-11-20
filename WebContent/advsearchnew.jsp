<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


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
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
		
		<script src="jquery-2.1.1.js"></script>
		<script src="change.js"></script>
		
		<!-- <script>
// Attach a submit handler to the form
$(function()
		{
$("#_cat").change(function() {
	  // Stop form from submitting normally
	  event.preventDefault();
	  var url='advsearch1?keyword=MEN';
	  // Send the data using post
	   $('submit').hide();
	  var xhr= new XMLHttpRequest();
	  xhr.open('POST',url,true);
	  xhr.send();	  
	  $('submit').hide();
});
});
});
</script> -->
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
				<a class="navbar-brand" href="/"><img src="images/logo.png" alt="Your Logo"></a>
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
    <ul class="nav nav-tabs nav-stacked" id="">
        <li><a href="index.html">Home</a></li>
        
        <li>
            <a href="results.html">MENS &#9662;</a>
            <ul>
							<li id="sublinks" ><a href="results.html">CASUALS</a></li>
							<li id="sublinks" ><a href="results.html">FLIPFLOPS</a></li>
							<li id="sublinks" ><a href="results.html">SNEAKERS</a></li>
							<li id="sublinks" ><a href="results.html">RUNNING</a></li>
							<li id="sublinks" ><a href="results.html">WALKING</a></li>
							<li id="sublinks" ><a href="results.html">LOAFERS</a></li>
							<li id="sublinks" ><a href="results.html">SLIPPERS</a></li>
							<li id="sublinks" ><a href="results.html">OXFORDS</a></li>
							<li id="sublinks" ><a href="results.html">SANDALS</a></li>
						</ul>
        </li>
        <li>
            <a href="results.html">WOMENS &#9662;</a>
            <ul>
							<li id="sublinks" ><a href="results.html">CASUALS</a></li>
							<li id="sublinks" ><a href="results.html">FLIPFLOPS</a></li>
							<li id="sublinks" ><a href="results.html">SNEAKERS</a></li>
							<li id="sublinks" ><a href="results.html">RUNNING</a></li>
							<li id="sublinks" ><a href="results.html">WALKING</a></li>
							<li id="sublinks" ><a href="results.html">LOAFERS</a></li>
							<li id="sublinks" ><a href="results.html">SLIPPERS</a></li>
							<li id="sublinks" ><a href="results.html">OXFORDS</a></li>
							<li id="sublinks" ><a href="results.html">SANDALS</a></li>
						</ul>
        </li>
        <li>
            <a href="results.html">KIDS &#9662;</a>
            <ul>
							<li id="sublinks" ><a href="results.html">CASUALS</a></li>
							<li id="sublinks" ><a href="results.html">FLIPFLOPS</a></li>
							<li id="sublinks" ><a href="results.html">SNEAKERS</a></li>
							<li id="sublinks" ><a href="results.html">RUNNING</a></li>
							<li id="sublinks" ><a href="results.html">WALKING</a></li>
							<li id="sublinks" ><a href="results.html">LOAFERS</a></li>
							<li id="sublinks" ><a href="results.html">SLIPPERS</a></li>
							<li id="sublinks" ><a href="results.html">OXFORDS</a></li>
							<li id="sublinks" ><a href="results.html">SANDALS</a></li>
						</ul>
        </li>
        <li><a href="contactus.html">Contact Us</a></li>
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
<form name="abc" action="advsearch1" method="post"  id="formid">

	<div class="row">					
		<label for="_cat" id="_cat1">Category:</label>
	    <select class="form-control" id="_cat" name="keyword">
		   	<option selected="selected" value="NONE">- select -</option>
		   	<option value="MEN">Mens</option>
		   	<option value="WOMEN">Womens</option>
		   	<option value="KIDS">Kids</option>
	    </select>
	<div id="subcat">
		<div id="_brand2">
			<label for="_brand" id="_brand1">Brand:</label>
	    	<select class="form-control" id="_brand">
		    	<option value="">- select -</option>
		    	<option value="NIK">Nike</option>
		    	<option value="ADI">Adidas</option>
		    	<option value="REE">Reebok</option>
		    	<option value="PUM">Puma</option>
		    	<option value="WOO">Woodland</option>
	    	</select>
	    </div>
		<div id="_item1">
			<label for="s-state" id="_item1">Item:</label>
	    	<select class="form-control" id="_item">
		    	<option value="">- select -</option>
		    	<option value="SHOE">Shoes</option>
		    	<option value="SLIPPERS">Slippers</option>
	    	</select>			
		</div>							
		<div id="_type20">
			<label for="s-state" id="_type1">Type:</label>
	    	<select class="form-control" id="_type">
		    	<option value="">- select -</option>
		    	<option value="CA">Casuals</option>
		    	<option value="FL">FlipFlops</option>
		    	<option value="IL">Sneakers</option>
		    	<option value="NH">Running</option>
		    	<option value="WA">Walking</option>
		    	<option value="OX">OXFORDS</option>
	    	</select>
	    </div>
	    <div id="_type21">
			<label for="s-state" id="_type11">Type:</label>
	    	<select class="form-control" id="_type01">
		    	<option value="">- select -</option>
		    	<option value="CA">Casuals</option>
		    	<option value="FL">FlipFlops</option>
		    	<option value="IL">Sneakers</option>
		    	<option value="NH">Running</option>
		    	<option value="WA">Walking</option>
	    	</select>
	    </div>
	    <div id="_type22">
			<label for="s-state" id="_type12">Type:</label>
	    	<select class="form-control" id="_type02">
		    	<option value="">- select -</option>
		    	<option value="LO">Loafers</option>
		    	<option value="SL">Slippers</option>
		    	<option value="SA">Sandals</option>
	    	</select>
	    </div>
		<div id="_price2">
			<label for="s-state" id="_price1">Price:</label>
	    	<select class="form-control" id="_price">
		    	<option value="">- select -</option>
		    	<option value="CA">0-50</option>
		    	<option value="IL">50-100</option>
		    	<option value="NH">100-150</option>
		    	<option value="PA"></option>
	    	</select>
	    </div>
							
		<div id="_color2">
			<label for="s-state" id="_color1">Color:</label>
	    	<select class="form-control" id="_color">
		    	<option value="">- select -</option>
		    	<option value="CA">Red</option>
		    	<option value="IL">Black</option>
		    	<option value="NH">Yellow</option>
		    	<option value="PA">White</option>
		    	<option value="PA">Green</option>
		    	<option value="PA">Blue</option>
		    	<option value="PA">Cyan</option>
	    	</select>
	    </div>
							
			<div id="_mat2">
				<label for="s-state" id="_mat1">Materials:</label>
		    	<select class="form-control" id="_mat">
			    	<option value="">- select -</option>
			    	<option value="CA">Leather</option>
			    	<option value="IL"></option>
			    	<option value="NH"></option>
			    	<option value="PA"></option>
		    	</select>
	    	</div>


       		<div id="_heel2"><!-- Heel HEight -->
       			<label for="_heel" id="_heel1">Heel Height:</label>
       			<select class="form-control " id="_heel">
			    	<option value="">- select -</option>
			    	<option value="CA">0</option>
			    	<option value="IL">1</option>
			    	<option value="NH">2</option>
			    	<option value="PA">3</option>
			    	<option value="PA">4</option>
			    	<option value="PA">5</option>
    			</select>
			</div><!-- end of heel -->
		</div><!-- End row sub cat of cat -->
	</div><!-- End row for main cat-->

<div class="row"> <!-- row for search button -->
<div class="col-sm-4">
</div><!-- end 1st column -->
<div class="col-sm-4">
<div align="center"><!-- New Row -->
					<input type="submit"  class="btn btn-primary" id="submit" value="search"/>
</div><!-- end algn center div -->
</div>
<div class="col-sm-4"></div><!-- end 3rd column for search row -->
</div><!-- End search row -->
</form>
</div><!-- End col-sm-4 -->

<div class="col-sm-4"></div>
</div><!-- End row -->

	    
            	</div><!-- End well -->		
            </div><!-- end col-8 -->
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

