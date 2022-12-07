package kr.ac.ync.domain;

import java.util.Date;

import lombok.Data;

@Data
public class RoomsVO {
	
	private long room_idx;
	private String name;
	private String explain;
	private String facilities;
	private Date check_in_time;
	private Date check_out_time;
	private String category;
	private String address;
	private int price;
	private int avg_rated;
	private Date reg_date;
	private int view_count;
	private String picture1;
	private String picture2;
	private String picture3;
	private String picture4;
	private String picture5;
	private String picture6;
	private String picture7;
	private String picture8;
	private String picture9;
	private String picture10;
	
}
