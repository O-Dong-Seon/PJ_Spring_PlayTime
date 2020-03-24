package com.playtime.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
		public String list(@RequestParam(defaultValue="1") int curPage,
						   @RequestParam(defaultValue="new")String sort_option, // 정렬하는 값
						   @RequestParam(defaultValue="all")String search_option,  // 검색 선택창
						   @RequestParam(defaultValue="")String keyword, // 검색 , 키워드가 없으면 공백값을 넣음
						   Model model) {
			
			log.info(">>> GET Board Success");
			// curpage : 1
			
			// 게시글 갯수 계산
			int count = bService.countArticle(keyword,search_option);	
			
			log.info(" " + count);
			// count: 15 
			
			
			// 페이지 관련 설정 
			Pager pager = new Pager(count, curPage); // 대문자로 시작하는건 메성자();
			// 객체를 생성함고 동시에 페이지네이션을 만들 뭔가가 필요할때 사용
			// pager 인스턴스에 값이 담겨 들어옴
			// ()가 붙어있으면 메서드 첫글자는 소문자로 시작
			int start = pager.getPageBegin();
			int end = pager.getPageEnd();	  // end: 10		
			
			// 1.DB에서 게시글을 불러온다
			List<BoardDTO> list = bService.listAll(sort_option,search_option,keyword,start,end); // 게시글 목록
			// 앞으로 보낼 양이 많기 때문에 BoardDTO를 map으로 다시 담음
			
			// 2.화면단에 보낼 맵을 만든다 + (게시글 목록)
			HashMap<String,Object> map = new HashMap<String, Object>();
			map.put("sort_option", sort_option); // 페이지를 이동했을때도 정렬된 상태로 나오게 해줌
			
			map.put("count", count);
			map.put("pager", pager); 
			 // list = 게시글 목록  화면단에 게시글을 출력하기 위해서는 model에 담아서 view단으로 보내줘야한다
		     // map.put("이름", 실제데이터); 
		     // map.list으로 화면단에서 확인할수있음
			map.put("list", list);
			map.put("keyword",keyword);
			map.put("search_option", search_option);
			
			// 3.화면단으로 맵 데이터 전송
			model.addAttribute("map", map); //
			
			// 4.list.jsp 화면단으로 이동
			return "board/list";
		}
		
		@GetMapping("/view/{bno}")
		public String view(@PathVariable(value="bno") int bno,
													  Model model,
													  HttpSession session){ // BoardDTO bDto,
			log.info(">>>>> GET : Board Detail View Page");
			
			// 1.해당 bno의 조회수 +1  증가
			bService.increaseViewcnt(session, bno);
			

			
			//			bDto = bService.viewArticle(bno);
			
			// 2.DB에서 해당 bno정보를 get해서 View단으로 전송
			model.addAttribute("one", bService.view(bno));
			model.addAttribute("key","dropBoard");
			return "board/view";
		}
		
		@GetMapping("/delete")
		public String delete(int bno) {
			log.info(">>>>> GET: Board Delete Action");
			bService.delBoard(bno);
			return "redirect:/board/list";
		}
		
}
