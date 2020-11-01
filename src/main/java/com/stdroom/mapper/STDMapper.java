package com.stdroom.mapper;

import java.util.List;

import com.stdroom.domain.Criteria;
import com.stdroom.domain.ReviewVO;

public interface STDMapper {
	
	//리뷰 쓰기
	public boolean reviewWrite(ReviewVO rvo);
	//리뷰리스트
	public List<ReviewVO> reviewList(Criteria cri);
	//리뷰total
	public int reviewTotal(Criteria cri);
}
