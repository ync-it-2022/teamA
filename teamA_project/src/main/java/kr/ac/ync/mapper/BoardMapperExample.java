package kr.ac.ync.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.ac.ync.domain.BoardVOExample;
import kr.ac.ync.domain.CriteriaExample;

public interface BoardMapperExample {

	public List<BoardVOExample> getList();

	public void insert(BoardVOExample board);

	public Integer insertSelectKey(BoardVOExample board);

	public BoardVOExample read(Long bno);

	public int delete(Long bno);

	public int update(BoardVOExample board);

	public List<BoardVOExample> getListWithPaging(CriteriaExample cri);

	public int getTotalCount(CriteriaExample cri);

	public void updateReplyCnt(@Param("bno") Long bno, @Param("amount") int amount);
}
