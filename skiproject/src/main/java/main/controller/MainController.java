package main.controller;

import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Component
@RequestMapping("/main")
public class MainController {
	@RequestMapping("/index")
	public String index(Model model) {
		model.addAttribute("display", "index.jsp");
		return "/main/indexView";
	}
}
