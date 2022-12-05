package kr.ac.ync.service;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.NoticeListVO;
import kr.ac.ync.mapper.NoticeMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class NoticeServiceImpl implements  NoticeService {

    private final NoticeMapper mapper;

    @Override
    public List<NoticeListVO> getNoticeList(Criteria cri) {
        return mapper.getNoticeList(cri);
    }

    @Override
    public int getTotal() {
        return mapper.getTotal();
    }
}
