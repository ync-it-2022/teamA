package kr.ac.ync.service;

import java.util.List;

import kr.ac.ync.domain.BoardVOExample;
import kr.ac.ync.domain.CriteriaExample;

public interface BoardServiceExample {

	// 글 등록
	public void register(BoardVOExample board);

	// 글 상세보기
	public BoardVOExample get(Long bno);

	// 글 수정
	public boolean modify(BoardVOExample board);

	// 글 삭제
	public boolean remove(Long bno);

	// 전체 글 목록
	public List<BoardVOExample> getList(CriteriaExample cri);

	// 전체 게시글 갯수
	public int getTotal(CriteriaExample cri);

}
