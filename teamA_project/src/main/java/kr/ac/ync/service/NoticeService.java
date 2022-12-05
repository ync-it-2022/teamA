package kr.ac.ync.service;

import java.util.List;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.NoticeVO;

public interface NoticeService {
    List<NoticeVO> getNoticeList(Criteria cri);

    int getTotal();
    
    NoticeVO getNoticeDetail(Long notice_idx);
}