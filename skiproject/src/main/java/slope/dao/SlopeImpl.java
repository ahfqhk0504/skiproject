package slope.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import slope.bean.SlopeDTO;
import slope.bean.WeatherDTO;

@Transactional
@Component("slopeDAO")
public class SlopeImpl implements SlopeDAO {
	@Autowired
	private SqlSession sqlSession; 
	
	public List<WeatherDTO> getWeatherInfo() {
		return sqlSession.selectList("slopeSQL.getWeatherInfo");
	}
	public void reWeatherInfo(WeatherDTO weatherDTO) {
		sqlSession.update("slopeSQL.reWeatherInfo",weatherDTO);
	}
	public List<SlopeDTO> getSlopeList() {
		return sqlSession.selectList("slopeSQL.getSlopeList");
	}
	public String getMap(String slopeName) {
		return sqlSession.selectOne("slopeSQL.getMap", slopeName);
	}
}
