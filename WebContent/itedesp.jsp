<%@ page import ="java.io.IOException" %>
<%@ page import ="java.sql.ResultSet" %>
<%@ page import =" java.sql.SQLException" %>
<%@ page import =" javax.servlet.ServletException" %>
<%@ page import =" javax.servlet.annotation.WebServlet" %>
<%@ page import =" javax.servlet.http.HttpServlet" %>
<%@ page import =" javax.servlet.http.HttpServletRequest" %>
<%@ page import =" javax.servlet.http.HttpServletResponse" %>
<%@ page import="java.util.Iterator" %>
<%@ page import =" java.lang.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@ page import ="org.team4.semistercoder.service.SearchService_Model" %>
<%@ page import =" org.*"%>
<%@ page import ="org.team4.semistercoder.BasicSearch_Controller" %>
<%@ page import ="org.team4.semistercoder.service.ItemDisplay_Model" %>
<%@ page import ="org.team4.semistercoder.ItemDescription_Controller" %>

<%
	int shid1=0;//for sending as id to itedesp.html
int shid=0;
int i=0;
int len=0;
int j=0;
int p=0;
int[] flag=new int[100];
int size1=0;

ArrayList<ItemDescription_Controller> result;
ItemDescription_Controller it=new ItemDescription_Controller();
ItemDescription_Controller bsobj = new ItemDescription_Controller(); 
System.out.println("before method from bs is called");
ArrayList<ItemDescription_Controller> itemdescription=bsobj.SendResult();

Iterator<ItemDescription_Controller> iterator = itemdescription.iterator();
System.out.println("\n \n*****Inside Item Description View Page!!******");   
System.out.println("\n The data are retrieved and displayed");

%>


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
            <h3>PRODUCT DESCRIPTION</h3>
            <div class="column col-sm-9" id="main">
            	<div class="well">
            		<div class="row">
            		<div class="col-sm-4">
            		<%	 while(iterator.hasNext())
            					 {
            						 ItemDescription_Controller id1=(ItemDescription_Controller)iterator.next();
            		%>
            			<h4><%=id1.getShoenme()%></h4>
            			
							<img src="images1/<%=id1.getImage()%>" class="thumbnail">	
            		</div><!-- End col-ms-4 -->
            		<div class="col-sm-8">
            			<p>Brand:	<%=id1.getBrand()%></p>
            			  <p>Sub Category:	<%=id1.getSubc()%> </p> 
            			<p>Price:	<%=id1.getPrice()%> </p>
            			<p>Shoe Description:	<%=id1.getDescp()%></p>
            			
            			<label for="s-state">Available Stock Details in Stores</label>
				    	<br>
				    	<p>@ Irving:	<%=id1.getIStore()%></p>
				    	<p>@ Plano:		<%=id1.getPStore()%></p>
				    	<p>@ Dallas:	<%=id1.getDStore()%></p>
				    	<p>@ Houston:	<%=id1.getHStore()%></p>
				    	<p>@ Arlington:	<%=id1.getAStore()%></p>				
				    	
						<%--<a class="btn btn-default" role="button" href="#myModal" data-toggle="modal"><span class="glyphicon glyphicon-hand-up"></span> Find!</a>
						<p class="lead">Stock from Store 1 is 10</p>--%>
						
						
            		</div><!-- End col-ms-8 -->
            		
            	</div><!-- End row -->
            	</div><!-- End well -->		
			</div><!-- /col-9 -->
	</div><!-- End of secnav -->
		<%
            				}  //end of while
						 %> 
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

