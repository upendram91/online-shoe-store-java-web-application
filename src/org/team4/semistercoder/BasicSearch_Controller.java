package org.team4.semistercoder;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.team4.semistercoder.service.SearchService_Model;
/**
 * Servlet implementation class BasicSearch
 */
@WebServlet("/search")
public class BasicSearch_Controller extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	
	private static ArrayList<BasicSearch_Controller> result;
	private int shid;
	private int flag;
	private int token;
	static int tlen=0;
	private String image;
	private String shoe_name;
	private String descp;
	private String b_name;
	private String sc_name;
	private double price;
    int[] r1;
    int i=0;
    int j=0;
    static int len=0;
	String[] tokens=null;
	String[] t=null;
	static String word=null;
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, 
    IOException
	{
    	System.out.println("*****Inside Basic Search Controller Page!!******");    	
    	
		word= request.getParameter("keyword");
		
	    System.out.println("\nInput from user in basic search controller page:");
		System.out.println(word);
		
	    String phrase = word;
	    String delims = "[ ]+";
	    tokens = phrase.split(delims);
	    System.out.println("User input is splited and saved in an array");
	    tlen=tokens.length;
	    System.out.println("\n Array length in basic search controller:");
		System.out.println(tlen);
		
	    
	    SearchService_Model searchservice=new SearchService_Model();//object
	    System.out.println("Object created for basic search model in order to query and get resultset");
	    
	    try {
	    	
	    	System.out.println("User input as an array is passed along with its length");
	    	result=searchservice.basicSearch(word);//calling
	    	System.out.println("Processing is done in basic search model and the resultset arraylist is saved in the result");
	    	System.out.println("\n \n*****Inside Basic Search Controller Page!!******");
	    	
	    	len = result.size();
			System.out.println("length of the result arraylist is computed:");
			System.out.println(len);
		
	    	if(len>0)
	    	{
	    		System.out.println("Redirect to basic search view if result length > 0 ");
	    		response.sendRedirect("DisplayBSearch.jsp");
			
	    	}
	    	else
	    	{
	    		System.out.println("Redirect to result not found view if result length < 0");
	    		response.sendRedirect("ResultNotFound.jsp");
	    	}
	        } 
	    catch (SQLException e)
	    {
		
			e.printStackTrace();
	    }
	    
	}
  
    public void setToken(int t)
	{
		this.token=t;
	}
    	public int getToken()
	{	
		return this.token;
	}
    
    public void setShid(int s)
	{
		this.shid=s;
	}
    public int getShid()
	{
		return this.shid;
	}
    public void setImage(String m)
    	{
    		this.image=m;
    	}                                                     
    public String getImage()
    	{
    		return this.image;
    	}
    public void setBrand(String b)
        	{
        		this.b_name=b;
        	}                                                     
    public String getBrand()
        	{
        		return this.b_name;
        	}
    public void setSubc(String sc)
            	{
            		this.sc_name=sc;
            	}                                                     
     public String getSubc()
            	{
            		return this.sc_name;
            	}
     public void setShoenme(String sn)
        	{
        		this.shoe_name=sn;
        	}
      public String getShoenme()
        	{
        		return this.shoe_name;
        	}
       public void setFlag(int f)
            	{
            		this.flag=f;
            	}
       public int getFlag()
            	{
            		return this.flag;
            	}
            	
       public void setDescp(String d)
            	{
            		this.descp=d;
            	}
        public String getDescp()
            	{
                		return this.descp;
            	}
        public void setPrice(double p)
            	{
            		this.price=p;
            		}
         public double getPrice()
            	{
                		return this.price;
            	}
	public ArrayList<BasicSearch_Controller> SendResult()
	{
		return result;
	}
	public int sflag()
	{
		return tlen;
	}
	public String svalue()
	{
		return word;
	}
	public int numrow()
	{
		return len;
	}
	public String test(String val)
	{
		return val;
	}
}
		
