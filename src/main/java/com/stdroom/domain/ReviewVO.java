package com.stdroom.domain;

import lombok.Data;

@Data
public class ReviewVO {

	private int bno;
	private int rating;
	private String content;
	private String title;
	private String filename;
	private int readcnt;
	
}
