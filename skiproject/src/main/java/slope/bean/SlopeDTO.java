package slope.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class SlopeDTO {
	public String slopeName;
	public String slopeNickName;
	public String slopeDifficulty;
	public String slopeLength;
	public String slopeAltitude;
	public String slopeWidth;
	public String slopeSlopeAverage;
	public String slopeSlopeMax;
	public String slopeMorningOpen;
	public String slopeAfternoonOpen;
	public String slopeNightOpen;
	public String slopeMap;
}
