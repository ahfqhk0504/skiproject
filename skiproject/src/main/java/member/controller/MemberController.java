package member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import member.bean.MemberDTO;
import memeber.dao.MemberDAO;

@Component
@RequestMapping("/member")
public class MemberController {
		@Autowired 
		private MemberDAO memberDAO;
		
		@RequestMapping(value="/membershipOk", method=RequestMethod.POST)
		public String membershipOk(Model model , @ModelAttribute MemberDTO memberDTO,@RequestParam String memberEmail1,@RequestParam String memberEmail2){
			
			System.out.println(memberEmail1);
			System.out.println(memberEmail2);
			
			/*memberDTO.setMemberEmail(memberEmail);
			memberDAO.membership(memberDTO);*/
			return "/member/membershipOk";
			
		}
}
