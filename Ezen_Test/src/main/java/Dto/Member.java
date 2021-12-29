package Dto;

public class Member {

private int m_no;
private String m_id;
private String m_password;
private String m_email;
private String m_address;
private String m_phone;
private String m_name;

public Member() { }


public Member(int m_no, String m_id, String m_password, String m_email, String m_address, String m_phone,
		String m_name) {
	super();
	this.m_no = m_no;
	this.m_id = m_id;
	this.m_password = m_password;
	this.m_email = m_email;
	this.m_address = m_address;
	this.m_phone = m_phone;
	this.m_name = m_name;
}

// 회원가입
public Member(String m_id, String m_password, String m_email, String m_address, String m_phone, String m_name) {
	super();
	this.m_id = m_id;
	this.m_password = m_password;
	this.m_email = m_email;
	this.m_address = m_address;
	this.m_phone = m_phone;
	this.m_name = m_name;
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

public String getM_email() {
	return m_email;
}

public void setM_email(String m_email) {
	this.m_email = m_email;
}

public String getM_address() {
	return m_address;
}

public void setM_address(String m_address) {
	this.m_address = m_address;
}

public String getM_phone() {
	return m_phone;
}

public void setM_phone(String m_phone) {
	this.m_phone = m_phone;
}

public String getM_name() {
	return m_name;
}

public void setM_name(String m_name) {
	this.m_name = m_name;
}
}
