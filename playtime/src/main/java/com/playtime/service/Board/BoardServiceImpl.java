package com.playtime.service.Board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.playtime.domain.BoardDTO;
import com.playtime.persistence.BoardDAO;

import lombok.extern.slf4j.Slf4j;

//interface는 메서드가 추상메서드밖에 못옴
@Slf4j
@Service
public class BoardServiceImpl implements BoardService{
	BoardDAO bDao;
	
	@Autowired
	private SqlSession sqlSession;
		
	@Autowired
	public void newBoardDAO() {
		bDao = sqlSession.getMapper(BoardDAO.class);
	}

	@Override
	public List<BoardDTO> listAll(String sort_option,String search_option,String keyword, int start, int end) {		
		
		Map<String, Object>map = new HashMap<>();
		map.put("sort_option",sort_option);
		map.put("start",start);
		map.put("end",end);
		map.put("keyword", "%"+keyword+"%");
		map.put("search_option", search_option);
		
//		List<BoardDTO>list = bDao.listAll();
//		for (BoardDTO bDTO : list) {
//			log.info("타긴타니?"+bDTO.toString());
//		}
		return bDao.listAll(map);
	}
	
	@Override
	public int countArticle(String keyword,String search_option) {
		Map<String, String>map = new HashMap<>();
	    map.put("search_option", search_option);
		map.put("keyword", "%"+keyword+"%");
			
		return bDao.countArticle(map);
	}
	@Override
	public BoardDTO view(int bno) {
		return bDao.view(bno);
	}
	@Override
	public void increaseViewcnt(HttpSession session, int bno) {
		// now_time:현재시간
		// plus_time: 조회수 +1 시간
		// now_time - plus_time = 조회수+1 증가 후 지난 시간
		
		long update_time = 0; // 조회수 +1 증가한 시간
		
		if(session.getAttribute("update_time_"+bno)!= null) {
			// bno가 210번 게시물 일 경우
			// session에 가서 update_time + 210번을 찾아라
						
			// 최근에 조회수를 올린 시간
			update_time =(long) session.getAttribute("update_time_"+bno);
		}
		
		// 현재시간
		long current_time = System.currentTimeMillis();  //System.currentTimeMillis(); 현재 시간을 읽음 
		
		// 일정시간이 경과한 후 조회수 증가 처리
		if(current_time - update_time > 24*60*60*1000) { // 24*60*60*1000 = 하루 
			// DB에서 조회수 +1 증가
			bDao.increaseViewcnt(bno);
			// 조회수 올린 시간 저장
			session.setAttribute("update_time_" + bno, current_time);
		}
	
	}


}
