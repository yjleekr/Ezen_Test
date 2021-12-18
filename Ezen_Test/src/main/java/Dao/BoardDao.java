package Dao;
// DB와 연동해서 사용

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Observable;

import Dto.Board;
import Dto.Reply;

public class BoardDao extends DB {

	public BoardDao() {
		super(); // DB를 불러와서 쓰는 것
	}
	
public static BoardDao boardDao = new BoardDao();
public static BoardDao getboardDao() {return boardDao;}

	
}