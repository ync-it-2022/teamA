package kr.ac.ync.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.ync.domain.CriteriaExample;
import kr.ac.ync.domain.ReplyPageDTOExample;
import kr.ac.ync.domain.ReplyVOExample;
import kr.ac.ync.mapper.BoardMapperExample;
import kr.ac.ync.mapper.ReplyMapperExample;
import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
//@AllArgsConstructor
public class ReplyServiceImplExample implements ReplyServiceExample {

	@Autowired
	private ReplyMapperExample mapper;

	@Autowired
	private BoardMapperExample boardMapper;

	@Transactional
	@Override
	public int register(ReplyVOExample vo) {
		log.info("register......" + vo);
		boardMapper.updateReplyCnt(vo.getBno(), 1);
		return mapper.insert(vo);
	}

	@Override
	public ReplyVOExample get(Long rno) {
		log.info("get......" + rno);
		return mapper.read(rno);
	}

	@Override
	public int modify(ReplyVOExample vo) {
		log.info("modify......" + vo);
		return mapper.update(vo);
	}

	@Transactional
	@Override
	public int remove(Long rno) {
		log.info("remove...." + rno);

		ReplyVOExample vo = mapper.read(rno);
		boardMapper.updateReplyCnt(vo.getBno(), -1);
		return mapper.delete(rno);
	}

	// 페이징 없이 전체 댓글 쿼리
	@Override
	public List<ReplyVOExample> getList(Long bno) {
		log.info("get Reply All List of a Board " + bno);
		return mapper.getList(bno);
	}

	// 페이징 처리된 댓글 쿼리. 페이징 처리된 댓글 목록은 댓글 갯수가 필요하다.
	@Override
	public ReplyPageDTOExample getListWithPaging(CriteriaExample cri, Long bno) {
		log.info("get Reply Paging List of a Board " + bno);

		return new ReplyPageDTOExample(mapper.getCountByBno(bno), mapper.getListWithPaging(cri, bno));
	}
}
