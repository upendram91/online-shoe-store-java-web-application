package org.team4.semistercoder.service;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.team4.semistercoder.AdvancedSearch_Controller;
import org.team4.semistercoder.BasicSearch_Controller;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class AdvancedSearch_Model {
	
	ArrayList<AdvancedSearch_Controller> bs1 = new ArrayList<AdvancedSearch_Controller>();
	
	
	
	public ArrayList<AdvancedSearch_Controller> advance(String[] tokens,String sortby) throws SQLException{
		ResultSet rs1=null;
		ResultSet rs3=null;
		Statement st=null;
		Statement st1=null;
		Connection conn = null;
		int count=0;
		int rows=0;
		int k=0;
		int numrows=0;
		int[] shid=new int[100];
		String que1= null;
		String que2= null;
		String que3= null;
		String que4= null;
		String que5= null;
		String que7= null;
		String[] price=null;
		double price1=0;
		double price2=0;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("inside SS:Driver found");
			String url="jdbc:mysql://localhost:3306/project_shoestore";
			String username="root";
			String password="";
		 
		    conn=(Connection) DriverManager.getConnection(url,username,password);
		    st=(Statement) conn.createStatement();
		    st1=(Statement) conn.createStatement();
		    
		    String phrase = tokens[1];
		    String delims = "[-]+";
		    price = phrase.split(delims);
		    
		    price1 = Double.parseDouble(price[0]);
		    price2 = Double.parseDouble(price[1]);
		    
		    if(tokens[0]!="women" && tokens[0]!="kid")
		    {
		    try
		    {	
		    if(sortby!="Price ASC" && sortby!="Brand")
		    {
		    	que7="select SD.* from shoe_det SD, brand B, cat_main CM, cat_attr CA, categories C, sub_categories SC, color CO, material MA, heel_lenght HL, size SZ where B.B_NAME LIKE '%"+ price1+ "%' AND SC.SC_NAME LIKE '%"+ price1+ "%' AND CO.COLOR LIKE '%"+ price1+ "%' AND  MA.MATERIAL LIKE '%"+ price1+ "%' AND SZ.size=6.5 AND C.CID=1 AND B.BID= CM.bid AND SC.SCID= CM.scid AND CM.shid= SD.SHID AND B.BID= CM.bid AND C.CID= CM.cid AND SZ.SZID=CA.szid AND SC.SCID= CM.scid AND CO.CLID= CA.clid AND  MA.MTID= CA.mtidAND HL.HLID= CA.hlid AND CA.shid= CM.shid AND CM.shid= SD.SHID AND SD.PRICE>'%"+ price1+ "%' AND SD.PRICE <'%"+ price2+ "%' GROUP BY (SD.SHID) order by  SD.PRICE desc;";
		    }
		    else if(sortby!="Price DESC" && sortby!="Brand")
		    {
		    	que7="select SD.* from shoe_det SD, brand B, cat_main CM, cat_attr CA, categories C, sub_categories SC, color CO, material MA, heel_lenght HL, size SZ where B.B_NAME LIKE '%"+ price1+ "%' AND SC.SC_NAME LIKE '%"+ price1+ "%' AND CO.COLOR LIKE '%"+ price1+ "%' AND  MA.MATERIAL LIKE '%"+ price1+ "%' AND SZ.size=6.5 AND C.CID=1 AND B.BID= CM.bid AND SC.SCID= CM.scid AND CM.shid= SD.SHID AND B.BID= CM.bid AND C.CID= CM.cid AND SZ.SZID=CA.szid AND SC.SCID= CM.scid AND CO.CLID= CA.clid AND  MA.MTID= CA.mtidAND HL.HLID= CA.hlid AND CA.shid= CM.shid AND CM.shid= SD.SHID AND SD.PRICE>'%"+ price1+ "%' AND SD.PRICE <'%"+ price2+ "%' GROUP BY (SD.SHID) order by  SD.PRICE asc;";
		    }
		    else if(sortby!="Price DESC" && sortby!="Price ASC")
		    {
		    	que7="select SD.* from shoe_det SD, brand B, cat_main CM, cat_attr CA, categories C, sub_categories SC, color CO, material MA, heel_lenght HL, size SZ where B.B_NAME LIKE '%"+ price1+ "%' AND SC.SC_NAME LIKE '%"+ price1+ "%' AND CO.COLOR LIKE '%"+ price1+ "%' AND  MA.MATERIAL LIKE '%"+ price1+ "%' AND SZ.size=6.5 AND C.CID=1 AND B.BID= CM.bid AND SC.SCID= CM.scid AND CM.shid= SD.SHID AND B.BID= CM.bid AND C.CID= CM.cid AND SZ.SZID=CA.szid AND SC.SCID= CM.scid AND CO.CLID= CA.clid AND  MA.MTID= CA.mtidAND HL.HLID= CA.hlid AND CA.shid= CM.shid AND CM.shid= SD.SHID AND SD.PRICE>'%"+ price1+ "%' AND SD.PRICE <'%"+ price2+ "%' GROUP BY (SD.SHID) order by  B.B_NAME asc;";
		    }
		        rs3=st.executeQuery(que7);
		        if (rs3.last()) 
		        {
		            rows = rs3.getRow();
		            rs3.beforeFirst();
		        }
		        System.out.println("Number of rows: ");
		        System.out.println(rows);
		        
		        JSONArray jsonResults = new JSONArray();
				while(rs3.next()) 
				{
					int totalColumn = rs3.getMetaData().getColumnCount();
					System.out.println("\n totalColumn:");
					System.out.println(totalColumn);
					JSONObject obj = new JSONObject();
					for(int i = 0; i < totalColumn; i++) 
					{
						obj.put(rs3.getMetaData().getColumnLabel(i + 1).toLowerCase(),rs3.getObject(i+1));
						System.out.println ("\n Value from final put() ");
					}
					jsonResults.put(obj);
				}
		        for (int i = 0; i < rows; i++)
		        {
		        	System.out.println("for (int i = 0; i < rows; i++)");
					AdvancedSearch_Controller newResult = makebasicsearch(jsonResults.getJSONObject(i));
					bs1.add(newResult);
				}	
		    }
		    catch(Exception e)
		    {
		    e.printStackTrace();
		   }
		    }
		    else if(tokens[0]!="men" && tokens[0]!="kid")
		    {
		        try
			    {		    	
			    	que7="SELECT SH.SHID, CA.img, SH.PRICE,SH.SHOE_NAME, SH.FLAG, SH.DESCP, B.B_NAME, SC.SC_NAME FROM SHOE_DET SH, CAT_ATTR CA, cat_main CM, brand B, sub_categories SC WHERE SH.FLAG>0 AND SH.SHID= CA.shid AND SH.SHID=CM.shid AND CM.bid=B.BID AND CM.scid=SC.SCID GROUP BY(SH.SHOE_NAME) order by SH.FLAG DESC;";
			        rs3=st.executeQuery(que7);
			        if (rs3.last()) 
			        {
			            rows = rs3.getRow();
			            rs3.beforeFirst();
			        }
			        System.out.println("Number of rows: ");
			        System.out.println(rows);
			        
			        JSONArray jsonResults = new JSONArray();
					while(rs3.next()) 
					{
						int totalColumn = rs3.getMetaData().getColumnCount();
						System.out.println("\n totalColumn:");
						System.out.println(totalColumn);
						JSONObject obj = new JSONObject();
						for(int i = 0; i < totalColumn; i++) 
						{
							obj.put(rs3.getMetaData().getColumnLabel(i + 1).toLowerCase(),rs3.getObject(i+1));
							System.out.println ("\n Value from final put() ");
						}
						jsonResults.put(obj);
					}
			        for (int i = 0; i < rows; i++)
			        {
			        	System.out.println("for (int i = 0; i < rows; i++)");
						AdvancedSearch_Controller newResult = makebasicsearch(jsonResults.getJSONObject(i));
						bs1.add(newResult);
					}	
			    }
			    catch(Exception e)
			    {
			    e.printStackTrace();
			   }
		    }
		    else if(tokens[0]!="men" && tokens[0]!="women")
		    {
		        try
			    {		    	
			    	que7="SELECT SH.SHID, CA.img, SH.PRICE,SH.SHOE_NAME, SH.FLAG, SH.DESCP, B.B_NAME, SC.SC_NAME FROM SHOE_DET SH, CAT_ATTR CA, cat_main CM, brand B, sub_categories SC WHERE SH.FLAG>0 AND SH.SHID= CA.shid AND SH.SHID=CM.shid AND CM.bid=B.BID AND CM.scid=SC.SCID GROUP BY(SH.SHOE_NAME) order by SH.FLAG DESC;";
			        rs3=st.executeQuery(que7);
			        if (rs3.last()) 
			        {
			            rows = rs3.getRow();
			            rs3.beforeFirst();
			        }
			        System.out.println("Number of rows: ");
			        System.out.println(rows);
			        
			        JSONArray jsonResults = new JSONArray();
					while(rs3.next()) 
					{
						int totalColumn = rs3.getMetaData().getColumnCount();
						System.out.println("\n totalColumn:");
						System.out.println(totalColumn);
						JSONObject obj = new JSONObject();
						for(int i = 0; i < totalColumn; i++) 
						{
							obj.put(rs3.getMetaData().getColumnLabel(i + 1).toLowerCase(),rs3.getObject(i+1));
							System.out.println ("\n Value from final put() ");
						}
						jsonResults.put(obj);
					}
			        for (int i = 0; i < rows; i++)
			        {
			        	System.out.println("for (int i = 0; i < rows; i++)");
						AdvancedSearch_Controller newResult = makebasicsearch(jsonResults.getJSONObject(i));
						bs1.add(newResult);
					}	
			    }
			    catch(Exception e)
			    {
			    e.printStackTrace();
			   }
		    }
		}
		
		catch(ClassNotFoundException e){
			System.out.println("Driver not found:" +e);
		}
		    finally{
		    	//rs1.close();
		        rs3.close();
		    	conn.close();
		    	st.close();
		    	st1.close();
		    }
		return bs1;
	}

	
public static AdvancedSearch_Controller makebasicsearch(org.json.JSONObject jsonObject) throws JSONException, org.json.JSONException {
	System.out.println("\n inside make basic search");
	AdvancedSearch_Controller ads = new AdvancedSearch_Controller();
	System.out.println("\n after  make basic search obj creation");
	try
	{
		
		ads.setShid(jsonObject.getInt("shid"));
		ads.setPrice(jsonObject.getDouble("price"));
		ads.setImage(jsonObject.getString("img"));
		ads.setShoenme(jsonObject.getString("shoe_name"));
		ads.setFlag(jsonObject.getInt("flag"));
		ads.setBrand(jsonObject.getString("b_name"));
		ads.setSubc(jsonObject.getString("sc_name"));
		ads.setDescp(jsonObject.getString("descp"));
		//bs.setToken(tlen);
		System.out.println(ads);
	} 
	
	catch (JSONException e) 
	{
		System.out.println("Error: Parsing JSON " + e.getMessage());
	}
	return ads;


}


}

	
