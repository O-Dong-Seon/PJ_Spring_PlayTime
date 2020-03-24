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
	// 여기에 처리문이 엇으면
	// mapper와 listAll를 찾아가라
	
	
	// 상세 게시글 출
	public BoardDTO view(int bno);
	
	// 조회수 증가
	public void increaseViewcnt(@Param("bno") int bno);
	
	// 게시글 삭제
	public void delBoard(int bno);

}
