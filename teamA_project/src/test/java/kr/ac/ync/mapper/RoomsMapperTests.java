package kr.ac.ync.mapper;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ac.ync.domain.RoomsVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j2
public class RoomsMapperTests {

	@Setter(onMethod_= @Autowired)
	private RoomsMapper mapper;
	
//	@Test
//	public void RoomsInsertTest() {
//		
//		RoomsVO roomsvo = new RoomsVO();
//		
//		Date checkIndate = new Date();
//		Date checkOutdate = new Date();
//		
//		roomsvo.setname("개쩌는호텔");
//		roomsvo.setexplain("개쩌는설명");
//		roomsvo.setfacilities("최고의편의시설");
//		roomsvo.setcheck_in_time(checkIndate);
//		roomsvo.setcheck_out_time(checkOutdate);
//		roomsvo.setcategory("카테고리");
//		roomsvo.setaddress("뉴욕");
//		roomsvo.setprice(140000);
//		roomsvo.setavg_rated(3);
//		roomsvo.setReg_date(checkOutdate);
//		roomsvo.setView_count(3);
//		roomsvo.setpicture1("1");
//		roomsvo.setpicture2("2");
//		roomsvo.setpicture3("3");
//		roomsvo.setpicture4("4");
//		roomsvo.setpicture5("5");
//		roomsvo.setpicture6("6");
//		roomsvo.setpicture7("7");
//		roomsvo.setpicture8("8");
//		roomsvo.setpicture9("9");
//		roomsvo.setpicture10("10");
//		
//		
//		mapper.register(roomsvo);
//		
//		
//	}
	
//	@Test
//	public void testGetList() {
//
//		mapper.getList().forEach(rooms -> log.info(rooms));
//		
//
//
//	}
	
//	@Test
//	public void testRead() {
//
//		// 존재하는 게시물 번호로 테스트
//		RoomsVO rooms = mapper.read(5L);
//		log.info(rooms);
//
//	}
	
	
//	@Test
//	public void testDelete() {
//
//		log.info("DELETE COUNT: " + mapper.delete(1L));
//	}
//	
//
	@Test
	public void testUpdate() {

		RoomsVO rooms = new RoomsVO();
		// 실행전 존재하는 번호인지 확인할 것
		rooms.setRoom_idx(2L);
		rooms.setName("롯데그랜드1성급호텔");

		int count = mapper.update(rooms);
		log.info("UPDATE COUNT: " + count);

	}
}
