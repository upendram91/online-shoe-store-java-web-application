package org.team4.semistercoder;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.team4.semistercoder.service.AdvancedSearch_Model;

/**
 * Servlet implementation class AdvancedSearch_Controller
 */
@WebServlet("/advsearch")
public class AdvancedSearch_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
   
	/*protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}*/
	private static ArrayList<AdvancedSearch_Controller> result;
	String word1=null;
	String word=null;
	String[] tokens=null;
	int tlen=0;
	int shid=0;
	static int len=0;
	private String image;
	private String shoe_name;
	private String descp;
	private String b_name;
	private String sc_name;
	private double price;
	private int flag;
	String brand=null;
	String item=null;
	String type=null;
	String color=null;
	String material=null;
	String price1=null;
	double price2=0;
	String heel=null;
	String sortby=null;
	int heel1=0;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		word1= request.getParameter("key1");
		if(word1!= null)
		{
			if(word1!="women" && word1!="kid")
			{
				brand=request.getParameter("key2");
				item=request.getParameter("key3");
				type=request.getParameter("key4");
				price1=request.getParameter("key7");
				color=request.getParameter("key8");
				material=request.getParameter("key9");
				
				
				word=word1+" "+price1+" "+brand+" "+item+" "+type+" "+color+" "+material;
				System.out.println("all keywords together in AdvanSearch_Controller:");
				System.out.println(word);
				
				String phrase = word;
			    String delims = "[ ]+";
			    tokens = phrase.split(delims);
			}
			else if(word1!="men" && word1!="kid")
			{
				brand=request.getParameter("key2");
				item=request.getParameter("key3");
				type=request.getParameter("key4");
				price1=request.getParameter("key7");
				color=request.getParameter("key8");
				material=request.getParameter("key9");
				heel=request.getParameter("key10");
				
				heel1 = Integer.parseInt(heel);
				
				word=word1+" "+price1+" "+brand+" "+item+" "+type+" "+color+" "+material+" "+heel1;
				System.out.println("all keywords together in AdvanSearch_Controller:");
				System.out.println(word);
				
				String phrase = word;
			    String delims = "[ ]+";
			    tokens = phrase.split(delims);
			}
			else if(word1!="men" && word1!="women")
			{
				brand=request.getParameter("key2");
				item=request.getParameter("key3");
				type=request.getParameter("key4");
				price1=request.getParameter("key7");
				color=request.getParameter("key8");
				
				
				
				word=word1+" "+price1+" "+brand+" "+item+" "+type+" "+color;
				System.out.println("all keywords together in AdvanSearch_Controller:");
				System.out.println(word);
				
				String phrase = word;
			    String delims = "[ ]+";
			    tokens = phrase.split(delims);
			}
		}
		
	    tlen=tokens.length;
	    System.out.println("\n token length in controller");
		System.out.println(tlen);
		for(int i=0;i<tlen;i++)
		{
			System.out.println("\n token in array:");
			System.out.println(tokens[i]);
		}
		
		sortby=request.getParameter("key11");		
		AdvancedSearch_Model advsearch=new AdvancedSearch_Model(); 
		
		try{
    	result=advsearch.advance(tokens, sortby);
    	
    	len = result.size();
		System.out.println("Inside BS: length of the result arraylist");
		System.out.println(len);
	
    	if(len>0)
    	{
    		System.out.println("inside if");
    		response.sendRedirect("AdvancedSearch_View.jsp");
		
    	}
    	else
    	{
    		System.out.println("inside else");
    		response.sendRedirect("ResultNotFound.jsp");
    		//response.sendRedirect("DisplayBSearch.jsp");
    	}
		}
		catch (SQLException e)
	    {
		
			e.printStackTrace();
	    }
	}
	public ArrayList<AdvancedSearch_Controller> SendResult()
	{
		System.out.println("\n inside send result");
		return result;
	}
	public int sflag()
	{
		System.out.println("\n inside sflag: token length");
		System.out.println(tlen);
		return tlen;
	}
	public String svalue()
	{
		System.out.println("\n inside svalue");
		System.out.println(word);
		return word;
	}
	public int numrow()
	{
		System.out.println("\n inside numrow");
		System.out.println(len);
		return len;
	}
	
	public void setShid(int shid) {
		this.shid=shid;
		
	}
	public int getShid(){
		return this.shid;
	}

	public void setPrice(double price) {
		this.price=price;
		
	}
	public double getPrice(){
		return this.price;
	}


	public void setBrand(String b_name) {
		this.b_name=b_name;
		
	}
	
	public String getBrand(){
		return this.b_name;
	}

	
	public void setFlag(int flag) {
		this.flag=flag;
		
	}
	public int getFlag(){
		return this.flag;
	}

	public void setImage(String image) {
		this.image=image;
		
	}
	public String getImage(){
		return this.image;
	}
	public void setShoenme(String shoe_name) {
		this.shoe_name=shoe_name;
	}
	public String getShoenme(){
		return this.shoe_name;
	}

	public void setDescp(String descp) {
		this.descp=descp;
		
	}
	public String getDescp(){
		return this.descp;
	}

	public void setSubc(String sc_name) {
		this.sc_name=sc_name;
		
	}
	public String getSubc(){
		return this.sc_name;
	}
}
