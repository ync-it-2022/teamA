package kr.ac.ync.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class MemberVO {

	private long memberIdx;
	private String userid;
	private String userpw;
	private String nickName;
	private String userName;
	private String phoneNumber;
	private String email;
	private String address;
	private boolean enabled;
	private List<AuthVO> authList;
	
	private Date regDate;
	private Date updateDate;
}
