package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {
	private Long b_no;
	private String b_title;
	private String b_content;
	private String b_user_id;
	private Date b_date;
	
}
