package com.spring.hotel;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;



public class MyOracleConnectionTest {
	private static final String DRIVER = "oracle.jdbc.OracleDriver";
	private static final String URL = "jdbc:oracle:thin:@myhoteldb.cdkuodotpzjp.ap-northeast-2.rds.amazonaws.com:1521:sid";
	private static final String ID = "c##admin";
	private static final String PASS = "akgydnjs1";

	@Test public void testConnection()throws Exception{ 
		Class.forName(DRIVER);
		
		try(Connection conn = DriverManager.getConnection(URL, ID, PASS)){ 
			System.out.println(conn); 
			}catch(Exception e){ 
				e.printStackTrace(); 
			}

	}
}
