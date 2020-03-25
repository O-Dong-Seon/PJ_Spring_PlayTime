package com.playtime.service.reply;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.playtime.domain.ReplyDTO;
import com.playtime.persistence.ReplyDAO;
import com.playtime.service.member.MemberService;


@Service
public class ReplyServiceImpl implements ReplyService {
	
	@Autowired
	private SqlSession sqlSession;
	
	private ReplyDAO rDao;
	
	@Autowired
	public void newReplyDAO() {
		rDao = sqlSession.getMapper(ReplyDAO.class);
		
	}
	@Override
	public List<ReplyDTO> list(int bno) {
		return rDao.list(bno);
	}


}
