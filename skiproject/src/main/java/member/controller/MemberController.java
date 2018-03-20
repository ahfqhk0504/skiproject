package member.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.junit.runner.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import member.bean.MemberDTO;
import member.dao.MemberDAO;
import member.email.Email;
import member.email.EmailSender;

@Component
@RequestMapping("/member")
public class MemberController {
		@Autowired 
		private MemberDAO memberDAO;
		@Autowired
		private Email email;
		@Autowired
		private EmailSender emailSender;
		
		@RequestMapping(value="/membership", method=RequestMethod.GET)
		public String membership(Model model){
			return "/member/membership";
		}
		
		@RequestMapping(value="/membershipOk", method=RequestMethod.POST)
		public String membershipOk(Model model , @ModelAttribute MemberDTO memberDTO,@RequestParam String memberEmail1,@RequestParam String memberEmail2){
			
			System.out.println(memberEmail1);
			System.out.println(memberEmail2);
			String memberEmail = null;
			memberEmail=memberEmail1+"@"+memberEmail2;
			
			System.out.println(memberEmail);
			memberDTO.setMemberEmail(memberEmail);
			memberDAO.membership(memberDTO);
			return "/member/membershipOk";
		}
		
		@RequestMapping(value="/checkEmail", method=RequestMethod.POST)
		public ModelAndView checkEmail(Model model,@RequestParam String memberEmail) throws Exception{
			
			//인증코드 생성부분
			String code = "";
			for (int i = 0; i < 2; i++) {
				int num = (int) (Math.random() * 9) + 1;
				code += num + "";
				
				for (int j = 0; j < 2; j++) {
					char c = (char) ((Math.random() * 26) + 65);
					code += c;
				}
			}
			email.setContent("인증번호는 "+code+" 입니다.");
			email.setSubject("WeSki 인증번호 입니다.");
			email.setReceiver(memberEmail);
			System.out.println("email="+email);
			emailSender.SendEmail(email);
			
			ModelAndView mav = new ModelAndView();
			mav.addObject("memberEmail", memberEmail);
			mav.addObject("code", code);
			mav.setViewName("jsonView");
			return mav;
		}
		@RequestMapping(value="/login", method=RequestMethod.GET)
		public String login(Model model, @RequestParam (required=false)String memberEmail){
			
			System.out.println("로그인창: 이메일 "+memberEmail);
			
			model.addAttribute("memberEmail",memberEmail);
			return "/member/login";
		}
		
		@RequestMapping(value="/loginOk", method=RequestMethod.POST) 
		public String loginOk(Model model , @RequestParam String memberEmail , @RequestParam String memberPassword){
			
			int idCheck=0;
			String Notice =null;
			
			System.out.println(memberEmail+","+memberPassword);
			Map <String,String>map = new HashMap<String,String>();
			map.put("memberEmail", memberEmail);
			map.put("memberPassword", memberPassword);
			
			idCheck=memberDAO.idCheck(memberEmail);
			
			if(idCheck==0) {
				Notice ="해당 아이디를 찾을수 없습니다";
				model.addAttribute("Notice",Notice);
				return "/member/loginOk";
			}else{
				idCheck=memberDAO.idPwCheck(map);
				 if(idCheck==0) {
					 Notice ="비밀번호가 틀렸엉";
						model.addAttribute("Notice",Notice);
						return "/member/loginOk";
				 }else {
					 Notice ="로그인 성공";
						model.addAttribute("Notice",Notice);
						return "/member/loginOk";
				 }
			}
		}
		@RequestMapping(value="/emailFind", method=RequestMethod.GET)
		public String emailFind(Model model){
			return "/member/emailFind";
		}
	@RequestMapping(value="/emailFindAjax", method=RequestMethod.POST)
		public ModelAndView emailFindAjax(Model model,@RequestParam String memberName	,
				@RequestParam String memberBirth,@RequestParam String memberPhone){
			
		String FindEmail ;
		String Check ="";

			Map<String,String> map = new HashMap<String, String>();
			
			map.put("memberName",memberName);
			map.put("memberBirth",memberBirth);
			map.put("memberPhone",memberPhone);
			
			FindEmail = memberDAO.emailFindAjax(map);
			
			if(FindEmail==null) {
				FindEmail = " 이메일을 찾을수 없습니다.";
				 Check ="no";
			}else {
				Check ="ok";
			}
			
			System.out.println(FindEmail);
			ModelAndView mav = new ModelAndView();
			
			mav.addObject("Check",Check);
			mav.addObject("FindEmail", FindEmail);
			mav.setViewName("jsonView");
			return mav;
		}
	@RequestMapping(value="/passwordFind", method=RequestMethod.GET)
	public String passwordFind(Model model, @RequestParam (required=false)String memberEmail){
		
		model.addAttribute("memberEmail",memberEmail);
		return "/member/passwordFind";
	}
	
	@RequestMapping(value="/passwordFindEmail", method=RequestMethod.POST)
	public ModelAndView passwordFindEmail(Model model,@RequestParam String memberEmail,@RequestParam String memberName) throws Exception{
		System.out.println(memberEmail);
		System.out.println(memberName);
		
		Map<String,String> map = new HashMap <String,String>();
		int emailOk=0;
		String msg = null;
		String color = null;
		
		map.put("memberEmail", memberEmail);
		map.put("memberName", memberName);
		
		emailOk = memberDAO.passwordFindEmail(map);
		
		System.out.println("디비는 잘쳤고 결과는 : "+emailOk);
		
		if(emailOk==0) {
			ModelAndView mav = new ModelAndView();
			msg = "일치하는 정보가 없습니다.";
			color = "#d83636";
			mav.addObject("msg", msg);
			mav.addObject("color", color);
			mav.setViewName("jsonView");
			return mav;
		}else {
		
			//인증코드 생성부분
			String code = "";
			for (int i = 0; i < 2; i++) {
				int num = (int) (Math.random() * 9) + 1;
				code += num + "";
				
				for (int j = 0; j < 2; j++) {
					char c = (char) ((Math.random() * 26) + 65);
					code += c;
				}
			}
			email.setContent("인증번호는 "+code+" 입니다.");
			email.setSubject("WeSki 인증번호 입니다.");
			email.setReceiver(memberEmail);
			System.out.println("email="+email);
			emailSender.SendEmail(email);
			
			ModelAndView mav = new ModelAndView();
			msg = "인증번호가 전송되었습니다.";
			color = "#6d63ec";
			mav.addObject("memberEmail", memberEmail);
			mav.addObject("code", code);
			mav.addObject("msg", msg);
			mav.addObject("color", color);
			mav.setViewName("jsonView");
			return mav;
		}
	}
	@RequestMapping(value="/passwordModiOk", method=RequestMethod.POST)
	public String passwordModiOk(Model model,@RequestParam Map<String,String> map){
		
		System.out.println("비번수정 이멜 : "+ map.get("memberEmail"));
		System.out.println("비번수정 비번 : "+map.get("memberPassword"));
		System.out.println("1");
		memberDAO.passwordModiOk(map);
		System.out.println("2");
		
		return "/member/login";
	}
	
	
}
