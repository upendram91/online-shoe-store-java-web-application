package org.team4.semistercoder;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.team4.semistercoder.service.Navigator_Model;

/**
 * Servlet implementation class Navigator_Controller
 */
@WebServlet("/navigator")
public class Navigator_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static ArrayList<Navigator_Controller> result;
	int tlen=0;
	String[] tokens=null;
	static String word=null;
	private String shoe_name;
	private String descp;
	private String b_name;
	private String sc_name;
	private double price;
	private int shid;
	private String image;
	static int rlen=0;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("*****Inside Navigator Controller Page!!******");   
		word= request.getParameter("keyword");
		System.out.println("\nBoth category and sub category are selected by user... And that input is saved in a String!");
		System.out.println(word);
	    String phrase = word;
	    String delims = "[ ]+";
	    tokens = phrase.split(delims);
	    System.out.println("String is being aplited and saved in an array");
	    tlen=tokens.length;
	    
	    Navigator_Model nmodel=new Navigator_Model();
	    System.out.println("Object created for Navigator model in order to query and get the resultset");
	    
	    try{
	    	System.out.println("String array is passed to navigator model");
	    	result=nmodel.navi(tokens);
	    	System.out.println("Processing is done in navigator model and the resultset arraylist is saved in the result");
	    	System.out.println("\n \n*****Inside Navigator Controller Page!!******");
	    	rlen=result.size();
	    	System.out.println("length of the result arraylist is computed:" +rlen);
	    	if(rlen>0)
	    	{
	    		System.out.println("Redirect to navigator view if result length > 0. In navigotor, result len is always more than one.");
	    		response.sendRedirect("Navigator_View.jsp");
	    	}
	    }
	    catch (Exception e)
	    {
		
			e.printStackTrace();
	    }
		
	}
	public ArrayList<Navigator_Controller> SendResult()
	{
		
		return result;
		
	}
	public String svalue()
	{
		return word;
		
	}
	public int numrow()
	{
		return rlen;
	}
	public void setShid(int s) 
	{
		this.shid=s;
		
	}
	public int getShid()
	{
		return shid;
		
	}

	public void setPrice(double p) {
		this.price=p;
		
	}
	public double getPrice()
	{
		return price;
		
	}

	public void setImage(String m) {
		this.image=m;
		
	}
	public String getImage()
	{
		return image;
		
	}

	public void setShoenme(String sn) {
	this.shoe_name=sn;
		
	}
	public String getShoenme()
	{
		return shoe_name;
		
	}
	public void setBrand(String b) {
		this.b_name=b;
		
	}
	public String getBrand()
	{
		return b_name;
		
	}

	public void setSubc(String sc) {
		this.sc_name=sc;
		
	}
	
	public String getSubc()
	{
		return sc_name;
		
	}


	public void setDescp(String d) {
		this.descp=d;
		
	}
	
	public String getDescp()
	{
		return descp;
		
	}



}
