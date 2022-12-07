package kr.ac.ync.mapper;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import kr.ac.ync.domain.AuthVO;
import kr.ac.ync.domain.MemberVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@RunWith(SpringRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
@Log4j2
public class MemberMapperTests {

	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;

//	@Test
//	public void testRead() {
//
//		MemberVO vo = mapper.read("admin90");
//
//		log.info(vo);
//		
//		vo.getAuthList().forEach(authVO -> log.info(authVO));
//
//	}
	
	@Test
	public void testRegister() {
		
		MemberVO member = new MemberVO();
		
		member.setUserid("whynot2");
		member.setUserpw("8888");
		member.setNickname("Jeball");
		member.setUsername("Jebalyong");
		member.setPhonenumber("010-7774-9999");
		member.setEmail("Jebal@naver.com");
		member.setAddress("Osaka");
		

		mapper.register(member);	
	}
}
