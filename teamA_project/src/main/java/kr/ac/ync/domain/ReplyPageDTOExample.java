package kr.ac.ync.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ReplyPageDTOExample {

	private int replyCnt;
	private List<ReplyVOExample> list;
}
