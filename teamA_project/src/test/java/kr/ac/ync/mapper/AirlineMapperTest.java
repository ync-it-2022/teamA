package kr.ac.ync.mapper;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ac.ync.domain.AirlineVO;
import kr.ac.ync.domain.RoomsVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j2
public class AirlineMapperTest {

	
	@Setter(onMethod_= @Autowired)
	private AirlineMapper mapper;

//	@Test
//	public void AirlineInsertTest() {
//		
//		AirlineVO airlinevo = new AirlineVO();
//		
//		Date fromtime = new Date();
//		Date totime = new Date();
//		
//		airlinevo.setCompany("제주항공항");
//		airlinevo.setFrom_address("그리워하면언젠가 만나게되는");
//		airlinevo.setFrom_time(fromtime);
//		airlinevo.setMax_headcount(100);
//		airlinevo.setPrice(150000);
//		airlinevo.setReg_date(fromtime);
//		airlinevo.setTo_address("어느영화같은일들이 이루어져가기를");
//		airlinevo.setTo_time(totime);
//		mapper.register(airlinevo);
//	}
	
//	@Test
//	public void testGetList() {
//
//		mapper.getList().forEach(airline -> log.info(airline));
//		
//
//
//	}
	
	@Test
	public void testRead() {

		// 존재하는 게시물 번호로 테스트
		AirlineVO airline = mapper.read(1L);
		log.info(airline);

	}
	
//	@Test
//	public void testDelete() {
//
//		log.info("DELETE COUNT: " + mapper.delete(1L));
//	}
//	
//
//	@Test
//	public void testUpdate() {
//
//		AirlineVO airline = new AirlineVO();
//		// 실행전 존재하는 번호인지 확인할 것
//		airline.setAirline_idx(2L);
//		airline.setFrom_address("지구어딘가");
//
//		int count = mapper.update(airline);
//		log.info("UPDATE COUNT: " + count);

//	}
}
