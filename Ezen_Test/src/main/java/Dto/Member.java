package Dto;

public class Member {

private int m_no;
private String m_id;
private String m_password;
private String m_name;
private String m_address;

public Member() { }

public Member(int m_no, String m_id, String m_password, String m_name, String m_address) {
	super();
	this.m_no = m_no;
	this.m_id = m_id;
	this.m_password = m_password;
	this.m_name = m_name;
	this.m_address = m_address;
}

// 회원가입 생성자
public Member(String m_id, String m_password, String m_name, String m_address) {
	super();
	this.m_id = m_id;
	this.m_password = m_password;
	this.m_name = m_name;
	this.m_address = m_address;
}

public int getM_no() {
	return m_no;
}

public void setM_no(int m_no) {
	this.m_no = m_no;
}

public String getM_id() {
	return m_id;
}

public void setM_id(String m_id) {
	this.m_id = m_id;
}

public String getM_password() {
	return m_password;
}

public void setM_password(String m_password) {
	this.m_password = m_password;
}

public String getM_name() {
	return m_name;
}

public void setM_name(String m_name) {
	this.m_name = m_name;
}

public String getM_address() {
	return m_address;
}

public void setM_address(String m_address) {
	this.m_address = m_address;
}

}
