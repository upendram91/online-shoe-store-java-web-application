package org.team4.semistercoder;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.team4.semistercoder.service.ItemDisplay_Model;
import org.team4.semistercoder.service.SearchService_Model;

/**
 * Servlet implementation class ItemDescription
 */
@WebServlet("/itemlist")
public class ItemDescription_Controller extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	
	private int shid;
	private String image;
	private int istore;
	private int pstore;
	private int dstore;
	private int hstore;
	private int astore;
	private String shoe_name;
	private String descp;
	private String b_name;
	private String sc_name;
	private double price;
	
	static ArrayList<ItemDescription_Controller> itemresult = null;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println("*****Inside Item description Controller Page!!******");
		
		String shid10=request.getParameter("keyword");
		System.out.println("Since this page is triggered only on selecting one item, that particular item's ID is retrieved in form of string");
		int shid7 = Integer.parseInt(shid10);
		
		System.out.println("Type cast is done and ID is converted into datatype INT:");
		System.out.println(shid10);
		System.out.println("Object created for item description model in order to query and get resultset");
		ItemDisplay_Model idm = new ItemDisplay_Model();
		
		try 
		{
			System.out.println("Item ID is passed to Item description model");
			itemresult=idm.itemdescription(shid7);
			System.out.println("Processing is done in Item description model and the resultset arraylist is saved in the result");
			System.out.println("\n \n*****Inside Item Description Controller Page!!******");
			
		} catch (SQLException e)
		{
			e.printStackTrace();
		}
		
		int len1=itemresult.size();
		System.out.println("length of the result set is calculated:");
		System.out.println(len1);
		if(len1==1)
		{
			System.out.println("Redirect to Item description view if result length = 1 since it should be exactly 1. ");
			response.sendRedirect("itedesp.jsp");
		}
		else
		{
			System.out.println("Redirect to result not found view if result length < 0");
			response.sendRedirect("ResultNotFound.jsp");
		}
	}
	
	public int reval(int id)
	{
		return id;
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
	}	public void setDescp(String d) {
		this.descp=d;
		
	}
	
	public String getDescp()
	{
		return descp;
		
	}

	public ArrayList<ItemDescription_Controller> SendResult()
	{
		return itemresult;
	}

	public void setIStore(int is) {
	this.istore=is;
	
	}
	public int getIStore()
	{
		return istore;
		
	}


	public void setDStore(int ds) {
		this.dstore=ds;
		
	}
	public int getDStore()
	{
		return dstore;
		
	}


	public void setPStore(int ps) {
		this.pstore=ps;
		
	}
	public int getPStore()
	{
		return pstore;
		
	}
	

	public void setHStore(int hs) {
		this.hstore=hs;
		
	}
	public int getHStore()
	{
		return hstore;
		
	}

	public void setAStore(int as) {
		this.astore=as;
		
	}
	public int getAStore()
	{
		return astore;
		
	}
	
}
