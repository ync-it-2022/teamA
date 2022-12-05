package kr.ac.ync.domain;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
public class NoticeListVO {
	private Long notice_idx;
	private String title;
	private Date reg_date;
	private Long view_count;
}
