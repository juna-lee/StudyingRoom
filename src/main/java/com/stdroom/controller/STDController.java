package com.stdroom.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.stdroom.service.STDService;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Controller
@AllArgsConstructor
@RequestMapping("Std/")
public class STDController {
	private static final Logger log = 
			LoggerFactory.getLogger(STDController.class);
	
	@Setter(onMethod_=@Autowired)
	private STDService service;
	
	@GetMapping("index")
	public void index() {
		log.info("Controller : index............");
	}
	
	@GetMapping("register")
	public void register() {
		log.info("Controller : register.............");
	}
}