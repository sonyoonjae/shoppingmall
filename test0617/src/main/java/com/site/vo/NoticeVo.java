package com.site.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class NoticeVo {
	
	private int notice_no;
	private String email;
	private String notice_title;
	private String notice_content;
	private String notice_date;
	private String notice_hit;
	private String notice_image;

}
