package kr.ac.ync.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.ync.domain.MemberVO;
import kr.ac.ync.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	MemberService memberservice;
	
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
}
