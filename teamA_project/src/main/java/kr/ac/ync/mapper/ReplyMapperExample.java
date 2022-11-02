package kr.ac.ync.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.ac.ync.domain.CriteriaExample;
import kr.ac.ync.domain.ReplyVOExample;

public interface ReplyMapperExample {

	public int insert(ReplyVOExample vo);

	public ReplyVOExample read(Long bno);

	public int delete(Long bno);

	public int update(ReplyVOExample reply);

	// 페이징 없이 전체 댓글 쿼리
	public List<ReplyVOExample> getList(Long bno);

	// 페이징 처리된 댓글 쿼리. 페이징 처리된 댓글 목록은 댓글 갯수가 필요하다.
	public List<ReplyVOExample> getListWithPaging(@Param("cri") CriteriaExample cri, @Param("bno") Long bno);

	public int getCountByBno(Long bno);
}
