package com.playtime.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.playtime.domain.BoardDTO;

public interface BoardDAO {
	
	// 게시글 갯수계산
	public int countArticle(@Param("map")Map<String,String>Map);
	
	// 목록(페이지나누기, 검색 기능 포함)
	public List<BoardDTO> listAll(@Param("map") Map<String, Object> map);

}
