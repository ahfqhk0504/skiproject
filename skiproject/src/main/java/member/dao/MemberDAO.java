package member.dao;

import java.util.Map;

import member.bean.MemberDTO;

public interface MemberDAO {

	void membership(MemberDTO memberDTO);

	int idCheck(String memberEmail);

	int idPwCheck(Map<String, String> map);

	String emailFindAjax(Map<String, String> map);
	
}
