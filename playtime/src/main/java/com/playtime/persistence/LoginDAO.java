package com.playtime.persistence;

import com.playtime.domain.MemberDTO;

public interface LoginDAO {
	
	// 로그인
	public MemberDTO loginUser(MemberDTO mDto);
	
}
