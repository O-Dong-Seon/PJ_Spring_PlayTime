package com.playtime.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.playtime.domain.BoardDTO;
import com.playtime.service.Board.BoardService;
import com.playtime.service.Board.Pager;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/board")
public class BoardController {
	
		@Autowired
		BoardService bService;

		@GetMapping("/list")
		public String list(@RequestParam(defaultValue="1") int curPage, Model model) {
			log.info(">>> GET Board Success");
			
			// 게시글 갯수 계산
			int count = bService.countArticle();			
			
			// 페이지 관련 설정
			Pager pager = new Pager(count, curPage);
			int start = pager.getPageBegin();
			int end = pager.getPageEnd();			
			
			List<BoardDTO> list = bService.listAll(start,end); // 게시글 목록
			// 앞으로 보낼 양이 많기 때문에 BoardDTO를 map으로 다시 담음
					
			HashMap<String,Object> map = new HashMap<String, Object>();
			map.put("list", list);
			map.put("count", count);
			
			model.addAttribute("map", map);
		
			return "board/list";
		}
}
