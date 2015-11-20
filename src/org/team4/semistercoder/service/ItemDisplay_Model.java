package org.team4.semistercoder.service;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.team4.semistercoder.ItemDescription_Controller;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class ItemDisplay_Model {


public static ItemDescription_Controller makebasicsearch1(org.json.JSONObject jsonObject) throws JSONException, org.json.JSONException 
{
	System.out.println("\n \n*****Inside Item Description Model Page!!******");
	ItemDescription_Controller bs7= new ItemDescription_Controller();
	
	try
	{
		
		bs7.setShid(jsonObject.getInt("shid"));
		bs7.setPrice(jsonObject.getDouble("price"));
		bs7.setImage(jsonObject.getString("img"));
		bs7.setShoenme(jsonObject.getString("shoe_name"));
		bs7.setBrand(jsonObject.getString("b_name"));
		bs7.setSubc(jsonObject.getString("sc_name"));
		bs7.setDescp(jsonObject.getString("originaldescp"));
		bs7.setIStore(jsonObject.getInt("irving"));
		bs7.setDStore(jsonObject.getInt("dallas"));
		bs7.setPStore(jsonObject.getInt("plano"));
		bs7.setHStore(jsonObject.getInt("houston"));
		bs7.setAStore(jsonObject.getInt("arlington"));
		//bs.setToken(tlen);
		
	} 
	
	catch (JSONException e) 
	{
		System.out.println("Error: Parsing JSON " + e.getMessage());
	}
	return bs7;


}

public ArrayList<ItemDescription_Controller> itemdescription(int shid) throws SQLException
{
	ArrayList<ItemDescription_Controller> bs2 = new ArrayList<ItemDescription_Controller>();
	String que10=null;
	ResultSet rs10=null;
	int numrows=0;
	
	Statement st10=null;
    Connection conn10 = null;
	int id=shid;
	System.out.println("Shoe id selected by user: ");
	System.out.println(id);
	try
    {
		Class.forName("com.mysql.jdbc.Driver");

		String url="jdbc:mysql://localhost:3306/project_shoestore?allowMultiQueries=true";
		String username="root";
		String password="";
	 
	    conn10=(Connection) DriverManager.getConnection(url,username,password);
	    st10=(Statement) conn10.createStatement();
	    System.out.println("Database connection sucessful");
	    
    	//-ve snippet
    	que10="SELECT distinct SH.SHID, CA.img, SH.PRICE,SH.SHOE_NAME,SH.DESCP, B.B_NAME, "
    			+ "SC.SC_NAME, "
    			+ "SH.originaldescp, SA.STOCK arlington, SD.STOCK dallas, SHO.STOCK houston,"
    			+ " SI.STOCK irving, SP.STOCK plano "
    			+ "FROM SHOE_DET SH, CAT_ATTR CA, cat_main CM, brand B, sub_categories SC, "
    			+ "st_arlington SA, st_dallas SD, st_houston SHO, st_irving SI, st_plano SP "
    			+ "WHERE (SH.SHID="+id+") AND SH.SHID= CA.shid AND SH.SHID=CM.shid AND CM.bid=B.BID "
    		+ "AND CM.scid=SC.SCID AND SH.SHID= SA.SHID AND SH.SHID= SD.SHID AND SH.SHID= SHO.SHID "
    					+ "AND SH.SHID= SI.SHID AND SH.SHID= SP.SHID;";

        rs10=st10.executeQuery(que10);
       
        if (rs10.last()) 
        {
            numrows = rs10.getRow();
            rs10.beforeFirst();
            
        }
        System.out.println("Number of rows retrieved from database: ");
        System.out.println(numrows);
        
        //int arrLength = results.length();
      
        JSONArray jsonResults = new JSONArray();
		while(rs10.next()) 
		{
			int totalCol = rs10.getMetaData().getColumnCount();
			System.out.println("Number of columns retrieved from database: :");
			System.out.println(totalCol);
			JSONObject obj = new JSONObject();
			/**/
			for(int i = 0; i < totalCol; i++) 
			{
				obj.put(rs10.getMetaData().getColumnLabel(i + 1).toLowerCase(),rs10.getObject(i+1));
				
			}
			jsonResults.put(obj);
		}

        for (int i = 0; i < numrows; i++)
        {
        	ItemDescription_Controller newResult = makebasicsearch1(jsonResults.getJSONObject(i));
			bs2.add(newResult);
		}	
      }
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
	return bs2;

	}
}