package com.playtime.controller;

import javax.servlet.http.HttpSession;

import org.eclipse.jdt.internal.compiler.env.IModule.IService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.playtime.domain.MemberDTO;
import com.playtime.service.login.LoginService;

import lombok.extern.slf4j.Slf4j;

@RequestMapping("/login")
@Slf4j
@Controller
public class LoginCotroller {
	
	@Autowired
	LoginService IService;

	@ResponseBody
	@PostMapping("/in")			
	public Integer LogIn(MemberDTO mDto, HttpSession session) {
		log.info(">>>>> POST: LOGIN/LOGIN ACTTION");
		log.info(mDto.toString());
		
		// 로그인
		int result = IService.login(mDto, session);
		log.info("결과는~~~~~~~" + result);
		
		
		return result;
		
	}
}
