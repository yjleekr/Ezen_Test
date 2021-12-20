package Dao;
// DB와 연동해서 사용

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Dto.Board;

public class BoardDao extends DB {

	public BoardDao() {
		super(); // DB를 불러와서 쓰는 것
	}
	
public static BoardDao boardDao = new BoardDao();
public static BoardDao getboardDao() {return boardDao;}

	// 게시물 작성
	public boolean boaardwrite(Board board) {
		String sql = "insert into board(b_title, b_contents) values(?, ?)";
		try {
			preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1, board.getB_title());
			preparedStatement.setString(2, board.getB_contents());
			preparedStatement.executeQuery();
			return true;
		} catch (Exception e) { } return false;
	}
	
	// 
}