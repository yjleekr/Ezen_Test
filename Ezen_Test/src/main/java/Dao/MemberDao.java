package Dao;

import Dto.Member;

public class MemberDao extends DB {

public static MemberDao memberDao = new MemberDao();
public static MemberDao getmemberDao() {return memberDao;}
	
public boolean membersingup(Member member) {
	String sql = "insert into member(m_id, m_password, m_name, m_address) values(?,?,?,?)";
	try {
		preparedStatement=connection.prepareStatement(sql);
		preparedStatement.setString(1, member.getM_id());
		preparedStatement.setString(2, member.getM_password());
		preparedStatement.setString(3, member.getM_name());
		preparedStatement.setString(4, member.getM_address());
		preparedStatement.executeQuery();
		return true;
	} catch (Exception e) {System.out.println("회원가입 오류");} return false;
}
}
