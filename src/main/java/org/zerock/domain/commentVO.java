package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class commentVO {
	private Long c_no;
	private Long b_no;
	private String c_content;
	private String c_user_id;
	private Date c_date;
	

}
