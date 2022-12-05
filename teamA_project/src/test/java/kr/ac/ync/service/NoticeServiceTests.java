package kr.ac.ync.service;

import kr.ac.ync.domain.Criteria;
import lombok.extern.log4j.Log4j2;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j2
public class NoticeServiceTests {

    @Autowired
    private NoticeService noticeService;

    @Test
    public void getNoticeListTest() {
        Criteria cri = new Criteria();

        noticeService.getNoticeList(cri);
    }
}
