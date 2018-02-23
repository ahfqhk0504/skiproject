package member.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import member.bean.MemberDTO;

@Transactional
@Component("memberDAO")
public class MemberImpl implements MemberDAO{
	@Autowired
	private SqlSession sqlSession;
	
	public void membership(MemberDTO memberDTO) {
	
		sqlSession.insert("memberSQL.membership",memberDTO);
		
	}

	public int idCheck(String memberEmail) {
		
		return sqlSession.selectOne("memberSQL.idCheck",memberEmail);
	}

	public int idPwCheck(Map<String, String> map) {
		
		return sqlSession.selectOne("memberSQL.idPwCheck",map);
	}

	public String emailFindAjax(Map<String, String> map) {
		
	
		return sqlSession.selectOne("memberSQL.emailFindAjax",map);
	}
	
}
