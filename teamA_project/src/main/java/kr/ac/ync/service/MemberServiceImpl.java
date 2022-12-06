package kr.ac.ync.service;

import org.springframework.stereotype.Service;

import kr.ac.ync.domain.MemberVO;
import kr.ac.ync.mapper.MemberMapper;
import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class MemberServiceImpl implements MemberService {
	
	MemberMapper mapper;

	@Override
	public void register(MemberVO memberVO) {
		log.info("register ......" + memberVO);
		mapper.register(memberVO);  
	}

	@Override
	public void login(MemberVO memberVO) {
		// TODO Auto-generated method stub
		
	}
}
