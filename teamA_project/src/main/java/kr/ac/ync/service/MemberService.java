package kr.ac.ync.service;

import javax.servlet.http.HttpSession;

import kr.ac.ync.domain.MemberVO;
 
public interface MemberService {
	public int register(MemberVO memberVO);
	
	/* 로그인 */
	public MemberVO login(MemberVO memberVO);
	
	/* 아이디 중복체크 */
	public int idcheck(String id);
}