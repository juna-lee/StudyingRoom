package com.stdroom.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stdroom.mapper.STDMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class STDServiceImpl implements STDService {
	
	private static final Logger log = LoggerFactory.getLogger(STDServiceImpl.class);
	   @Setter(onMethod_=@Autowired)
	   private STDMapper mapper;
}
