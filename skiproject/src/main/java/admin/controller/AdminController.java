package admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.dao.AdminDAO;

@Component
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	AdminDAO adminDAO;
	
	@RequestMapping("/index")
	public String index(Model model) {
		model.addAttribute("display", "adminMain.jsp");
		return "/admin/index";
	}
}
