package kr.ac.ync.service;

import java.util.List;

import kr.ac.ync.domain.CriteriaExample;
import kr.ac.ync.domain.ReplyPageDTOExample;
import kr.ac.ync.domain.ReplyVOExample;

public interface ReplyServiceExample {

	public int register(ReplyVOExample vo);

	public ReplyVOExample get(Long rno);

	public int modify(ReplyVOExample vo);

	public int remove(Long rno);

	// 페이징 없이 전체 댓글 쿼리
	public List<ReplyVOExample> getList(Long bno);

	// 페이징 처리된 댓글 쿼리. 페이징 처리된 댓글 목록은 댓글 갯수가 필요하다.
	public ReplyPageDTOExample getListWithPaging(CriteriaExample cri, Long bno);

}
