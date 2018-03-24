package room.controller;

import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Component
@RequestMapping("/room")
public class RoomController {
	@RequestMapping(value="/page", method=RequestMethod.GET)
	public String page(Model model) {
		model.addAttribute("display", "/room/roomView.jsp");
		return "/main/indexView";
	}
}
