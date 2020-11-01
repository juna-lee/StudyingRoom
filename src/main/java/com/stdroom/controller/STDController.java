package com.stdroom.controller;

import java.io.File;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.stdroom.domain.Criteria;
import com.stdroom.domain.PageVO;
import com.stdroom.domain.ReviewVO;
import com.stdroom.service.STDService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
@RequestMapping("Std/")
public class STDController {
	private static final Logger log = 
			LoggerFactory.getLogger(STDController.class);
	
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
	
	//reviews start
	
	@GetMapping("reviews")
	public void reviews(Model model,Criteria cri) {
		log.info("Controller : review................");
		model.addAttribute("list",service.reviewList(cri));
		int tot = service.reviewTotal(cri);
		log.info("tot 은?"+tot);
		log.info("cri 는?"+cri);
		model.addAttribute("pageMaker",new PageVO(cri,tot));
	}
	@GetMapping("review")
	public void review() {
		log.info("Controller : review................");

	}
	@GetMapping("reviewWrite")
	public void reviewWrite() {
		log.info("Controller : reviewWrite...............");
	}
	@PostMapping("reviewWrite")
	public String reviewWrite(MultipartHttpServletRequest request,RedirectAttributes rttr) {
		log.info("reviewWrite()Multi..................");
		ReviewVO rvo = new ReviewVO();
		String[] rate = request.getParameterValues("rating");
		int ratetot = rate.length;
		rvo.setRating(ratetot);
		rvo.setContent(request.getParameter("content"));
		rvo.setTitle(request.getParameter("title"));
		log.info("번호야 나오니??"+rvo.getRating());
		MultipartFile mf = request.getFile("filename");
		log.info(":file path :"+mf);
		//저장경로
		String path = request.getRealPath("/resources/upload/");
		String filename = mf.getOriginalFilename();
		//IE 필수 크롬은 안해도됨 
		filename = filename.substring(filename.lastIndexOf("\\")+1);
		log.info(":filename :"+filename);
		
		File file = new File(path+filename);
		log.info(":file path :"+file);
		
		try {
			mf.transferTo(file);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		rvo.setFilename(filename);
		boolean reviewtrue = service.reviewWrite(rvo);
		rttr.addFlashAttribute("reviewtrue",reviewtrue);
		return "redirect:/Std/reviews";
	}
	
	//reviews end

}