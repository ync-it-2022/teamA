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
@RequestMapping("/member/*")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	MemberService memberservice;
	
	//회원가입 get
	@GetMapping("/register")
	public void getRegister() {
		logger.info("get register");
	}
	
	//회원가입 post
	@PostMapping("/register")
	public String postRegister(MemberVO vo) {
		logger.info("post register");
		
		memberservice.register(vo);
		
		return "redirect:index.jsp";
	}
}
