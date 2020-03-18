package com.playtime.persistence;

import java.util.List;

import com.playtime.domain.BoardDTO;

public interface BoardDAO {
	// 목록(페이지나누기, 검색 기능 포함)
	public List<BoardDTO> listAll();

}
