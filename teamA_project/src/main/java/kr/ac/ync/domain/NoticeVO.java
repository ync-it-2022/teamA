package kr.ac.ync.domain;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
public class NoticeVO {
    private Long notice_idx;
    private Long member_idx;
    private String title;
    private String content;
    private Date reg_date;
    private Long view_count;
}
