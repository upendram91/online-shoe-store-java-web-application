package org.team4.semistercoder.service;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.team4.semistercoder.BasicSearch_Controller;
import org.team4.semistercoder.Navigator_Controller;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class Navigator_Model {

	//private static final String[] tokens = null;

	public ArrayList<Navigator_Controller> navi(String[] tokens) throws SQLException {
		System.out.println("\n \n*****Inside Nivigator Model Page!!******");
		ResultSet rs1=null;
		int rows=0;
		String que1= null;
		Statement st1=null;
		Connection conn = null;
		int tlen=0;
		ArrayList<Navigator_Controller> bs1 = new ArrayList<Navigator_Controller>();
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			
			String url="jdbc:mysql://localhost:3306/project_shoestore";
			String username="root";
			String password="";
		 
		    conn=(Connection) DriverManager.getConnection(url,username,password);
		    st1=(Statement) conn.createStatement();
		    
		    System.out.println("Database connection sucessful");
		    
		    tlen=tokens.length;
		    for (int i = 0; i < tlen; i++)
		    {        
		  	System.out.println("\n The options selected by user: " +tokens[i]);
		    }
		    if(tlen>1)
		    {
		    que1="select s.SHID, s.PRICE, s.SHOE_NAME, ca.img, s.DESCP from categories cat, sub_categories sc, shoe_det s, cat_attr ca, cat_main cm where cat.C_NAME like '"+ tokens[0]+ "%' and sc.SC_NAME like '%"+ tokens[1]+ "%' and sc.SCID= cm.scid and cat.CID= cm.cid and cm.shid= s.SHID and ca.shid= cm.shid;";
			rs1=st1.executeQuery(que1);
		    }
		    else
		    {
		    que1="select s.SHID, s.PRICE, s.SHOE_NAME, ca.img, s.DESCP from categories cat, sub_categories sc, shoe_det s, cat_attr ca, cat_main cm where cat.C_NAME like '"+ tokens[0]+ "%' and sc.SCID= cm.scid and cat.CID= cm.cid and cm.shid= s.SHID and ca.shid= cm.shid;";
			rs1=st1.executeQuery(que1);
		    }
			if (rs1.last()) 
	        {
	            rows = rs1.getRow();
	            rs1.beforeFirst();
	            
	        }
	        System.out.println("Number of records retrievd from database: ");
	        System.out.println(rows);
	        
	        //int arrLength = results.length();
	      
	        JSONArray jsonResults = new JSONArray();
			while(rs1.next()) 
			{
				int totalColumn = rs1.getMetaData().getColumnCount();
				System.out.println("\n Number of colums in the records retrievd from database: ");
				System.out.println(totalColumn);
				JSONObject obj = new JSONObject();
				/**/
				for(int i = 0; i < totalColumn; i++) 
				{
					obj.put(rs1.getMetaData().getColumnLabel(i + 1).toLowerCase(),rs1.getObject(i+1));
					
				}
				jsonResults.put(obj);
			}
			
	        for (int i = 0; i < rows; i++)
	        {
	        	//System.out.println("for (int i = 0; i < rows; i++)");
	        	Navigator_Controller newResult = makebasicsearch(jsonResults.getJSONObject(i));
				bs1.add(newResult);
			}	
		}
		   catch (Exception e)
		    {
			
				e.printStackTrace();
		    }
		finally
		{
			rs1.close();
			st1.close();
			conn.close();
			
		}
		return bs1;
	}
	
	
	public static Navigator_Controller makebasicsearch(org.json.JSONObject jsonObject) throws JSONException, org.json.JSONException {
		
		Navigator_Controller bs = new Navigator_Controller();
		
		try
		{
			
			bs.setShid(jsonObject.getInt("shid"));
			bs.setPrice(jsonObject.getDouble("price"));
			bs.setImage(jsonObject.getString("img"));
			bs.setShoenme(jsonObject.getString("shoe_name"));
			
			
		} 
		
		catch (JSONException e) 
		{
			System.out.println("Error: Parsing JSON " + e.getMessage());
		}
		return bs;
	
	
}
	
	

}
