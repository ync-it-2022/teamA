package kr.ac.ync.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ac.ync.domain.MemberVO;
import kr.ac.ync.service.MemberService;
import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
@RequestMapping("/member")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberservice;
	
	@GetMapping("/register")
	public String register() {
		return "register";
	}
	
	//회원가입 post
	@PostMapping("/register")
	public String register(MemberVO vo) {
	
		logger.info("post register");
		
		memberservice.register(vo);
		
		return "redirect:/";
	}
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@PostMapping("/login")
	public String login(HttpServletRequest request, 
			MemberVO vo, RedirectAttributes rttr) {
	
		HttpSession session = request.getSession();
		MemberVO lvo = memberservice.login(vo);
		
		if(lvo == null) {						//일치하지 않는 아이디, 비밀번호 입력시
			int result = 0;
			rttr.addFlashAttribute("result", result);
			return "redirect:/member/login";
		}
		
		session.setAttribute("member", lvo);	//일치하는 아이디 비밀번호 입력시
		
		return "redirect:/";
	}
}
