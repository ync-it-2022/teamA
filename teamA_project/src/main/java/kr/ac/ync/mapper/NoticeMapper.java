package kr.ac.ync.mapper;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.NoticeListVO;
import kr.ac.ync.domain.NoticeVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface NoticeMapper {

    public List<NoticeListVO> getNoticeList(@Param("cri")Criteria cri);

    public int createNotice(NoticeVO notice);

    public int getTotal();
}
