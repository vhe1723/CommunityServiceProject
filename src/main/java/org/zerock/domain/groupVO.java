package org.zerock.domain;



import java.util.Date;

import lombok.Data;

@Data
public class groupVO {
	private Long g_no;
	private String g_title;
	private String g_intro;
	private String g_content;
	private String g_loc;
	private String g_img_src;
	private String g_thumb_src;
	private int g_member_cnt;
	private String g_user_id;
	private String g_member_id;
	private Date g_date;
	
	
}
