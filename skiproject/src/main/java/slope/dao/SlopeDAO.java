package slope.dao;

import java.util.List;

import slope.bean.SlopeDTO;
import slope.bean.WeatherDTO;

public interface SlopeDAO {

	List<WeatherDTO> getWeatherInfo();
	void reWeatherInfo(WeatherDTO weatherDTO);
	List<SlopeDTO> getSlopeList();
	String getMap(String slopeName);

}
