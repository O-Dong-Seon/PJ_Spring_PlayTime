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
public class ReplyDTO {
	
	 private int rno;
	 private String type;
	 private String content;
	 private String writer;
	 private DATE regdate;
	 private int bno;
}
