package com.playtime.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.playtime.service.reply.ReplyService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/reply")
public class ReplyController {
	
	@Autowired	
	private ReplyService rService;

	@GetMapping("/list")
	public String list(int bno, Model model) {
		log.info(">>>>> GET: Reply List Page");
//		List<ReplyDTO> list = rService.list(bno);
				
//		for(ReplyDTO replyDTO : list) {
//			log.info(replyDTO.toString());
//		}
	
		// model은 화면단으로 전송할 데이터들 
		
		model.addAttribute("list", rService.list(bno)); // 
		return "/board/commentlist";
	}
	
	
}
