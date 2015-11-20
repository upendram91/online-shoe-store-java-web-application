package org.team4.semistercoder;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
//import org.team4.semistercoder.service.AdvancedSearch_Model;
import org.team4.semistercoder.service.AdvancedSearch_Model1;
/**
 * Servlet implementation class AdvancedSearch_Controller1
 */
@WebServlet("/advsearch1")
public class AdvancedSearch_Controller1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	static String word;
	int len=0;
	private static ArrayList<AdvancedSearch_Controller1> result;
	int shid=0;
	private String brand;
	private String cat;
	private String mat;
	private String color;
	String size=null;
	private String heelh;
	private String subc;
	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		System.out.println("Indise AdvancedSearch_Controller1");
		word= request.getParameter("keyword");
		System.out.println(word);
		AdvancedSearch_Model1 advsearch=new AdvancedSearch_Model1(); 
		
		try{
    	result=advsearch.advance(word);
    	len = result.size();
		System.out.println("Inside BS: length of the result arraylist");
		System.out.println(len);
	
    	if(len>0)
    	{
    		System.out.println("inside if");
    		response.sendRedirect("AdvancedSearch_View2.jsp");
		
    	}
    	else
    	{
    		System.out.println("inside else");
    		response.sendRedirect("ResultNotFound.jsp");
    	}
		}
		catch (SQLException e)
	    {
		
			e.printStackTrace();
	    } 
		
	}
	public ArrayList<AdvancedSearch_Controller1> SendResult()
	{
		System.out.println("\n inside send result");
		return result;
	}
	public String sendword()
	{
		System.out.println("word inside sendword()");
		System.out.println(word);
		return word;
	}
	public void setShid(int s) {
	this.shid=s;
		
	}
	public int getShid(){
		return this.shid;
	}
	public void setHeelh(String hh) {
		this.heelh=hh;
		
	}
	public String getHeelh(){
		return this.heelh;
	}
	public void setCat(String c) {
		this.cat=c;
		
	}
	public String getCat(){
		return this.cat;
	}
	public void setMat(String m) {
		this.mat=m;
		
	}
	public String getMat(){
		return this.mat;
	}
	public void setSize(String si){
		//System.out.println("inside setSize");
		this.size=si;
		
	}
	public String getSize(){
		return this.size;
	}
	public void setBrand(String b) {
		this.brand=b;
		
	}
	public String getBrand(){
		return this.brand;
	}
	public void setSubc(String sc) {
		this.subc=sc;
		//System.out.println("value inside setSubc()");
		//System.out.println(this.subc);
		
	}
	public String getSubc(){
		//System.out.println("value inside getSubc()");
		//System.out.println(this.subc);
		return this.subc;
	}
	public void setColor(String co) {
		this.color=co;
		
	}
	public String getColor(){
		return this.color;
	}
}