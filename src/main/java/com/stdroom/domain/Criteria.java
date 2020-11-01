package com.stdroom.domain;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Data;

@Data
public class Criteria {

	private int pageNum;
	private int amount;
	
	
	public Criteria() {
		this(1,10);
	}
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	public String getListLink() {
		UriComponentsBuilder builder = UriComponentsBuilder.fromPath("")
				.queryParam("pageNum", this.pageNum) //??? 왜 얘만 이렇게 해도되는지 모르겠다 
				.queryParam("amount", this.getAmount());
		return builder.toUriString();
	}
	
}
