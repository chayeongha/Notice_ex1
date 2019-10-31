package com.cyh.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnector {

	
	public static Connection getConnection()throws Exception{
		Connection con = null;
		
		
		// 1. 로그인 
		
		   String user="user14";
		   String password="user14";
		   
		   String url="jdbc:oracle:thin:@211.238.142.28:1521:xe";
		   String driver="oracle.jdbc.driver.OracleDriver";

		
	   // 2. driver를 메모리에 로딩과정.
		   
		   Class.forName(driver);
		   
	   //3. 로그인  후 connection 객체 반환
		   
		    con = DriverManager.getConnection(url, user, password);
		
		    return con;
		
		
		
		
		
	}
	
	
	
	
	
}
