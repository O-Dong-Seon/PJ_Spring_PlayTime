package com.playtime.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.playtime.domain.ReplyDTO;

public interface ReplyDAO {
	
	public List<ReplyDTO> list(@Param("bno")int bno);
}
