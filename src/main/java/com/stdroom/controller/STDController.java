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
	
	
	
	
	@GetMapping("terms")
	public void terms() {
		log.info("Controller : terms.............");
	}
	@GetMapping("register")
	public void register() {
		log.info("Controller : register.............");
	}

	@GetMapping("login")
	public void login() {
		log.info("Controller : login.............");
	}
	
	
	
	
	@GetMapping("reviews")
	public void reviews() {
		log.info("Controller : review................");
	}
	@GetMapping("review")
	public void review() {
		log.info("Controller : review................");

	}
	@GetMapping("reviewWrite")
	public void reviewWrite() {
		log.info("Controller : reviewWrite...............");
	}

	
	@GetMapping("notice")
	public void notice() {
		log.info("Controller : notice...........");
	}
	
	
	@GetMapping("qna")
	public void qna() {
		log.info("Controller :qna...................");
	}
	@GetMapping("faq")
	public void faq() {
		log.info("Controller : faq.................");
	}
	
	
	
}