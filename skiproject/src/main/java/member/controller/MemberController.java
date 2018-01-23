package member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Component
@RequestMapping("/member")
public class MemberController {

		@RequestMapping(value="/membershipOk/", method=RequestMethod.POST)
		public String membershipOk(Model model) {
			
			return "/member/membershipOk.jsp";
		}
}
