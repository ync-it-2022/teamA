package kr.ac.ync.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ac.ync.domain.MemberVO;
import lombok.extern.log4j.Log4j2;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j2
public class MemberServiceTests {

	@Autowired
	private MemberService memberservice;
	
	@Test
	public void testRegister() {
		MemberVO memberVO = new MemberVO();
		
		memberVO.setUserid("whynot2");
		memberVO.setUserpw("8888");
		memberVO.setNickname("Jeball");
		memberVO.setUsername("Jebalyong");
		memberVO.setPhonenumber("010-7774-9999");
		memberVO.setEmail("Jebal@naver.com");
		memberVO.setAddress("Osaka");
		
		log.info(memberVO);
		
		memberservice.register(memberVO);
	}
}
