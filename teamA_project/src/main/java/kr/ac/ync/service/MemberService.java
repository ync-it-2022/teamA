package kr.ac.ync.service;

import kr.ac.ync.domain.MemberVO;
 
public interface MemberService {
	public int register(MemberVO memberVO);
	public void login(MemberVO memberVO);
}