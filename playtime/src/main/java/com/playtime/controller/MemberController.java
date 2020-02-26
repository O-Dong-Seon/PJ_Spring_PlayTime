package com.playtime.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.playtime.domain.MemberDTO;
import com.playtime.persistence.MemberDAO;
import com.playtime.service.mail.MailService;
import com.playtime.service.member.MemberService;

import lombok.extern.slf4j.Slf4j;

/*
 * SessionAttruibutes로 설정된 변수(객체)
 * response를 하기전에 서버의 기억장소 어딘가에 임시로 보관을 해둔다
 * web browser와 server 간에 한번이라도 연결이 이루어져으면
 * Session..에 등록된 변수는 서버가 중단될때까지 그 값이 그대로
 * 유지된다.
 * web 은 클라이언트의 req를 서버가 받아서
 * res를 수행하고 나면 모든 정보가 사라지는 특성이 있다
 * 이런 특성과는 달리 Spring기반의 Web은 일부 데이터들을
 * 메모리에 보관했다가 재사용하는 기법이 있다.
 * 그중 SessionAttributes라는 기능이 있다.
 * 
 *  sessionAttributes()	에 설정하는 문자열(이름)은
 *  클래스의 표준 객체생성 패턴에 의해 만들어진 이름
 *  MemoDTO memoDTO
 *  
 *  이름을 표준 패턴이 아닌 임의의 이름으로 바꾸고싶다. 
 */

@Slf4j
@Controller
@RequestMapping("/member")
public class MemberController {
	//@Autowired 는 사용해줄때마다 각각 따로 써야함
	
	@Autowired
	PasswordEncoder passwordEncoder;
	
	@Autowired
	private MailService mailService;
	
	private MemberDAO mDao;	
	
	@Autowired // Spring에서 의존성 주입 하는법
	MemberService mService;  // 의존성주입이 필요
			
	/*
	 * SessionAttributes를 사용하기 위해서는
	 * 반드시 해당 변수를 생성하는 method가 controller에 있어야 하고
	 * 해당 메서드에는 @ModelAttribute ("변수명")가 있어야 한다.
	 */
	@ModelAttribute("memberDTO")
	public MemberDTO newMember() {
		return new MemberDTO();
	}
	

	@GetMapping("/constract")
	public String viewConstract() {
		
		log.info(">>>>> MEMBER/CONSTRACT PAGE 출력");
		return "member/constract";
		
	}
	/*
	 * SessionAttributes에서 설정한 변수(객체)에는
	 * @ModelAttribute를 설정해 두어야 한다.
	 * 단, 5.x이하에서는 필수 5.x 이상에서는선택
	 * 
	 * 만약 Attributes의 이름을 표준패턴이 아닌 임의의 이름으로 사용할 경우
	 * @ModelAttributes("객체이름")을 필수로 지정해 주어야 한다.
	 */
	
	@GetMapping("/join")
	public String getJoin(@ModelAttribute("memberDTO")MemberDTO mDto,
						  @RequestParam(value="flag", defaultValue = "0") String flag,
						  Model model) {
		// constract 페이지를 통해서 들어오는 플래그는 1이 들어가는데 그외 비정상적인 페이지를 통해 들어오는 것은 
		log.info(">>>>> MEMBER/JOIN PAGE GET 출력");
		log.info(mDto.toString());
		
		model.addAttribute("flag", flag);
		
		return "member/join";
	}
	
	/*
	 *  join POST가 mDto를 수신할때
	 *  입력 form 에서 사용자가 입력한 값들이 있으면
	 *  그 값들을 mDto의 필드변수에 setting을 하고
	 *  
	 *  만약 없으면
	 *  메모리 어딘가에 보관중인 SessionAttributes로 설정된
	 *  mDto변수에서 값을 채워서 매개변수에 주입한다.
	 *  
	 *  따라서 form 에서 보이지 않아도 되는 값들을
	 *  별도의 코딩을 하지않아도
	 *  자동으로 join POST로 전송되는 효과를 낸다 
	 *  단, 이기능을 효율적으로 사용하려면
	 *  jsp 코드에서 Spring-form tag로 input을 코딩해야 한다.
	 */
	
	
	@PostMapping("/join")
	public String join(@ModelAttribute("memberDTO") MemberDTO mDto,
														SessionStatus sessionStatus,
														HttpServletRequest request,
														RedirectAttributes rttr) {
		// view단에서 Controller단으로 올바르게 이동결과값 확인(URL  GET SET확인)
		log.info(">>>>> MEMBER/JOIN PAGE POST 출력");
		
		// view단에서 전송된 데이터가 잘 전달됐는지 확인 
		log.info(mDto.toString());
		
		log.info("password: " + mDto.getPw()); // 사용자 입력PW값
		// 1. 사용자 암호 hash 변환
		String encPw = passwordEncoder.encode(mDto.getPw()); 
		mDto.setPw(encPw);
		log.info("Password(+Hash): " + mDto.getPw()); 
		
		
		// 2.DB에 회원등록
		int result  = mService.memInsert(mDto);
		
		// 3.회원 등록 결과
		if(result > 0) {
			log.info(">>>>>" + mDto.getId()+ "님 회원가입 되셨습니다");
		}
		// 4.회원가입 인증 메일 보내기
		mailService.mailSendUser(mDto.getEmail(), mDto.getId(),request);
		
		// SessionAttributes를 사용할때 insert, update가 완료되고
		// view로 보내기전 반드시 setComplet()를 실행하여
		// session에 담긴 값을 clear 해주어야 한다.
		sessionStatus.setComplete();
		
		// 회원가 lashAttribute("id", mDto.getID());
		rttr.addFlashAttribute("id",mDto.getId()); 
		rttr.addFlashAttribute("email", mDto.getEmail());
		rttr.addFlashAttribute("key", "join");
		
		return "redirect:/"; 
		// 
	}
	
	// 회원가입 후 email 인증
	@GetMapping("/keyauth")
	public String keyAuth(String id, String key, RedirectAttributes rttr) {
		
		mailService.keyAuth(id,key);
		
		// 인증 후 메시지 출력을 위한 값 전달
		rttr.addFlashAttribute("id",id);
		rttr.addFlashAttribute("key","auth");
		
		return "redirect:/";
	}
	
	// 회원가입 ID 중복체크
	@ResponseBody
	@PostMapping("/idoverlap")
	public String idOverlap(String id) {
		log.info(">>>>> ID OVERLAP CHECK");
		log.info("아이디: " + id);
		
		int cnt = mService.idOverlap(id);
		
		String flag = "1";
		if(cnt == 0) {
			flag = "0";
		}		
		return flag;
	}
	
	
	
	
}
