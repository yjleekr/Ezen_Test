package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Observable;

import Dto.Board;
import Dto.Reply;

public class BoardDao {
 private Connection con;
 private PreparedStatement ps;
 private ResultSet rs;
 
 // 2. 생성자
 public BoardDao() {
	 try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3307/test?severTimezone=UTC", "root", "1234");
		System.out.println("DB 연동 성공");
	} catch (Exception e) {
		System.out.println("DB 연동 실패");
	}
 }
public static BoardDao boardDao = new BoardDao();
public static BoardDao getboardDao() {return boardDao;}


}