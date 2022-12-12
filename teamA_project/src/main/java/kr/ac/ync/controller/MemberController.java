package kr.ac.ync.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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

	// 회원가입 post
	@PostMapping("/register")
	public String register(MemberVO vo) {

		logger.info("post register");

		memberservice.register(vo);

		return "redirect:/";
	}

	@PostMapping("/idcheck")
	@ResponseBody
	public int idCheck(@RequestParam("id") String id) {
		
		int cnt = memberservice.idcheck(id);
		
		return cnt;
	}
}
