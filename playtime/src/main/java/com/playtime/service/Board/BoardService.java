package com.playtime.service.Board;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.playtime.domain.BoardDTO;

public interface BoardService {
	// 게시글 갯수 계산
	public int countArticle(String keyword,String search_option);
	
	// 목록(페이지 나누기, 검색기능포함)
	public List<BoardDTO> listAll(String sort_option,String Search_option, String keyword, int Start, int end);

	//상세 게시글 출력
	public BoardDTO view(int bno);
	
	// 조회수 증가
	public void increaseViewcnt(HttpSession session, int bno);
	
}
