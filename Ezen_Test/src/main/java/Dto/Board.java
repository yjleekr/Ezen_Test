package Dto;

import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Date;

import Dao.MemberDao;

public class Board {
	private int b_no;
	private String b_title;
	private String b_contents;
	private String b_date;
 
// 빈 생성자
public Board() {}

public Board(int b_no, String b_title, String b_contents, String b_date) {
	super();
	this.b_no = b_no;
	this.b_title = b_title;
	this.b_contents = b_contents;
	this.b_date = b_date;
}

public Board(String b_title, String b_contents) {
	super();
	this.b_title = b_title;
	this.b_contents = b_contents;
}

public int getB_no() {
	return b_no;
}

public void setB_no(int b_no) {
	this.b_no = b_no;
}

public String getB_title() {
	return b_title;
}

public void setB_title(String b_title) {
	this.b_title = b_title;
}

public String getB_contents() {
	return b_contents;
}

public void setB_contents(String b_contents) {
	this.b_contents = b_contents;
}

public String getB_date() {
	return b_date;
}

public void setB_date(String b_date) {
	this.b_date = b_date;
}

}
