package kr.ac.ync.service;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.NoticeListVO;

import java.util.List;

public interface NoticeService {
    List<NoticeListVO> getNoticeList(Criteria cri);

    int getTotal();
}