package org.team4.semistercoder.service;
import org.team4.semistercoder.AdvancedSearch_Controller2;
import org.team4.semistercoder.BasicSearch_Controller;
//import org.team4.semistercoder.BasicSearch.ItemDe;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import java.util.ArrayList;

public class AdvancedSearch_Model2 implements java.io.Serializable {
	
	private static final long serialVersionUID = 1L;
	
	
	public ArrayList<AdvancedSearch_Controller2> advance(String word,String pricecon, String sortby) throws SQLException//this one is called
	{
		System.out.println("\n \n*****Inside Basic Search Model Page!!******");   
		int tlen= 0;
		int[] shid=new int[100];
		//final String tokens=tokens1; 
		int k=0; 
		int numrows=0;
		ResultSet rs1=null;
		ResultSet rs3=null;
		int rows=0;
		String que1= null;
		String que2= null;
		String que3= null;
		String que5= null;
		String que7= null;
		String que4= null;
		Statement st=null;
		Statement st1=null;
		Connection conn = null;
		String[] tokens=null;
		String[] prange1=new String[100];
		String p1=null;
		String p2=null;
		
		/*String phrase = word;
	    String delims = "[ ]+";
	    tokens = phrase.split(delims);
	    System.out.println("User input is splited and saved in an array");
	    tlen=tokens.length;*/
	    //System.out.println("\n Array length in basic search controller:");
		//System.out.println(tlen);
		
		/*BasicSearch_Controller bset=new BasicSearch_Controller();
		bset.setToken(tlen);*/
		ArrayList<AdvancedSearch_Controller2> bs1 = new ArrayList<AdvancedSearch_Controller2>();
		
	
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/project_shoestore";
			String username="root";
			String password="";
		 
		    conn=(Connection) DriverManager.getConnection(url,username,password);
		    st=(Statement) conn.createStatement();
		    st1=(Statement) conn.createStatement();
		    
		    System.out.println("Database connection sucessful");		
		    
		    que1="SET SQL_SAFE_UPDATES = 0;";
		    st.execute(que1);
		    
		    que2="update shoe_det set FLAG='0';";
		    st.executeUpdate(que2);
		  
		    System.out.println("Word in model");
		    System.out.println(word);
		    
		    String phrase = word;
		    String delims = "[ ]+";
		    String[] cat = phrase.split(delims);
		    
		    //cat[0]=men or women or kids
		    System.out.println("Catlength in model:");
		    System.out.println(cat.length);
		    System.out.println("Cat in model");
		    for(int i=0;i<cat.length;i++){
		    	System.out.println(cat[i]);
		    }
		    System.out.println("pricecon in model:");
		    System.out.println(pricecon);
		    
		    if(pricecon!=null){
		    	System.out.println("if(pricecon!=null");
		    String phrase1 = pricecon;
		    String delims1 = "[ ]+";
		    prange1 = phrase1.split(delims1);
		    }
		     p1=prange1[0];
		     p2=prange1[1];
		    System.out.println("before type cast");
		    int min=Integer.parseInt(p1);
		    System.out.println("min value");
		    System.out.println(min);
		    		
		    int max=Integer.parseInt(p2);
		    System.out.println("max value");
		    System.out.println(max);
		    
		    String phrase10 = sortby;
		    String delims10 = "[,]+";
		    String[] sort = phrase10.split(delims10);
		    
		    String phrase11 = sort[0];
		    String delims11 = "[ ]+";
		    String[] sortbrand = phrase11.split(delims11);
		    System.out.println("sort brand:");
		    for(int i=0;i<sortbrand.length;i++){
			    System.out.println(sortbrand[i]);
		    }
		    
		    String phrase12 = sort[1];
		    String delims12 = "[ ]+";
		    String[] sortprice = phrase12.split(delims12);
		    System.out.println("sort price:");
		    for(int i=0;i<sortprice.length;i++){
			    System.out.println(sortprice[i]);
		    }
		    
		    String phrase13 = sort[2];
		    String delims13 = "[ ]+";
		    String[] sortcolor = phrase13.split(delims13);
		    System.out.println("sort color:");
		    for(int i=0;i<sortcolor.length;i++){
			    System.out.println(sortcolor[i]);
		    }
		    
		    
		    for (int i = 1; i < cat.length; i++)
		    {  
		    System.out.println("\n The string provided by user:");	
		  	System.out.println(cat[i]);
		    que3="SELECT SH.SHID, SH.PRICE, B.B_NAME, CO.COLOR,SH.DESCP,SH.SHOE_NAME, CTR.img "
		    			+ "FROM SHOE_DET SH, brand B, color CO,cat_attr CTR, "
		    			+ "cat_main CM WHERE SH.SHID IN(select SH.SHID from shoe_det SH, "
		    			+ "categories C, cat_main CM, brand B, color CO where "
		    			+ "C.C_NAME like '%"+cat[0]+"%' and C.CID= CM.cid AND "
		    			+ "CM.shid= SH.SHID AND SH.DESCP LIKE '%"+cat[i]+"%' AND "
		    			+ "SH.PRICE >"+min+" AND SH.PRICE <"+max+" "
		    			+ "GROUP BY(SH.SHID))"
		    			+ "AND CTR.SHID=SH.SHID AND CM.SHID=SH.SHID AND CM.bid=B.BID "
		    			+ "AND CTR.CLID=CO.CLID;";
		    
		    rs1=st1.executeQuery(que3); 
		    
		   // rs1.last();
	        //numrows = rs1.getRow();
	        //rs1.beforeFirst();
	        //System.out.println("Number of records retrieved from database: ");
	       // System.out.println(numrows);
		    
           
		    while(rs1.next())
		    {		
		   shid[k]=rs1.getInt("SH.SHID");
		   
		    que4="SET SQL_SAFE_UPDATES = 0;";
		    st.execute(que4);
		    que5="update shoe_det set FLAG=(FLAG+1) WHERE SHID='"+shid[k]+"';";
		    st.executeUpdate(que5);
		    k++;
		    }
		    }
		    
		    try
		    {
		    	
		    	//-ve snippet
		    	que7="SELECT SH.SHID, SH.PRICE, B.B_NAME, CO.COLOR,SH.DESCP,SH.SHOE_NAME, "
		    			+ "CTR.img, SH.FLAG FROM SHOE_DET SH, brand B, color CO,cat_attr CTR, "
		    			+ "cat_main CM WHERE SH.FLAG>0 AND CTR.SHID=SH.SHID AND CM.SHID=SH.SHID "
		    			+ "AND CM.bid=B.BID AND CTR.CLID=CO.CLID GROUP BY(SH.SHID) "
		    			+ "ORDER BY SH.FLAG DESC, B.B_NAME "+sortbrand[1]+", "
		    			+ "SH.PRICE "+sortprice[1]+", CO.COLOR "+sortcolor[1]+";";

		        rs3=st.executeQuery(que7);
		       
		        if (rs3.last()) 
		        {
		            rows = rs3.getRow();
		            rs3.beforeFirst();
		            
		        }
		        System.out.println("Total Number of records retrieved from database: ");
		        System.out.println(rows);
		        
		        		      
		        JSONArray jsonResults = new JSONArray();
				while(rs3.next()) 
				{
					int totalColumn = rs3.getMetaData().getColumnCount();
					JSONObject obj = new JSONObject();
					
					for(int i = 0; i < totalColumn; i++) 
					{
						obj.put(rs3.getMetaData().getColumnLabel(i + 1).toLowerCase(),rs3.getObject(i+1));
						
					}
					jsonResults.put(obj);
				}

		        for (int i = 0; i < rows; i++)
		        {
		        	AdvancedSearch_Controller2 newResult = makebasicsearch(jsonResults.getJSONObject(i));
					bs1.add(newResult);
				}	
		       
		        
	
	}
		    catch(Exception e)
		    {
		    e.printStackTrace();
		   }
		}
		catch(ClassNotFoundException e)
		{
			System.out.println("Driver not found:" +e);
		}
		    finally
		    {
		    	/*rs1.close();
		        rs3.close();
		    	conn.close();
		    	st.close();*/
		    	st1.close();
		    	 }
		    return bs1;
}
	public static AdvancedSearch_Controller2 makebasicsearch(org.json.JSONObject jsonObject) throws JSONException, org.json.JSONException {
		
		AdvancedSearch_Controller2 bs = new AdvancedSearch_Controller2();
		
		try
		{
			
			bs.setShid(jsonObject.getInt("shid"));
			bs.setPrice(jsonObject.getDouble("price"));
			bs.setImage(jsonObject.getString("img"));
			bs.setShoenme(jsonObject.getString("shoe_name"));
			bs.setFlag(jsonObject.getInt("flag"));
			bs.setBrand(jsonObject.getString("b_name"));
			//bs.setSubc(jsonObject.getString("sc_name"));
			bs.setDescp(jsonObject.getString("descp"));
			
		} 
		
		catch (JSONException e) 
		{
			System.out.println("Error: Parsing JSON " + e.getMessage());
		}
		return bs;
	
	
}
	
	
	}
