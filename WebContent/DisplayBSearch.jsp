<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Basic Search Results</title>

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


<%
System.out.println("\n \n*****Inside Basic Search View Page!!******");   
System.out.println("\n The data are retrieved and displayed");
int c1=0,c4nr=0;
int shid1=0;//for sending as id to itedesp.html
int shid=0;
int i=0;
int len=0;
int j=0;
int p=0;
int[] flag=new int[100];
int[] shidflag=new int[100];
BasicSearch_Controller shids=new BasicSearch_Controller();
int size1=0;
int c2=0;
int tlen=0;
 

ArrayList<BasicSearch_Controller> basicsearch=shids.SendResult();
String token=shids.svalue();
int sflag=shids.sflag();
System.out.println("shids  value is"+sflag);
int nrow=shids.numrow();
size1=basicsearch.size();
for(i=0; i<size1; i++)
{
basicsearch.get(i);	
}
Iterator<BasicSearch_Controller> iterator = basicsearch.iterator();
%>



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
            <div class="column col-sm-9" id="main">
            	<div class="alert alert-success alert-width fade in" id="successAlert">
					<button type="button" class="close" data-hide="alert"  onclick="$('.alert').hide()">&times;</button>
					<h4>Success</h4>
					<p>You just made the element display by using Jquery. click "X" on the top-right corner to close this.</p>
					<form name="abc">
					<label for="s-state">Category:</label>
			    	<select id="s-state">
				    	<option value="">- select -</option>
				    	<option value="ME">Mens</option>
				    	<option value="WO">Womens</option>
				    	<option value="KI">Kids</option>
			    	</select>
					<label for="s-state">Brand:</label>
			    	<select id="s-state">
				    	<option value="">- select -</option>
				    	<option value="NIK">Nike</option>
				    	<option value="ADI">Adidas</option>
				    	<option value="REE">Reebok</option>
				    	<option value="PUM">Puma</option>
				    	<option value="WOO">Woodland</option>
			    	</select>
					<label for="s-state">Item:</label>
			    	<select id="s-state">
				    	<option value="">- select -</option>
				    	<option value="NIK">Shoes</option>
				    	<option value="ADI">Slippers</option>
			    	</select>
					<label for="s-state">Type:</label>
			    	<select id="s-state">
				    	<option value="">- select -</option>
				    	<option value="CA">Casuals</option>
				    	<option value="IL">Sneakers</option>
				    	<option value="NH">Running</option>
				    	<option value="PA">Loafers</option>
			    	</select>
					<label for="s-state">Price:</label>
			    	<select id="s-state">
				    	<option value="">- select -</option>
				    	<option value="CA">0-50</option>
				    	<option value="IL">50-100</option>
				    	<option value="NH">100-150</option>
				    	<option value="PA"></option>
			    	</select>
					<label for="s-state">Color:</label>
			    	<select id="s-state">
				    	<option value="">- select -</option>
				    	<option value="CA">Red</option>
				    	<option value="IL">Black</option>
				    	<option value="NH">Yellow</option>
				    	<option value="PA">White</option>
				    	<option value="PA">Green</option>
				    	<option value="PA">Blue</option>
				    	<option value="PA">Cyan</option>
			    	</select>
					<label for="s-state">Materials:</label>
			    	<select id="s-state">
				    	<option value="">- select -</option>
				    	<option value="CA">Leather</option>
				    	<option value="IL"></option>
				    	<option value="NH"></option>
				    	<option value="PA"></option>
			    	</select>
					<label for="s-state">Heel Height:</label>
			    	<select id="s-state">
				    	<option value="">- select -</option>
				    	<option value="CA">0</option>
				    	<option value="IL">1</option>
				    	<option value="NH">2</option>
				    	<option value="PA">3</option>
				    	<option value="PA">4</option>
				    	<option value="PA">5</option>
			    	</select>
					<input class="btn btn-default btn-small" type="button" id="submit" value="search"/>
				</form>
				</div><!-- End alert -->
            	<div class="well">
            		<div class="row">
            			<div class="col-sm-4"></div>
						<div class="col-sm-4">
							<a class="btn btn-small btn-primary" id="alertMe" href="">Sort your search</a>
						</div>
						<div class="col-sm-4"></div>
            		</div><!-- Emd Row -->
            		<div class="row" id="featuresHeading">
						<div class="col-12">
							<h2>Search Results</h2>
							<h4>Your search for "<%=token%>" has returned "<%=nrow%>" results!!</h4>
							</div><!-- End col-12 -->
					</div><!-- End of features Heading -->
            		<%
            		//BasicSearch bs=new BasicSearch();
					//bs.
            		while(iterator.hasNext()) 
					{
            			BasicSearch_Controller basicsearch1=(BasicSearch_Controller)iterator.next();
            			//int flagval=basicsearch1.getFlag();
            			shidflag[j]=basicsearch1.getFlag();
            			++j;
            			if(sflag!=basicsearch1.getFlag())
            			{
            				if(c2==0)
            				{
            			--sflag;
            			if(c1==0||c1==1)
            			{
            			%>
            			</div>
            				<%
            				c1=0;
            				c4nr=0;
            				%>
            				<hr>
            				<h4>Follwing results are not the exact match for your search "<%=token%>".<br> 
            				However, we thought you might be interested in these products!!!!!</h4>
            				<%
            				++c2;
            				}
            				
            				
            			}
            			}
            			
        	           		 
        					if(c1==3)//when three elements are displayed in a row then only this block wl be exe
        					{
        					c1=0;
        					c4nr=0;
        					}
        					if(c1==0&&c4nr==0)//after first time to enter new tr
        					{
        										%>
        		            <div class="row" id="features"><!-- tr -->
        		            <%
        		            c4nr=1;
        		            }
        					if(c1<3)
        					{
        						
        		            %>
        					<div class="col-sm-4 feature"><!-- td -->
        					<%//System.out.println("printing 1 item"); %>
        					
        						
        						<div class="panel">
        							<div class="panel-heading">
        								<div class="panel-title" id="pane-title-id"><%=basicsearch1.getShoenme()%></div><!-- Product name -->
        							</div><!-- End panel-heading -->
        							<img src="images1/<%=basicsearch1.getImage()%>" width="170" height="198" alt="html5" class="img-circle"><!-- Product image -->
        							<p>flag: <%=basicsearch1.getFlag()%>
        							<p>Price: <%=basicsearch1.getPrice()%> </p><!-- Product price -->
        							<p>ID:<%=basicsearch1.getShid()%></p><!-- Product ID -->
        							
        							<%
        							shid=basicsearch1.getShid();
        							System.out.println("Shid in displayBSearch:");
        						System.out.println(shid);
        							%>						
        							<form action="itemlist?keyword=<%=basicsearch1.getShid()%>" method="post">
        							<input class="btn btn-warning btn-block" type="submit" name="keyword" value="View More Details">
        							</form>
        							<%-- <p type="hidden" name="keyword" value="<%=basicsearch1.getShid()%>">
        							<a class="btn btn-warning btn-block" id="<%=basicsearch1.getShid()%>;" href="/src/org/team4/semistercoder/ItemDescription_Controller.java?keyword='<%=basicsearch1.getShid()%>'">View More Details</a>
        							 --%>
        							
        							
        							
         
        							
        							
        							</div><!-- End panel -->
        							</div><!-- End col-sm-4 feature -->
        							<!-- closing td -->
        					<%
        					++c1;
        					} //end of if loop
        					if(c1==3)
        					{
        						
        					%>
        					<%//System.out.println("printed 3 items"); %>
        					</div><!-- End of features --><!-- closing tr -->
        <%
        }//end of if loop
        					
        }//end of while loop


        if(c1==1||c1==0)
        {
        	System.out.println("Executing in a wrong way!!");
        %>
        </div><!-- End of features --><!-- closing tr -->
        <% }


                    		

        //outside while loop the tr tag exits only if the c1 value is either 1 or 0 but not 2..
        
            			
            		%>     		


            	</div><!-- End well -->		
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

