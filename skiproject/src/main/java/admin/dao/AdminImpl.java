package admin.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Component("adminDAO")
public class AdminImpl implements AdminDAO {
	@Autowired
	private SqlSession sqlSession;
}
