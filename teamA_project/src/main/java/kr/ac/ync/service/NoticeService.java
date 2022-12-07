package kr.ac.ync.service;

import java.util.List;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.NoticeVO;

public interface NoticeService {
	
	int createNotice(NoticeVO notice);
	
    List<NoticeVO> getNoticeList(Criteria cri);
    
    List<NoticeVO> getNoticeAllList();

    int getTotal();
    
    NoticeVO getNoticeDetail(Long notice_idx);
    
    int updateViewCount(Long notice_idx);
    
    int modifyNotice(NoticeVO noticeVO);
    
    int deleteNotice(Long notice_idx);
}