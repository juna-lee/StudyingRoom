package com.stdroom.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stdroom.domain.ReviewVO;
import com.stdroom.mapper.STDMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class STDServiceImpl implements STDService {
	
	private static final Logger log = LoggerFactory.getLogger(STDServiceImpl.class);
	
	   private STDMapper mapper;

	//리뷰 쓰기
	@Override
	public boolean reviewWrite(ReviewVO rvo) {
		log.info("리뷰를 씁니다 헤헤");
		return mapper.reviewWrite(rvo);
	}
	//리뷰리스트
	@Override
	public List<ReviewVO> reviewList() {
		log.info("리뷰 가져옵니다");
		return mapper.reviewList();
	}
}
