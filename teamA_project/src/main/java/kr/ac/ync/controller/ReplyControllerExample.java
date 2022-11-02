package kr.ac.ync.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.ac.ync.domain.CriteriaExample;
import kr.ac.ync.domain.ReplyPageDTOExample;
import kr.ac.ync.domain.ReplyVOExample;
import kr.ac.ync.service.ReplyServiceExample;
import lombok.extern.log4j.Log4j2;

@RequestMapping("/replies/")
@RestController
@Log4j2
public class ReplyControllerExample {
	
	@Autowired
	private ReplyServiceExample service;
	
	// consumes은 호출하는쪽에서 application/json 요청만 받아들인다. 요청 컨텐트 타입 제한
	// produces은 조건에 지정한 미디어 타입과 관련된 응답을 생성. 응답 컨텐트 타입 제한
	// 명시적으로 consumes와 produces 조건을 각각 사용하는 것을 권장한다
	@PostMapping(value = "/new",
				 consumes = "application/json",
				 produces = { MediaType.TEXT_PLAIN_VALUE })
	@PreAuthorize("isAuthenticated()")
	public ResponseEntity<String> create(@RequestBody ReplyVOExample vo) {

		log.info("ReplyVO: " + vo);

		int insertCount = service.register(vo);

		log.info("Reply INSERT COUNT: " + insertCount);

		return insertCount == 1
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>("Fail!! 댓글 등록 중 오류 발생",HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	// 댓글 상세 보기
	@GetMapping(value = "/{rno}",
				produces = { MediaType.APPLICATION_XML_VALUE,
							 MediaType.APPLICATION_JSON_VALUE })
	public ResponseEntity<ReplyVOExample> get(@PathVariable("rno") Long rno) {

		log.info("get: " + rno);

		return new ResponseEntity<>(service.get(rno), HttpStatus.OK);
	}
	
	// PUT, PATCH method를 모두 적용시켜야 되기에 @RequestMapping을 사용
	// 둘중 하나만 적용할려면 @PutMapping, @PatchMapping 을 사용하면 된다. 
	@PreAuthorize("principal.member.userid == #vo.replyer")
	@RequestMapping(value = "/{rno}",
					method = { RequestMethod.PUT, RequestMethod.PATCH },
					consumes = "application/json",
					produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> modify(@RequestBody ReplyVOExample vo, @PathVariable("rno") Long rno) {

		vo.setRno(rno);

		log.info("rno: " + rno);
		log.info("modify: " + vo);

		return service.modify(vo) == 1 
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>("Fail!! 댓글 수정 중 오류 발생", HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	// security 적용된 댓글 삭제
	@PreAuthorize("principal.member.userid == #vo.replyer")
	@DeleteMapping(value = "/{rno}",
				   consumes = "application/json",
				   produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> remove(@RequestBody ReplyVOExample vo, @PathVariable("rno") Long rno) {

		log.info("remove: " + rno);
		log.info("replyer: " + vo.getReplyer());

		return service.remove(rno) == 1
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>("Fail!! 댓글 삭제 중 오류 발생",HttpStatus.INTERNAL_SERVER_ERROR);

	}
	
	// 페이징 처리된 댓글 목록
	@GetMapping(value = "/pages/{bno}/{page}",
				produces = { MediaType.APPLICATION_XML_VALUE,
							 MediaType.APPLICATION_JSON_VALUE })
	public ResponseEntity<ReplyPageDTOExample> getList(@PathVariable("page") int page, @PathVariable("bno") Long bno) {

		CriteriaExample cri = new CriteriaExample(page, 10);
		
		log.info("get Reply List bno: " + bno);
		log.info("cri:" + cri);

		return new ResponseEntity<>(service.getListWithPaging(cri, bno), HttpStatus.OK);
	}
}
