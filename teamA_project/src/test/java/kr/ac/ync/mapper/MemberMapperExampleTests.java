package kr.ac.ync.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import kr.ac.ync.domain.MemberVOExample;
import kr.ac.ync.mapper.MemberMapperExample;
import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@RunWith(SpringRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
@Log4j2
public class MemberMapperExampleTests {

	@Setter(onMethod_ = @Autowired)
	private MemberMapperExample mapper;

	@Test
	public void testRead() {

		MemberVOExample vo = mapper.read("admin90");

		log.info(vo);
		
		vo.getAuthList().forEach(authVO -> log.info(authVO));

	}

}
