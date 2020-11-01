package com.stdroom.domain;

import lombok.Data;

@Data
public class PageVO {

	private int startPage;
	private int endPage;
	
	private int total;
	private Criteria cri;
	
	public PageVO(Criteria cri,int total) {
		this.cri = cri;
		this.total = total;
		
		this.endPage = (int) (Math.ceil(cri.getPageNum() /10.0)) * 10;
		this.startPage = this.endPage - 9;
		
		int realEnd = (int) (Math.ceil((total * 1.0) / cri.getAmount()));
		
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
	}
}
