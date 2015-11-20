package org.team4.semistercoder.service;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
//import org.team4.semistercoder.AdvancedSearch_Controller;
import org.team4.semistercoder.AdvancedSearch_Controller1;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
public class AdvancedSearch_Model1 {
	ArrayList<AdvancedSearch_Controller1> bs1 = new ArrayList<AdvancedSearch_Controller1>();
	public ArrayList<AdvancedSearch_Controller1> advance(String word1) throws SQLException, JSONException{
		
		Statement st=null;
		Connection conn = null;
		String que7=null;
		int rows=0;
		ResultSet rs3=null;
		final String word=word1;
		int cid=0;
		ResultSet rs4=null;
		String que8=null;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Indise AdvancedSearch_Model1");
			String url="jdbc:mysql://localhost:3306/project_shoestore";
			String username="root";
			String password="";
		 
		    conn=(Connection) DriverManager.getConnection(url,username,password);
		    st=(Statement) conn.createStatement();
		    System.out.println("\n the word");
		    System.out.println(word);
		     que7="select cid from categories where (C_NAME LIKE '"+word+ "');";
		    rs4=st.executeQuery(que7);
		    while(rs4.next())
		    {
		    	cid=rs4.getInt("cid");
		    	System.out.println ("cid value:");
		    	System.out.println (cid);
		    }
		    
		    que8="select SD.SHID, B.B_NAME, SC.SC_NAME, C.C_NAME, MA.MATERIAL,HL.HEIGHT, SZ.SIZE, CO.COLOR "
		    			+ "from shoe_det SD, brand B, cat_main CM, cat_attr CA, categories C, sub_categories SC, "
		    			+ "color CO, material MA, heel_lenght HL, size SZ where C.CID='"+cid+"' AND B.BID= CM.bid AND SC.SCID= CM.scid "
		    			+ "AND CM.shid= SD.SHID AND B.BID= CM.bid AND C.CID= CM.cid AND SZ.SZID=CA.szid AND SC.SCID= CM.scid "
		    			+ "AND CO.CLID= CA.clid AND MA.MTID= CA.mtid AND CA.shid= CM.shid AND CM.shid= SD.SHID AND HL.HLID= CA.hlid "
		    			+ "GROUP BY (SD.SHID);";
		        rs3=st.executeQuery(que8);
		    
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
				//System.out.println("\n totalColumn:");
				//System.out.println(totalColumn);
				JSONObject obj = new JSONObject();
				for(int i = 0; i < totalColumn; i++) 
				{
					obj.put(rs3.getMetaData().getColumnLabel(i + 1).toLowerCase(),rs3.getObject(i+1));
					//System.out.println ("\n Value from final put() ");
				}
				jsonResults.put(obj);
			}
	        for (int i = 0; i < rows; i++)
	        {
	        	//System.out.println("for (int i = 0; i < rows; i++)");
				AdvancedSearch_Controller1 newResult = makebasicsearch(jsonResults.getJSONObject(i));
				bs1.add(newResult);
			}	
		}
		catch(ClassNotFoundException e){
			System.out.println("Driver not found:" +e);
		}
		    finally{
		    	//rs1.close();
		        //rs3.close();
		    	conn.close();
		    	st.close();
		    	//st1.close();
		    }
		return bs1;
	}
	
	public static AdvancedSearch_Controller1 makebasicsearch(org.json.JSONObject jsonObject) throws JSONException {
		//System.out.println("\n inside make basic search");
		AdvancedSearch_Controller1 ads = new AdvancedSearch_Controller1();
		//System.out.println("\n after  make basic search obj creation");
		try
		{
			
			ads.setShid(jsonObject.getInt("shid"));
			ads.setCat(jsonObject.getString("c_name"));
			ads.setMat(jsonObject.getString("material"));
			ads.setSize(jsonObject.getString("size"));
			//System.out.println("ads.setSize(jsonObject.getDouble());");
			ads.setBrand(jsonObject.getString("b_name"));
			ads.setSubc(jsonObject.getString("sc_name"));
			ads.setColor(jsonObject.getString("color"));
			ads.setHeelh(jsonObject.getString("height"));
			
		} 
		
		catch (JSONException e) 
		{
			System.out.println("Error: Parsing JSON " + e.getMessage());
		}
		return ads;
	}
	
}