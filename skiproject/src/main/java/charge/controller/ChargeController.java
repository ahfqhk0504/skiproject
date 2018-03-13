package charge.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import slope.dao.SlopeDAO;

@Component
@RequestMapping("/charge")
public class ChargeController {
	@Autowired
	SlopeDAO slopeDAO;
	@RequestMapping("/page")
	public String page(Model model) {
		model.addAttribute("display", "/charge/chargeDetail.jsp");
		return "/main/indexView";
	}
	
}
