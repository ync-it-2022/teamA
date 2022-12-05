package kr.ac.ync.mapper;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.NoticeListVO;
import kr.ac.ync.domain.NoticeVO;
import lombok.extern.log4j.Log4j2;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
@Log4j2
public class NoticeMapperTests {

    @Autowired
    private NoticeMapper noticeMapper;

    @Test
    public void createNoticeTest() {
        for(int i = 1; i <= 10; i++) {
            NoticeVO notice = new NoticeVO();
            notice.setTitle("testNotice" + i);
            notice.setContent("testContent" + i);
            notice.setMember_idx(1L);

            noticeMapper.createNotice(notice);
        }
    }

    @Test
    public void getNoticeListTest() {
        Criteria criteria = new Criteria();

        noticeMapper.getNoticeList(criteria);
    }
    
    @Test
    public void getNoticeDetailTest() {
    	noticeMapper.getNoticeDetail(1L);
    }

    @Test
    public void getTotalTest() {
        noticeMapper.getTotal();
    }
}
