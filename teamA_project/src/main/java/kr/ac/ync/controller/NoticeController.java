package kr.ac.ync.controller;

import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.NoticeVO;
import kr.ac.ync.domain.PageDTO;
import kr.ac.ync.service.NoticeService;
import lombok.RequiredArgsConstructor;

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
	}
	
	@GetMapping("/detail")
	public String noticeDetail(Model model, Long notice_idx, @ModelAttribute("cri")Criteria cri) {
		
		model.addAttribute("notice", service.getNoticeDetail(notice_idx));
		service.updateViewCount(notice_idx);
		
		return "notice_detail";
	}
	
	@GetMapping("/management")
	public String adminNotice(Model model) {
		
		model.addAttribute("list", service.getNoticeAllList());
		return "admin/controll_notice";
	}
	
	@GetMapping("/management/{notice_idx}")
	public String adminNoticeModify(Model model, @PathVariable("notice_idx") Long notice_idx) {
		
		model.addAttribute("notice", service.getNoticeDetail(notice_idx));
		
		return "admin/controll_notice_modify";
	}
	
	@GetMapping("/create")
	public String createNotice() {
		return "admin/controll_notice_create";
	}
	
	
	@PostMapping("/create")
	public String createNotice(NoticeVO noticeVO) {
		noticeVO.setMember_idx(1L);
		service.createNotice(noticeVO);
		return "redirect:/notice/management";
	}
	
	@PostMapping("/modify")
	public String modifyNotice(NoticeVO noticeVO) {
		service.modifyNotice(noticeVO);
		return "redirect:/notice/management";
	}
	
	@PostMapping("/delete")
	public String deleteNotice(Long notice_idx) {
		service.deleteNotice(notice_idx);
		System.out.println(notice_idx);
		return "redirect:/notice/management";
	}
}
