package kr.ac.ync.mapper;

import java.util.List;

import kr.ac.ync.domain.BoardVO;
import kr.ac.ync.domain.RoomsVO;

public interface RoomsMapper {
	
	public List<RoomsVO> getList();
	public RoomsVO read(Long room_idx);
	
	public void register(RoomsVO roomsvo);
	
	public int delete(Long room_idx);

	public int update(RoomsVO rooms);
	
}
