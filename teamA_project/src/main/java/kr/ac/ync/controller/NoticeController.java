package kr.ac.ync.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.PageDTO;
import kr.ac.ync.service.NoticeService;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/notice")
@RequiredArgsConstructor
public class NoticeController {

	private final NoticeService service;

	@GetMapping(value = {"/", ""})
	public void notice(Model model, Criteria cri) {

		int total = service.getTotal();
		model.addAttribute("list", service.getNoticeList(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));

		System.out.println(new PageDTO(cri, total));
	}
	
	@GetMapping(value = "/detail")
	public String noticeDetail(Model model) {
		return "notice_detail";
	}
}
