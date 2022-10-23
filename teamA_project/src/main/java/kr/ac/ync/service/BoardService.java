package kr.ac.ync.service;

import java.util.List;

import kr.ac.ync.domain.BoardVO;
import kr.ac.ync.domain.Criteria;

public interface BoardService {

	// 글 등록
	public void register(BoardVO board);

	// 글 상세보기
	public BoardVO get(Long bno);

	// 글 수정
	public boolean modify(BoardVO board);

	// 글 삭제
	public boolean remove(Long bno);

	// 전체 글 목록
	public List<BoardVO> getList(Criteria cri);

	// 전체 게시글 갯수
	public int getTotal(Criteria cri);

}
