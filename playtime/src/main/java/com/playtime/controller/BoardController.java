package com.playtime.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.playtime.domain.BoardDTO;
import com.playtime.service.Board.BoardService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/board")
public class BoardController {
	
		@Autowired
		BoardService bService;

		@GetMapping("/list")
		public String board(Model model) {
			log.info(">>> GET Board Success");
			
			
			List<BoardDTO> list = bService.listAll(); // 게시글 목록
			// 앞으로 보낼 양이 많기 때문에 BoardDTO를 map으로 다시 담음
					
			HashMap<String,Object> map = new HashMap<String, Object>();
			map.put("list", list);
			
			model.addAttribute("map", map);
		
			return "board/list";
		}
}
