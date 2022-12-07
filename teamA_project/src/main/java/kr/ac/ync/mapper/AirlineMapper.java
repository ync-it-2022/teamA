package kr.ac.ync.mapper;

import java.util.List;

import kr.ac.ync.domain.AirlineVO;

public interface AirlineMapper {
	
	public void register(AirlineVO airlinevo);
	
	public List<AirlineVO> getList();
	
	public AirlineVO read(Long airline_idx);
	
	public int delete(Long airline_idx);

	public int update(AirlineVO airline);

}
