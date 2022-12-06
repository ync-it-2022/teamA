package kr.ac.ync.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class MemberVO {

	private long member_idx;
	private String userid;
	private String userpw;
	private String nickname;
	private String username;
	private String phonenumber; 
	private String email;
	private String address;
	private List<String> auth;
	private Date reg_date;
}
