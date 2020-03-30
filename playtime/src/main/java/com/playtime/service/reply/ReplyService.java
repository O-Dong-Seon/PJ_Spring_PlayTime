package com.playtime.service.reply;

import java.util.List;

import com.playtime.domain.ReplyDTO;

public interface ReplyService {	
	
	public List<ReplyDTO> list(int bno);
	
	public void insert(ReplyDTO rDto);
	
	public void replyCntPlus(int bno);
	
	public void delete(int rno);
}
