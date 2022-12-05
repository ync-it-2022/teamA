package kr.ac.ync.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.NoticeVO;
import kr.ac.ync.mapper.NoticeMapper;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class NoticeServiceImpl implements  NoticeService {

    private final NoticeMapper mapper;

   
    @Override
    public int getTotal() {
        return mapper.getTotal();
    }

	@Override
	public List<NoticeVO> getNoticeList(Criteria cri) {
		return mapper.getNoticeList(cri);
	}
}
