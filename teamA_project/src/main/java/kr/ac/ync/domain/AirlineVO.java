package kr.ac.ync.domain;

import java.util.Date;
import lombok.Data;

@Data
public class AirlineVO {
	private long airline_idx;
	private String from_address;
	private String to_address;
	private Date from_time;
	private Date to_time;
	private int max_headcount;
	private int price;
	private String company;
	private Date reg_date;
}
