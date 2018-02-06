package slope.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import slope.bean.SlopeDTO;
import slope.bean.WeatherDTO;
import slope.dao.SlopeDAO;

@Component
@RequestMapping("/slope")
public class SlopeController {
	@Autowired
	SlopeDAO slopeDAO;
	
	@RequestMapping(value="/weatherInfo", method=RequestMethod.GET)
	public ModelAndView weatherInfo() {
		
		ModelAndView mav = new ModelAndView();
		List<WeatherDTO> weatherList = slopeDAO.getWeatherInfo();
		mav.addObject("weatherList", weatherList);
		mav.setViewName("jsonView");
		return mav;
	}
	
	@RequestMapping(value="/reWeather", method=RequestMethod.POST)
	public @ResponseBody String reWeather(@ModelAttribute WeatherDTO weatherDTO,Model model) {
		slopeDAO.reWeatherInfo(weatherDTO);
		return "ok";
	}
	
	@RequestMapping(value="/slopeTable", method=RequestMethod.GET)
	public ModelAndView slopeTable() {
		ModelAndView mav = new ModelAndView();
		List<SlopeDTO> slopeList = slopeDAO.getSlopeList();
		mav.addObject("slopeList", slopeList);
		mav.setViewName("jsonView");
		return mav;
	}
	
	@RequestMapping(value="/getMap", method=RequestMethod.POST)
	public @ResponseBody String getMap(@RequestParam("slopeName") String slopeName, Model model) {
		String slopeMap = slopeDAO.getMap(slopeName);
		return slopeMap;
	}
}
