package Dao;

import Dto.Member;

public class MemberDao extends DB {

public static MemberDao memberDao = new MemberDao();
public static MemberDao getmemberDao() {return memberDao;}

// 회원가입
public boolean singup(Member member) {
	
	String sql = "insert into member(m_id, m_password, m_email," + "m_address, m_phone, m_name) values(?,?,?,?,?,?)";
	try {
		preparedStatement=connection.prepareStatement(sql);
		preparedStatement.setString(1, member.getM_id());
		preparedStatement.setString(2, member.getM_password());
		preparedStatement.setString(3, member.getM_email());
		preparedStatement.setString(4, member.getM_address());
		preparedStatement.setString(5, member.getM_phone());
		preparedStatement.setString(6, member.getM_name());
		preparedStatement.executeUpdate();
		return true;
	} catch (Exception e) {System.out.println("회원가입 오류");}
		return false;
}

// 로그인 성공 실패
public boolean login(String id, String password) {
	String sql="select * from member where m_id=?" + "and m_password=?";
	try {
		preparedStatement=connection.prepareStatement(sql);
		preparedStatement.setString(1, id);
		preparedStatement.setString(2, password);
		resultSet=preparedStatement.executeQuery();
		if(resultSet.next()){
			return true;			
		}
	} catch (Exception e) {System.out.println("로그인 성공, 실패 오류");}
			return false;
}

// 아이디 확인
public boolean idcheck(String id) {
	String sql="select m_id from member where m_id=?";
	try {
		preparedStatement=connection.prepareStatement(sql);
		preparedStatement.setString(1, id);
		resultSet=preparedStatement.executeQuery();
		if(resultSet.next()) {
			return true;
		}
	} catch (Exception e) {System.out.println("중복확인 오류");}
		return false;
}
}
