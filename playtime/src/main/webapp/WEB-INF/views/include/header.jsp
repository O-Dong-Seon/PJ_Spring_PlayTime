<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ include file="include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<title>playtime</title>
<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
<script src="https://kit.fontawesome.com/912e79718f.js"
	crossorigin="anonymous"></script>
<style type="text/css">
div.header_wrap {
	position: fixed;
	top: 0;
	z-index:100;
	width: 100%;
	background-color: white;
	box-shadow: 0 0 1px 1px rgba(20, 23, 28, .1), 0 3px 1px 0
		rgba(20, 23, 28, .1);
	/*z-index: 999;*/
}

div.header_content {
	/*background-color: pink;*/
	width: 1400px;
	margin: 0 auto;
	height: 65px;
	box-sizing: border-box;
	/*	border-left: 1px solid red;
			border-right: 1px solid red;*/
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.header_content_logo {
	
}

.header_content_search {
	
}

.header_content_search_group {
	display: flex;
	align-items: center;
	background-color: #f2f3f5;
	border-radius: 2px;
}

.header_content_search_input {
	background-color: transparent;
	font-size: 13px;
	border-color: transparent;
	width: 220px height: 44px;
	border-radius: 2px;
	padding: 10px 12px;
	outline: none; /* input태그 Focus시 파랑테두리 */
}

.header_content_search_btn {
	background-color: transparent;
	border-color: transparent;
	width: 44px;
	height: 44px;
	cursor: pointer;
	color: #CACAE2;
	border-top-right-radius: 2px;
	border-bottom-right-radius: 2px;
}

.header_content_search_btn:hover {
	background-color: #CACAE2;
	color: white;
}

.header_content_nav {
	display: flex;
	align-items: center;
	justify-content: space-between;
	width: 330px;
}

.header_content_nav>div {
	/*border: 1px solid red;*/
	padding: 10px 0;
}

.header_content_member { /* 로그인,회원가입*/
	/* width: 160px; */
	display: flex;
	align-items: center;
	justify-content: space-between;
	flex-direction: row; /* default(생략가능) */
}

.header_content_member>div {
	padding: 10px 0px 10px 3px;
}

.header_content_dropdown_group {
	position: relative;
}

.header_content_dropdown_wrap:hover .header_dropdown {
	display: block;
}

.header_content_dropdown_group>a {
	display: inline-block;
	padding: 12px 5px;
	font-weight: 400;
	border: 1px solid transparent;
	border-radius: 2px;
	height: 45px;
	color: #506763;
	line-height: 19px;
}

.header_content_dropdown_group:hover>div>a, .header_content_member_cart:hover>a
	{
	background-color: rgba(20, 23, 28, .05);
	border-color: rgba(20, 23, 28, .05);
}

.header_content_member_cart>a {
	display: inline-block;
	width: 45px;
	height: 45px;
	border-radius: 50%;
	color: #506763;
	border: 1px solid transparent;
	text-align: center;
	padding: 12px;
	line-height: 19px;
}

.header_content_logo_img {
	max-width: 125px;
	vertical-align: middle;
	display: block;
}

.header_content_logo_text {
	font-size: 25px;
	font-weight: bold;
	vertical-align: middle;
	font-family: 'Acme', sans-serif;
}

.header_dropdown_menu {
	border-bottom-left-radius: 2px;
	border-bottom-right-radius: 2px;
	box-shadow: 0 4px 16px rgba(20, 23, 28, .25);
	background-color: white;
	padding: 10px 0;
}

.header_dropdown_menu a {
	width: 130px;
	display: inline-block;
	font-size: 15px;
	color: #505763;
	text-align: center;
	padding: 5px 15px;
	font-weight: 400;
	position: relative;
	z-index: 100;
}

.header_dropdown_menu a:hover {
	color: #007791;
	background-color: #f2f3f5;
}

.header_dropdown {
	position: absolute;
	top: 52px;
	left: 0;
	display: none;
}

.arrow {
	position: absolute;
	top: -7px;
	left: 3px;
	width: 15px;
	height: 15px;
	transform: rotate(45deg);
	background-color: white;
	border-color: transparent transparent #fff transparent;
	z-index: 99;
}

/* 모달 로그인 창 */
.modal_wrap {
	position: fixed;
	z-index: 1000;
	background-color: rgba(0, 0, 0, 0.4);
	overflow: auto;
	width: 100%;
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	display: none;
}

.modal_content {
	position: relative;
	width: 484px;
	height: 623px;
	background-color: white;
	box-shadow: 0 4px 10px 0 rgba(0, 0, 0, 0.2), 0 4px 20px 0
		rgba(0, 0, 0, 0.19);
	border-radius: 5px;
	overflow: hidden;
}

.max-small {
	width: 60px;
	height: 60px;
}

.t_header {
	min-height: 400px;
	padding: 20px 10px 0px;
	display: block;
}

.title_logo {
	display: block;
	height: 45px;
	margin: 5px auto 8px;
	width: 45px;
}

.header_title {
	margin: 0px auto 18px;
	width: 400px;
}

.header_title>h3 {
	color: rgb(51, 51, 51);
	font-size: 36px;
	font-weight: 600;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -1.2px;
	margin: 0;
	/*text-align: center;*/
}

.login_box {
	margin: 0px auto;
	width: 268px;
}
/*login_open*/
.login_t {
	position: relative;
	justify-content: center;
}

.login_content input {
	vertical-align: middle;
	border-radius: 4px;
	border-style: solid;
	border-color: #8f8f8f;
	border-width: 0.5px;
	padding: 8px 14px;
	min-height: 44px;
	margin-bottom: 7px;
	display: block;
	width: 268px;
	font-size: 16px;
	outline: none;
}

.login_content {
	margin-bottom: 12px;
	margin-top: 8px;
}

.pass_search {
	justify-content: center;
	margin-bottom: 0;
	margin-top: -13px;
	font-size: 16px;
}

.login_btn > button {
	border: 0px;
	height: 36px;
	display: inline-block;
	border-radius: 4px;
	padding: 0px 18px;
	font-size: 15px;
	font-weight: bold;
	outline: none;
	box-shadow: none;
	cursor: pointer;
	margin-top: 10px;
	vertical-align: middle;
	text-align: center;
	background-color: rgb(230, 0, 35);
	color: white;
	width: 100%;
}

.else {
	margin-bottom: 16px;
	margin-top: 16px;
	overflow: hidden;
	text-align: center;
	font-size: 15px;
	color: rgb(51, 51, 51);
}

.sns_btn {
	margin: 0 auto;
	width: 268px;
	position: relative;
}

.btn-common>h3 {
	color: white;
	display: inline-block;
	font-size: 18px;
	font-weight: bold;
	letter-spacing: normal;
	padding-left: 4px;
	padding-top: 1px;
	vertical-align: text-bottom;
	white-space: normal;
	width: 88%;
	text-align: center;
	margin: 0;
	line-height: 40px;
}

.sns_btn>.face_btn {
	background-color: rgb(24, 119, 242);
}

.area {
	height: 10px;
}

.sns_btn>.google_btn {
	background-color: rgb(66, 133, 244);
}

.sns_btn>div {
	margin-bottom: 7px;
}

.btn-common {
	border: 0px;
	height: 40px;
	border-radius: 6px;
	padding: 0px 0px 0px 8px;
	font-size: none;
	box-shadow: none;
	cursor: pointer;
	margin-top: 0px;
	vertical-align: middle;
	text-align: left;
	background-clip: padding-box;
	transition: opacity 0.2s linear 0s;
	width: 100%;
}

.line {
	border-bottom: 1px solid rgb(222, 222, 222);
	margin: 10px auto;
	width: 100px;
}

.footer_private {
	font-size: 12px;
	font-weight: normal;
	/*text-align: center;*/
	transition: opacity 0.2s linear 0s;
	color: black;
	/*width: 224px;*/
	width: 264px;
	margin: 0 auto;
}

.footer_sign_up {
	color: black;
	cursor: pointer;
	margin-left: 5px;
	font-size: 11px;
	text-align: center;
}

.login_close {
	position: absolute;
	top: 7px;
	right: 7px;
}

.login_close>button {
	color: rgb(142, 142, 142);
	border: none;
	background: white;
	font-size: 30px;
	cursor: pointer;
	outline: none;
}

.login_close>button:hover {
	color: #EBA444;
}

.pw_eye {
	position: absolute;
	color: #AAA;
	font-size: 17px;
	top: 0px;
	right: 7px;
	cursor: pointer;
	height: 36px;
	line-height: 45px;
	width: 30px;
	text-align: center;
}
/*TOP 버튼*/
.fix_btn {
	position: fixed;
	right: 50px;
	color: black;
	width: 65px;
	height: 65px;
	border-radius: 50%;
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 35px;
	cursor: pointer;
	box-shadow: 0 4px 10px 0 rgba(0, 0, 0, 0.2), 0 4px 20px 0
		rgba(0, 0, 0, 0.19);
}

.fix_btn>i {
	transition: transform .3s;
}

.fix_btn:hover>i {
	transform: scale(1.3); /*스케일은 사이즈가 커짐*/
}

.top_btn {
	bottom: 115px;
	background-color: #ffffff;
	display: none; 
}
.err_content {
		font-size: 13px;
		color: red;
		margin-top: -12px;
	    display:none;
		
}

/*484 x 623*/
</style>
</head>
<body>
	<div class="top_btn fix_btn">
		<i class="far fa-arrow-alt-circle-up"></i>
	</div>
	<div class="modal_wrap">
		<div class="modal_content">
			<div class="login_close">
				<button>
					<i class="fas fa-times"></i>
				</button>
			</div>
			<div class="t_header box">
				<div class="title_logo">
					<img class='max-small' src="${path}/resources/img/블래키.png">
				</div>
				<div class="header_title">
					<h3>PlayTime에 오신 것을 환영합니다</h3>
				</div>
				<form>
					<div class="login_box">
						<form class="frm_login" onsubmit="return false;">
							<div class="err_content"></div>
							<div class="login_content">
								<div class="login_t" id="naver_id">
									<input type="text" placeholder="이메일" id ="login_id">
								</div>
								<div class="login_t" id="naver_pw">
									<input type="text" placeholder="비밀번호" required minlength="6"
										maxlength="18" id="login_pw"> <span class="pw_eye"> <i
										class="fas fa-eye-slash"></i>
									</span>
								</div>
							</div>
							<div class="pass_search">비밀번호를 잊으셨나요?</div>
							<div class="login_btn">
								<button type="submit" id="btn-login">로그인</button>
							</div>
						</form>
					</div>
				</form>
				<p class="else">또는</p>
			</div>
			<div class="sns_btn box">
				<div class="face_btn btn-common">
					<h3>Facebook으로 계속하기</h3>
				</div>
				<div class="google_btn btn-common">
					<h3>Google로 계속하기</h3>
				</div>
			</div>

			<div class="footer">
				<div class="footer_private">
					계속하면 <a href="#">서비스약관</a> 및 <a href="#">개인정보 보호정책</a>에 동의하는 것으로
					간주됩니다
				</div>
				<div class="line"></div>
				<div class="footer_sign_up">아직 Playtime에 가입하시지 않으셨나요?가입하기</div>
			</div>
		</div>
	</div>




	<header>
		<div class="header_wrap">
			<div class="header_content">
				<div class="header_content_logo">
					<a href=""> <img class="header_content_logo_img"
						src="${path}/resources/img/cat_playtime_big2.png" alt="로고이미지"> <!-- <span class="header_content_logo_text">PlayTime</span> -->
					</a>
				</div>

				<div class="header_content_nav">

					<div class="header_content_dropdown_group">
						<a href="#" class="magicline">할인</a>
					</div>

					<div class="header_content_dropdown_wrap">
						<div class="header_content_dropdown_group">
							<a href="#" class="magicline">인디</a>
							<div class="header_dropdown">
								<div class="arrow"></div>
								<ul class="header_dropdown_menu">
									<li><a href="#">액션</a></li>
									<li><a href="#">공포</a></li>
									<li><a href="#">RPG</a></li>
									<li><a href="#">기타</a></li>
								</ul>
							</div>
						</div>
					</div>

					<div class="header_content_dropdown_wrap">
						<div class="header_content_dropdown_group">
							<a href="#" class="magicline">액션</a>
							<div class="header_dropdown">
								<div class="arrow"></div>
								<ul class="header_dropdown_menu">
									<li><a href="#">스토리</a></li>
									<li><a href="#">멀티플레이</a></li>
									<li><a href="#">전략</a></li>
								</ul>
							</div>
						</div>
					</div>

					<div class="header_content_dropdown_wrap">
						<div class="header_content_dropdown_group">
							<a href="#" class="magicline">공포</a>
							<div class="header_dropdown">
								<div class="arrow"></div>
								<ul class="header_dropdown_menu">
									<li><a href="#">스토리</a></li>
									<li><a href="#">멀티플레이</a></li>
									<li><a href="#">퍼즐</a></li>
								</ul>
							</div>
						</div>
					</div>

					<div class="header_content_dropdown_wrap">
						<div class="header_content_dropdown_group">
							<a href="#" class="magicline">RPG</a>
							<div class="header_dropdown">
								<div class="arrow"></div>
								<ul class="header_dropdown_menu">
									<li><a href="#">스토리</a></li>
									<li><a href="#">멀티플레이</a></li>
									<li><a href="#">액션</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="search"></div>

				<div class="header_content_member">
					<div class="header_content_dropdown_wrap">
						<div class="header_content_dropdown_group">
							<a href="#">마이페이지</a>
							<div class="header_dropdown">
								<div class="arrow"></div>
								<ul class="header_dropdown_menu">
									<li><a href="#">구매내역</a></li>
									<li><a href="#">위시리스트</a></li>
									<c:if test="${not empty userid }">
										<li><a href="${path}/member/update">회원정보수정</a></li>
										<li><a href="${path}/member/pwupdate">비밀번호수정</a></li>
										<li><a href="${path}/member/drop">회원탈퇴</a></li>
									</c:if>									
									<li><a href="${path}/member/mypage">마이페이지</a></li>
									<li><a href="#">고객센터</a></li>
								</ul>
							</div>
						</div>
					</div>

					<div>
						<div class="header_content_member_cart">
							<a href="#"><i class="fas fa-cart-arrow-down"></i></a>
						</div>
					</div>					
					<c:choose>
						<c:when test="${empty sessionScope.userid}">
							<div><button type="button" class="btn btn-basic login_open" id="header_btn_login">로그인</button></div>
							<div><button type="button" class="btn btn-primary" id="header_btn_join">회원가입</button></div>
						</c:when>
						<c:otherwise>	
							<div><span>${sessionScope.userid}(${sessionScope.name})</span></div>
							<div><button type="button" id="header_btn_logout" class="btn btn-basic login_out">로그아웃</button></div>
						</c:otherwise>
					</c:choose>
				</div>
			</div>

		</div>
	</header>
</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	
	$(function(){
		//alert('${sessionScope.userid}');
		
		var message = '${message}';
		if(message == 'nologin') {
			$('.modal_wrap').css('display', 'flex');
			$('login_id').focus();
			$('.err_content').css('display', 'block')
						     .text('로그인이 필요한 기능입니다');
		}
	});
	


	/* $(document).on(); 항상 이것먼저 만들어두는게 좋음 */
	// jQery 문법
	// $('선택자').옵션();
	// $('#test').css('color','green');
	// $ = jquery
	// ('#test') = 선택자(id가 test)
	// .css() = 옵션(글자색을 녹색) 
	// jQery 이벤트 문법(클릭,포커스,블러 등)
	// $(document).on('이벤트', '선택자', function())
	// 		이벤트 발생시 동작할 내용들...
	// });
	// $(document).on('click', '#test',  function())
	// 			$(this).css('color', 'blue');
	// });
	// $(document).on() = 문서 전체에서~
	// ('click')		= 클릭 이벤트가 발생하면
	// ('#test')		= 아이디가 test인
	// function(){}		= 익명함수(이름이 태없는 함수)
	// $(this) 			= 나 자신 (여기서는 #test)
	// 해석: 문서전체에서 id가 test인 태그가 클릭되면
	//		 나를(#test) 글자색을 blue로 변경해라!

	// 로그인 input(id,pw)에 focus 되면 테두리 색 변경
	$(document).on('focus', '.login_content input', function() {
		// console.log('focus 됏어염~~');
		$(this).css('border', '0.5px solid #3885CA');
	});
	$(document).on('focus', '.login_content input', function() {
		$(this).css('border', '0.5px solid #8f8f8f');
		// $(this).css('border-width', '0.5px');
	});

	// Login 버튼 클릭시 modal창 open
	$(document).on('click', '.login_open', function() { // alert('test'); --경고창
		$('.modal_wrap').css('display', 'flex');
	});

	// Modal창의 X버튼을 클릭하면 Modal창 close
	$(document).on(
			'click',
			'.login_close',
			function() {
				$('.modal_wrap').css('display', 'none');
				$('.frm_login')[0].reset();
				// $('.login_input').val('');
				$('.pw_eye').prev().attr('type', 'password');
				$('.pw_eye').html('<i class="fas fa-eye-slash"></i>').css(
						'color', '#AAA');
			})
	//Login Modal창 암호 보이기 or 숨기기
	// 값을 가져오는 방법
	// <sapn class="aaa">초롱</span>
	// <input type="text" class="dobby">체리</input>
	//
	// input태그 값 가져오는방법
	// : 서버단으로 값을 보낼때 사용하는 태그들이 대부분
	// $('.dobby').val('메롱');

	// input 태그 이외의 값 가져오는 방법
	// $('.aaa').text();
	// input 태그 이외의 값 넣는 방법
	// $ ('.aaa').text('뭐시여');

	// 태그의 옵션(attribute)을 가져오고 싶을 때
	// $('.dobby').atter('type');
	// $('.dobby').atter('class');

	// Login Modal창 암호 보이기 or 숨기기
	$(document).on(
			'click',
			'.pw_eye',
			function() {
				var code = $(this).prev().attr('type');

				if (code == 'password') {
					$(this).prev().attr('type', 'text');
					$(this).html('<i class="fas fa-eye"></i>').css('close',
							'#666');
				} else {
					$(this).prev().attr('type', 'password');
					$(this).html('<i class="fas fa-eye-slash"></i>').css(
							'color', '#AAA');
				}
				// 기능을 더 주고싶으면 ; 을 찍지말고 .을 찍어서 끝내지않고 기능을 더 줄수있다(체이닝기법)

			});
	// header 가입하기 버튼 클릭시 동의 페이지 이동
	$(document).on('click', '#header_btn_join', function() {
		location.href = "${path}/member/constract";
	});
	
	// LOGIM 버튼 클릭시 AJAX 동작
	$(document).on('click','#btn-login',function(){
		// alert('test');
		// id 와 pw값 받아와서 null이면 작동X
		var id = $('#login_id').val();
		var pw = $('#login_pw').val();
		
		if(id != '' && pw != '' && id.length !=0 && pw.length != 0 ){
			$.ajax({
				url:'${path}/login/in',
				type: 'POST',
				data: 'id='+id+'&pw='+pw,
				success: function(data){
					console.log(data);
					
					if(data == 0) {
						$('.err_content').css('display', 'block')
						.text('아이디 및 비밀번호를 확인하거나 계정을 생성하세요');
					} else if(data == 1){
						console.log('로그인성공');
						location.reload(); // 새로고침
					} else if(data == 2) {
						$('.err_content').css('display', 'block')
						.text('이메일 인증 후 로그인 할 수 있습니다.');
					}
				},
				error: function() {
					alert('System Error:/');
				}
			});
		}		
	});
	
	
	/* 로그아웃 기능 */
	$(document).on('click', '#header_btn_logout', function(){
		$.ajax({
			url: '${path}/login/out',
			type: 'POST',
			success: function(){
				console.log('Logout Success:D');
				location.reload();
			},
			error: function(){
				alert('System Error:/');
			}
		});
	});
	
	
	
	
	
	// Header가입하기 버튼 클릭시 동의 페이지 이동
	
	$(document).on('click', '#header_btn_join', function(){
		location.href="${path}/member/constract";
	});
	
</script>
</html>