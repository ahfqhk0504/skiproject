package slope.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class WeatherDTO {
	private String weatherName;
	private String weatherLat;
	private String weatherLon;
	private String weatherMain;
	private String weatherTemp;
	private String weatherHumidity;
	private String weatherWspd;
	private String weatherIcon;
}
