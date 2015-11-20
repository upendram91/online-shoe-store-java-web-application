<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<title>Advanced Search Page</title>

</head>
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
<%@ page import="java.util.Arrays"%>
<%@ page import="java.util.HashSet"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Set"%>
<%@ page import ="org.team4.semistercoder.service.AdvancedSearch_Model1" %>
<%@ page import =" org.*"%>
<%@ page import ="org.team4.semistercoder.AdvancedSearch_Controller1" %>
<%
int c1=0,c4nr=0;
int shid1=0;
int shid=0;
int i=0;
int len=0;
int j=0;
//int p=0;
int[] flag=new int[100];
int[] shidflag=new int[100];
AdvancedSearch_Controller1 shids=new AdvancedSearch_Controller1();
int size1=0;
//int sflag=1;
int c2=0;
int tlen=0;

String[] brand=new String[100];

String[] subcat=new String[100];
String[] color=new String[100];
String[] mat=new String[100];
String[] size=new String[100];
String[] heel=new String[100];
String[] strsize=new String[100];
String[] strheel=new String[100];


int q=0;
//String[] price=new String[100];
try{
	ArrayList<AdvancedSearch_Controller1> basicsearch=shids.SendResult();
	String word=shids.sendword();
	System.out.println("view2: getting cat from controller");
	System.out.println(word);
	Iterator<AdvancedSearch_Controller1> iterator = basicsearch.iterator();
	//System.out.println("before while in view2");
while(iterator.hasNext()) 
{
	//System.out.println("inside while in view2");
	AdvancedSearch_Controller1 basicsearch1=(AdvancedSearch_Controller1)iterator.next();
	//System.out.println("after creating obj for iterator");
		brand[j]=basicsearch1.getBrand();		
		subcat[j]=basicsearch1.getSubc();
		color[j]=basicsearch1.getColor();
		mat[j]=basicsearch1.getMat();
		size[j]=basicsearch1.getSize();
		heel[j]=basicsearch1.getHeelh();
		//price[j]=basicsearch1.getPrice();
	++j;
}


//Brand
List<String> list = Arrays.asList(brand);
Set<String> set = new HashSet<String>(list);
String[] b_result = new String[set.size()];
set.toArray(b_result);
int blen=b_result.length;
//SubCat
List<String> list1 = Arrays.asList(subcat);
Set<String> set1 = new HashSet<String>(list1);
String[] sc_result = new String[set1.size()];
set1.toArray(sc_result);
int sclen=sc_result.length;
//Color
List<String> list2 = Arrays.asList(color);
Set<String> set2 = new HashSet<String>(list2);
String[] c_result = new String[set2.size()];
set2.toArray(c_result);
int clen=c_result.length;

//Material
List<String> list3 = Arrays.asList(mat);
Set<String> set3 = new HashSet<String>(list3);
String[] m_result = new String[set3.size()];
set3.toArray(m_result);
int mlen=m_result.length;

List<String> list6 = Arrays.asList(size);
Set<String> set6 = new HashSet<String>(list6);
String[] sz_result = new String[set6.size()];
set6.toArray(sz_result);
int szlen=sz_result.length;
for (int kp=0; kp<szlen; kp++){
	System.out.println("Size in view2");
	System.out.println(sz_result[kp]);
}

List<String> list7 = Arrays.asList(heel);
Set<String> set7 = new HashSet<String>(list7);
String[] hl_result = new String[set7.size()];
set6.toArray(hl_result);
int hllen=hl_result.length;
%>



<body onload="b()">

<script type="text/javascript">
function b()
{

document.getElementById('_cat').value  =  '<%=word%>';
}
</script>
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
                            <a href="advTemp.jsp">Adv Search</a>
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

<form action="advsearch2" method="get">
<strong>Select Category</strong>
<select class="form-control" id="_cat" name="keyword">
		   	<option selected="selected" value="NONE">- select -</option>
		   	<option value="MEN">Men</option>
		   	<option value="WOMEN">Women</option>
		   	<option value="KIDS">Kids</option>
		   	</select>
		   	<p id="ppp"></p>
		   	
<strong>Brand:</strong><br><br>
<% for(int k=1;k<blen;k++)
{
%>	
<input type="checkbox" name="brand" value="<%=b_result[k]%>"><%=b_result[k]%>
<br>
<% 
}



%><br>
<strong>
Sub Cat:</strong><br><br>

<%

for(int l=1;l<sclen;l++)
	{%>
<input type="checkbox" name="subc" value="<%=sc_result[l]%>"><%=sc_result[l]%><br>
<% } %>
<br>
<strong>Color:</strong><br><br>
<%
for(int m=1;m<clen;m++)
	{%>
<input type="checkbox" name="color"  value="<%=c_result[m]%>"><%=c_result[m]%><br>
<% }
if(!word.equals("KIDS"))
{
%><br>
<strong>Mat:</strong><br><br>
<%

for(int n=1;n<mlen;n++)
	{%>
<input type="checkbox" name="mat" value="<%=m_result[n]%>"><%=m_result[n]%><br>
<%
}

}%>
<strong>Price:</strong><br><br>
<select name="price">
		   	<option selected="selected" value="NONE">- select -</option>
		   	<option value="0 25">$0-$25</option>
		   	<option value="25 50">$25-$50</option>
		   	
		   	</select>

<br><strong>Size:</strong><br><br>

<select name="size">
	<option value="">--Select--</option>
<%	for(int n=1;n<szlen;n++){%>
  	<option value="<%=sz_result[n]%>"><%=sz_result[n]%></option>

<!-- for(int n=1;n<szlen;n++){ -->
<!-- while(it.hasNext()){System.out.println("\n inside siZe checkbox loop");%> -->
<%-- <input type="checkbox" name="size" value="<%=sz_result[n]%>"><%=sz_result[n]%><br> --%>
<%
}

%>
</select>
<% 
if(word.equals("WOMEN"))
{
 %>
 <strong>
Heel Height:</strong>
<br><br>
<%
}
if(word.equals("WOMEN"))
{
for(int n=1;n<hllen;n++){%>
<input type="checkbox" name="heel" value="<%=hl_result[n]%>"><%=hl_result[n]%><br> 
<%
}
}
System.out.println("end of checkbox");%>
<h4>----------------------------------------</h4>
Sort by options:<br><br>
<!-- <select name="key11">
		   	<option selected="selected" value="NONE">- select -</option>
		   	<option value="price">Price</option>
		   	<option value="brand">Brand</option>
		   	<option value="color">Color</option><br>
		   	
		   	</select>
		   	<input type="radio" name="asc" value="asc">ASC
		   	<input type="radio" name="desc" value="desc">DESC<br>-->
<strong>Brand:</strong><br><br>
<select name="key11">
		   	<option selected="selected" value="NONE">- select -</option>
		   	<option value="brand asc">ASC</option>
		   	<option value="brand desc">DESC</option>
		   	</select><br>
<strong>Price:</strong><br><br>
<select name="key12">
		   	<option selected="selected" value="NONE">- select -</option>
		   	<option value="price asc">Low to High</option>
		   	<option value="price desc">High to Low</option>
		   	</select><br>
<strong>Color:</strong><br><br>
<select name="key13">
		   	<option selected="selected" value="NONE">- select -</option>
		   	<option value="color asc">ASC</option>
		   	<option value="color desc">DESC</option>
		   	</select><br>
	<br>	   	
<button type="submit" value="submit">submit</button>


</form>
</div><!--  End of second column -->
<div class="col-sm-4"></div><!--  End of third column -->
</div>
<% }
catch(Exception e)
{
	System.out.println("Exception:"+e);
}%>

</body>
</html>