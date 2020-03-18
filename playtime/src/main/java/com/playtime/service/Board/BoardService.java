package com.playtime.service.Board;

import java.util.List;

import com.playtime.domain.BoardDTO;

public interface BoardService {
	// 게시글 갯수 계산
	public int countArticle();
	
	// 목록(페이지 나누기, 검색기능포함)
	public List<BoardDTO> listAll(int Start, int end);
}
