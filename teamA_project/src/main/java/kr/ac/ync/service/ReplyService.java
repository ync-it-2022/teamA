package kr.ac.ync.service;

import java.util.List;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.ReplyPageDTO;
import kr.ac.ync.domain.ReplyVO;

public interface ReplyService {

	public int register(ReplyVO vo);

	public ReplyVO get(Long rno);

	public int modify(ReplyVO vo);

	public int remove(Long rno);

	// 페이징 없이 전체 댓글 쿼리
	public List<ReplyVO> getList(Long bno);

	// 페이징 처리된 댓글 쿼리. 페이징 처리된 댓글 목록은 댓글 갯수가 필요하다.
	public ReplyPageDTO getListWithPaging(Criteria cri, Long bno);

}
