package kr.ac.ync.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import kr.ac.ync.domain.MemberVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@RunWith(SpringRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
						"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j2
public class MemberMapperTests {

	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;
	
	@Autowired
	private PasswordEncoder encoder;
	
	@Test
	public void testRegister() {
		
		MemberVO member = new MemberVO();
		
		member.setUserid("kang");
		String pw = "9999";
	
		member.setUserpw(encoder.encode(pw));
		member.setNickname("sibul");
		member.setUsername("ek");
		member.setPhonenumber("010-7787-9777");
		member.setEmail("sibul@naver.com");
		member.setAddress("Kyoto");
		

		mapper.register(member);	
	}
	
	@Test
	public void testLogin() {
		MemberVO memberVO = new MemberVO();
		
		memberVO.setUserid("kang");
		memberVO.setUserpw("9999");
		
		mapper.login(memberVO);
		
		log.info("result : " + mapper.login(memberVO));
	}
	
	@Test
	public void testRead() {
		System.out.println(mapper.read("1"));
	}
}
