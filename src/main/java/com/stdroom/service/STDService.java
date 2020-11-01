package com.stdroom.service;

import java.util.List;

import com.stdroom.domain.ReviewVO;

public interface STDService {
	
	//리뷰 쓰기
	public boolean reviewWrite(ReviewVO rvo);
	//리뷰리스트
	public List<ReviewVO> reviewList();
}
