package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DB {

	protected  Connection connection; // DB 연결
	protected  PreparedStatement preparedStatement; // SQL 조작
	protected  ResultSet resultSet; // SQL 결과를 연결
		
		// 2. 생성자
		public DB() {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3307/jsp?serverTimezone=UTC", "root", "1234");
				System.out.println("연동 성공");
			} catch (Exception e) {
				System.out.println("연동 실패");
			}
		}
}