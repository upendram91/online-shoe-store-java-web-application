package org.team4.semistercoder.service;
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

public class SearchService_Model implements java.io.Serializable {
	
	private static final long serialVersionUID = 1L;
	
	
	public ArrayList<BasicSearch_Controller> basicSearch(String word) throws SQLException//this one is called
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
		
		String phrase = word;
	    String delims = "[ ]+";
	    tokens = phrase.split(delims);
	    System.out.println("User input is splited and saved in an array");
	    tlen=tokens.length;
	    //System.out.println("\n Array length in basic search controller:");
		//System.out.println(tlen);
		
		BasicSearch_Controller bset=new BasicSearch_Controller();
		bset.setToken(tlen);
		ArrayList<BasicSearch_Controller> bs1 = new ArrayList<BasicSearch_Controller>();
		
	
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
		  
		    
		    
		    for (int i = 0; i < tokens.length; i++)
		    {  
		    System.out.println("\n The string provided by user:");	
		  	System.out.println(tokens[i]);
		    que3="SELECT SH.SHID, CAT.img, SH.PRICE,SH.SHOE_NAME, SH.DESCP FROM SHOE_DET SH, CAT_ATTR CAT "
		    		+ "WHERE SH.SHID= CAT.shid AND (SH.DESCP LIKE '%"+ tokens[i]+ "%') GROUP BY(SH.SHOE_NAME) order by SH.SHID;";
		    
		    rs1=st1.executeQuery(que3); 
		    
		    rs1.last();
	        numrows = rs1.getRow();
	        rs1.beforeFirst();
	        System.out.println("Number of records retrieved from database: ");
	        System.out.println(numrows);
		    
           
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
		    	que7="SELECT SH.SHID, CA.img, SH.PRICE,SH.SHOE_NAME, SH.FLAG, SH.DESCP, B.B_NAME, SC.SC_NAME FROM SHOE_DET SH, CAT_ATTR CA, cat_main CM, brand B, sub_categories SC WHERE SH.FLAG>0 AND SH.SHID= CA.shid AND SH.SHID=CM.shid AND CM.bid=B.BID AND CM.scid=SC.SCID GROUP BY(SH.SHOE_NAME) order by SH.FLAG DESC;";

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
		        	BasicSearch_Controller newResult = makebasicsearch(jsonResults.getJSONObject(i));
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
		    	rs1.close();
		        rs3.close();
		    	conn.close();
		    	st.close();
		    	st1.close();
		    	 }
		    return bs1;
}
	public static BasicSearch_Controller makebasicsearch(org.json.JSONObject jsonObject) throws JSONException, org.json.JSONException {
		
		BasicSearch_Controller bs = new BasicSearch_Controller();
		
		try
		{
			
			bs.setShid(jsonObject.getInt("shid"));
			bs.setPrice(jsonObject.getDouble("price"));
			bs.setImage(jsonObject.getString("img"));
			bs.setShoenme(jsonObject.getString("shoe_name"));
			bs.setFlag(jsonObject.getInt("flag"));
			bs.setBrand(jsonObject.getString("b_name"));
			bs.setSubc(jsonObject.getString("sc_name"));
			bs.setDescp(jsonObject.getString("descp"));
			
		} 
		
		catch (JSONException e) 
		{
			System.out.println("Error: Parsing JSON " + e.getMessage());
		}
		return bs;
	
	
}
	
	
	}
