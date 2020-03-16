/*
 *  Login이 필요한 기능 수행시
 *  Session 체크를 하는 Intercepter
 */
package com.playtime.interceptor;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.FlashMap;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.servlet.support.RequestContextUtils;

import lombok.extern.slf4j.Slf4j;
@Slf4j
// Interceptor는 상속 필요
// HandlerInterceptorAdapter가 있어야 상속 가능
// 클래스명에 빨간줄이 나오지 않는 다는건 상속을 강요하지 않는다는 뜻	
public class LoginInterceptor extends HandlerInterceptorAdapter{	
	// @Override는 부모 메서드를 재정의해서 사용
	// URL 전
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// Session 객체 생성
		HttpSession session = request.getSession();	
		// Login NO
		// return값이 true면 intercepter가 낚아채서 조건충족시 통과
		// 이전 페이지 URL을 GET
		String referer = request.getHeader("referer"); // 이전페이지 목적지만알고있음
		log.info(">>>>> 이전 URL: " + referer);
		// request : 서버로 요청
		// Referer : 바로 직전에 머물렀던 웹 링크 주소
		
		
		if(session.getAttribute("userid") == null) {
			log.info(">>>>> NOLOGIN :/");
		
			// GET이건 POST이건 신경안쓰고 URL만 신경씀
			// 회원수정 페이지 GET: /member/update
			// 회원수정 DB: POST:/member/update
			// request(GET, POST) > response(forward, sendRedirect)
			
			
			// 1회성 정보 모달창이기때문에 필요
			FlashMap fMap = RequestContextUtils.getOutputFlashMap(request);
			fMap.put("message","nologin");

			
			// URL로 바로 접근한 경우(referer이 없는 경우) 인덱스로
			if(referer == null) {
				referer ="http://localhost:8081/playtime/";
			}
			log.info("null URL:" + referer);
			RequestContextUtils.saveOutputFlashMap(referer, request, response);
			response.sendRedirect(referer);
			
			
			return false; // 이동 X		
			// 상품 페이지 15번 페이지에
			// 20번째 게시물에 댓글을 달려고함
			
			// 이전 URL ★★★
			// http://127.0.0.1:8081/metop/free/view?page=1g&bno=20
			// 댓글을 작성!! ===> 로그인이 필요한데..
			
			// reuqeust ★★★
			// http://127.0.0.1:8081/metop/reply/insert?bno=20
			
			// intercetper 체크하고
			// 성공: 20번째 게시글  
			// 실패: return 이전 페이지;
		} else {
			log.info(">>>>> LOGIN :D");
			return true; // 원래 가려던 곳 으로 이동
		}
		
	}
	
	// URL 후
//	@Override
//	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
//			ModelAndView modelAndView) throws Exception {
//		// TODO Auto-generated method stub
//		super.postHandle(request, response, handler, modelAndView);
//	}

}
