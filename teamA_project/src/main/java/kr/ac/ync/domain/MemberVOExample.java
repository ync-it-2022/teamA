package kr.ac.ync.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class MemberVOExample {

	private String userid;
	private String userpw;
	private String userName;
	private boolean enabled;

	private Date regDate;
	private Date updateDate;
	private List<AuthVOExample> authList;
}