package org.team4.semistercoder;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.team4.semistercoder.service.AdvancedSearch_Model2;

/**
 * Servlet implementation class AdvancedSearch_Controller
 */
@WebServlet("/advsearch2")
public class AdvancedSearch_Controller2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
   
	/*protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}*/
	private static ArrayList<AdvancedSearch_Controller2> result;
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
	private double price1;
	private int flag;
	String brand[]=new String[100];
	String item[]=new String[100];
	String type=null;
	String color[]=new String[100];
	String material=null;
	String mat[]=new String[100];
	String size[]=new String[100];
	double size1=0;
	String price=null;
	double price2=0;
	String heel[]=new String[100];
	String sortby=null;
	String sortby1=null;
	String sortby2=null;
	String sortby3=null;
	double heel1=0;
	String pricecon=null;
	String colorcon=null;
	String heelcon=null;
	String itemcon=null;
	String brandcon=null;
	String matcon=null;
	String sizecon=null;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		word1= request.getParameter("keyword");
		System.out.println("Inside AdvancedSearch_Controller2");
		System.out.println(word1);
			if(word1.equals("MEN"))
			{
			
				brand=request.getParameterValues("brand");
				
				if(brand.length>1){
				brandcon=brand[0];
				for (int i=1;i<brand.length; i++){
					//System.out.println(brand[i]);
					brandcon=brandcon+" "+brand[i];
					
					}System.out.println(brandcon);}
				else{brandcon=brand[0];
				System.out.println(brandcon);}
				
				item=request.getParameterValues("subc");
				if(item.length>1){
				itemcon=item[0];
				for (int i=1;i<item.length; i++){
					//System.out.println(item[i]);
					itemcon=itemcon+" "+item[i];
					
					}System.out.println(itemcon);}
				else{itemcon=item[0];
				System.out.println(itemcon);}
				
				
				color=request.getParameterValues("color");
				if(color.length>1){
				colorcon=color[0];
				for (int i=1;i<color.length; i++){
					//System.out.println(color[i]);
					colorcon=colorcon+" "+color[i];
					
					}System.out.println(colorcon);}
				else{colorcon=color[0];
				System.out.println(colorcon);}
				
					
				mat=request.getParameterValues("mat");
				if(mat.length>1){
				matcon=mat[0];
				for (int i=1;i<mat.length; i++){
					//System.out.println(mat[i]);
					matcon=matcon+" "+mat[i];
					}
				System.out.println(matcon);}
				else{matcon=mat[0];
				System.out.println(matcon);}
				
				
				size=request.getParameterValues("size");
				if(size.length>1)
				{
				sizecon=size[0];
				for (int i=1;i<size.length; i++){
					sizecon=sizecon+" "+size[i];
					}
				System.out.println(sizecon);
				}
				else
				{sizecon=size[0];
				System.out.println(sizecon);}
				
				price=request.getParameter("price");
				/*if(price.length>1)
				{
					pricecon=price[0];
				for (int i=1;i<price.length; i++){
					pricecon=pricecon+" "+price[i];
					}
				System.out.println(pricecon);
				}
				else{pricecon=price[0];
				System.out.println(pricecon);}*/
				
				
				
				word=word1+" "+brandcon+" "+itemcon+" "+colorcon+" "+matcon+" "+sizecon;
				System.out.println("all keywords together in AdvanSearch_Controller:");
				System.out.println(word);
				
			}
			else if(word1.equals("WOMEN"))
			{
				
				brand=request.getParameterValues("brand");
				if(brand.length>1){
				brandcon=brand[0];
				for (int i=1;i<brand.length; i++){
					//System.out.println(brand[i]);
					brandcon=brandcon+" "+brand[i];
					
					}System.out.println(brandcon);}
				else{brandcon=brand[0];}
				
				item=request.getParameterValues("subc");
				if(item.length>1){
				itemcon=item[0];
				for (int i=1;i<item.length; i++){
					//System.out.println(item[i]);
					itemcon=itemcon+" "+item[i];
					
					}System.out.println(itemcon);}
				else{itemcon=item[0];}
				
				
				color=request.getParameterValues("color");
				if(color.length>1){
				colorcon=color[0];
				for (int i=1;i<color.length; i++){
					//System.out.println(color[i]);
					colorcon=colorcon+" "+color[i];
					
					}System.out.println(colorcon);}
				else{colorcon=color[0];}
				
					
				mat=request.getParameterValues("mat");
				if(mat.length>1){
				matcon=mat[0];
				for (int i=1;i<mat.length; i++){
					//System.out.println(mat[i]);
					matcon=matcon+" "+mat[i];
					}
				System.out.println(matcon);}
				else{matcon=mat[0];}
				
				
				size=request.getParameterValues("size");
				if(size.length>1)
				{
				sizecon=size[0];
				for (int i=1;i<size.length; i++){
					sizecon=sizecon+" "+size[i];
					}
				System.out.println(sizecon);
				}
				else
				{sizecon=size[0];}
				
				price=request.getParameter("price");
				/*if(price.length>1)
				{
					pricecon=price[0];
				for (int i=1;i<price.length; i++){
					pricecon=pricecon+" "+price[i];
					}
				System.out.println(pricecon);
				}
				else{pricecon=price[0];}*/
				
				
				heel=request.getParameterValues("heel");
				if(heel.length>1){
				heelcon=heel[0];
				for (int i=1;i<heel.length; i++){
					//System.out.println(heel[i]);
					heelcon=heelcon+" "+heel[i];
					
					}System.out.println(heelcon);
				}
				else{heelcon=heel[0];}
				
				word=word1+" "+brandcon+" "+itemcon+" "+colorcon+" "+matcon+" "+sizecon+" "+heelcon;
				System.out.println("all keywords together in AdvanSearch_Controller:");
				System.out.println(word);
			
			}
			else if(word1.equals("KIDS"))
			{
				brand=request.getParameterValues("brand");
				if(brand.length>1){
				brandcon=brand[0];
				for (int i=1;i<brand.length; i++){
					//System.out.println(brand[i]);
					brandcon=brandcon+" "+brand[i];
					
					}System.out.println(brandcon);}
				else{brandcon=brand[0];}
				
				item=request.getParameterValues("subc");
				if(item.length>1){
				itemcon=item[0];
				for (int i=1;i<item.length; i++){
					//System.out.println(item[i]);
					itemcon=itemcon+" "+item[i];
					
					}System.out.println(itemcon);}
				else{itemcon=item[0];}
				
				
				color=request.getParameterValues("color");
				if(color.length>1){
				colorcon=color[0];
				for (int i=1;i<color.length; i++){
					//System.out.println(color[i]);
					colorcon=colorcon+" "+color[i];
					
					}System.out.println(colorcon);}
				else{colorcon=color[0];}
				
				price=request.getParameter("price");
				/*if(price.length>1)
				{
					pricecon=price[0];
				for (int i=1;i<price.length; i++){
					pricecon=pricecon+" "+price[i];
					}
				System.out.println(pricecon);
				}
				else{pricecon=price[0];}*/
				
				size=request.getParameterValues("size");
				if(size.length>1)
				{
				sizecon=size[0];
				for (int i=1;i<size.length; i++){
					sizecon=sizecon+" "+size[i];
					}
				System.out.println(sizecon);
				}
				else
				{sizecon=size[0];}
				
				
				word=word1+" "+brandcon+" "+itemcon+" "+colorcon+" "+sizecon;
				System.out.println("all keywords together in AdvanSearch_Controller:");
				System.out.println(word);
				
			}
		
		sortby1=request.getParameter("key11");
		sortby2=request.getParameter("key12");
		sortby3=request.getParameter("key13");
		
		sortby=sortby1+","+sortby2+","+sortby3;
		System.out.println("sortby value in controller:");
		System.out.println(sortby);
		
		AdvancedSearch_Model2 advsearch=new AdvancedSearch_Model2(); 
		
		try{
    	result=advsearch.advance(word,price,sortby);
    	len = result.size();
		System.out.println("Inside BS: length of the result arraylist");
		System.out.println(len);
	
    	if(len>0)
    	{
    		System.out.println("inside if");
    		response.sendRedirect("AdvancedSearch_View3.jsp");
		
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
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public ArrayList<AdvancedSearch_Controller2> SendResult()
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

	public void setPrice(double price1) {
		this.price1=price1;
		
	}
	public double getPrice(){
		return this.price1;
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
