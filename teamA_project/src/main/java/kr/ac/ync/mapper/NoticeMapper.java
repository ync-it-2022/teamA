package kr.ac.ync.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.NoticeVO;

public interface NoticeMapper {

    public List<NoticeVO> getNoticeList(@Param("cri")Criteria cri);

    public int createNotice(NoticeVO notice);

    public int getTotal();
}
