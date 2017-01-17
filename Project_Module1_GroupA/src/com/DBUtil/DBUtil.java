package com.DBUtil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBUtil {
	static Connection con=null;
	/*private static String url="jdbc:oracle:thin:@intvmoradb04:1521:ORAJAVADB";
	private static String username="TVM1617_TVM11_TJA58_DEV";
	private static String password="tcstvm1011";*/
	private static String url="myorcldbins.ck58gn9qjoby.us-east-1.rds.amazonaws.com:1521:ORCL";
	private static String username="admin";
	private static String password="admin123";
	public static Connection getConnection(){
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("Connecting...!");
			con=DriverManager.getConnection(url,username,password);
			System.out.println("Connection Established");
		
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {	// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return con;
	}
	public static void closeConnection(Connection con){
		if(con!=null){
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	public static void closeStatement(PreparedStatement ps){
		if(ps!=null){
			try {
				ps.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
