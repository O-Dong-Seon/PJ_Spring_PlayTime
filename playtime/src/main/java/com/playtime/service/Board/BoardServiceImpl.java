package com.playtime.service.Board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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


}
