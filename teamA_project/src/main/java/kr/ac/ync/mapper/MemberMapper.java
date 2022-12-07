package kr.ac.ync.mapper;

import kr.ac.ync.domain.MemberVO;

public interface MemberMapper {
	
	public int register(MemberVO memberVO);

	public MemberVO login(MemberVO memberVO);
	
	public MemberVO read(String userid);
	
}
