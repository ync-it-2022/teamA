package kr.ac.ync.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.ync.domain.AuthVO;
import kr.ac.ync.domain.MemberVO;
import kr.ac.ync.mapper.MemberMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService {

	private final MemberMapper mapper;

	@Override	
	public int register(MemberVO memberVO) {
		log.info("register ......" + memberVO);
		
		return mapper.register(memberVO);
	}

	@Override
	public MemberVO login(MemberVO memberVO) {
		return mapper.login(memberVO);
	}

}
