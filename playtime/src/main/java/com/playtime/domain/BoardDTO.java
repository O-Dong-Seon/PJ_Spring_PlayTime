package com.playtime.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import oracle.sql.DATE;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class BoardDTO {
	
		private int bno; 			// 게시글 번호
		private String type;        
		private String title;		// 게시글 제목
		private String content;		// 게시글 내용
		private String writer;		// 게시글 작성자
		private int viewcnt;		// 게시글 조회수
		private int replycnt;		// 게시글 댓글수
		private int goodcnt; 		// 게시글 좋아요
		private String name;		// 작성자 이름(tbl_member)
		private DATE regdate;		// 작성일자
		private DATE updatedate;	// 수정일자
		private String show; 		// 화면 표시 여부
		private String[] files;     // 첨부파일 이름 배열
		private  int ref;			// 답변 그룹 번호
		private  int re_step; 		// 답변 출력 순번
		private  int re_level;		// 답변 단계(계층형)
}
