package com.playtime.service.Board;

import java.util.List;

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
	public List<BoardDTO> listAll() {		
		
		List<BoardDTO>list = bDao.listAll();
		for (BoardDTO bDTO : list) {
			log.info("타긴타니?"+bDTO.toString());
		}
		return bDao.listAll();
	}


}