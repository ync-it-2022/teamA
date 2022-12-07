package kr.ac.ync.service;

import javax.servlet.http.HttpSession;

import kr.ac.ync.domain.MemberVO;
 
public interface MemberService {
	public int register(MemberVO memberVO);
	
	/* 로그인 */
	public MemberVO login(MemberVO memberVO);
}