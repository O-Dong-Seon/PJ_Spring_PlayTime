<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/png"
	href="${path}/resources/img/naver/naversm.png">
<link rel="stylesheet" type="text/css"
	href="${path}/resources/css/common.css">
<script src="https://kit.fontawesome.com/912e79718f.js"
	crossorigin="anonymous"></script>
<style type="text/css">
/* css======================= */
* {
	font-family: Dotum, '돋움', Helvetica, sans-serif;
	box-sizing: border-box;
}

body, h1, ul, h2, h3, h4, h5, h6, ul, p {
	margin: 0;
	padding: 0;
}

body {
	background-color: #f5f6f7;
	font-size: 12px;
}

ul {
	list-style: none;
} /*
		a {
			text-decoration: none;
			color: inherit;
		}*/
.wrap {
	width: 768px;
	margin: 0 auto;
	/*	border: 1px solid black;*/
}

.header {
	padding: 62px 0px 20px;
	position: relative;
	/*		border: 1px solid red;*/
}
/* a태그는 기본 inline */
.n_logo {
	display: block;
	width: 770px;
	height: 138px;
	background: url("${path}/resources/img/cpt.png") 0 -13px;
	/*../img/naver/pc_sp_join.png*/
	background-position: center center;
	margin: auto;
}

.join_content {
	width: 460px;
	margin: 0 auto;
	/*	border: 1px solid blue;*/
}

.row_group {
	overflow: hidden;
	width: 100%;
}

.join_title {
	margin: 19px 0 8px;
	font-size: 14px;
	font-weight: 700;
	color: black;
}

.ps_box {
	display: flex;
	align-items: center;
	position: relative;
	width: 100%;
	height: 51px;
	border: 1px solid #dadada;
	padding: 10px 14px 10px 14px;
	background: #fff;
	vertical-align: top;
}

.ps_post {
	display: table-column;
}

.int_id {
	padding-right: 110px;
}

.int_pass {
	padding-right: 40px;
}

.int {
	display: block;
	position: relative;
	width: 100%;
	height: 29px;
	padding-right: 25px;
	line-height: 29px;
	border: none;
	background: #fff;
	font-size: 15px;
	z-index: 10;
}

.step_url {
	position: absolute;
	right: 13px;
	font-size: 15px;
	color: #8e8e8e;
}

.error_next_box {
	display: block;
	margin: 9px 0 -2px;
	font-size: 12px;
	line-height: 14px;
	color: red;
	height: 15px;
	visibility: hidden;
}

.pw_lock {
	background-image:
		url('https://static.nid.naver.com/images/ui/join/m_icon_pw_step.png');
	background-repeat: no-repeat;
	background-size: 125px 75px;
	cursor: pointer;
	width: 24px;
	height: 24px;
	display: inline-block;
}

.repw_lock {
	background-image:
		url('https://static.nid.naver.com/images/ui/join/m_icon_pw_step.png');
	background-repeat: no-repeat;
	background-size: 125px 75px;
	cursor: pointer;
	width: 24px;
	height: 24px;
	display: inline-block;
	background-position: -27px 0;
}

.bir_wrap {
	display: table;
	width: 100%;
}

.bir_mm, .bir_dd {
	padding-left: 10px;
}

.bir_yy, .bir_mm, .bir_dd {
	display: table-cell;
	table-layout: fixed;
	width: 147px;
	vertical-align: middle;
}
/*.join_brithday {
			padding: 11px 14px;
		}*/
.sel {
	background: #fff
		url('https://static.nid.naver.com/images/join/pc/sel_arr_2x.gif') 100%
		50% no-repeat;
	background-size: 20px 8px;
	width: 100%;
	height: 29px;
	font-size: 15px;
	line-height: 18px;
	color: #000;
	border: none;
	-webkit-appearance: none;
}

.choice {
	font-size: 12px;
	font-weight: 400;
	color: #8e8e8e;
}

.btn_double_area {
	margin: 30px 0 9px;
}

.btn_type {
	display: block;
	width: 100%;
	padding: 21px 0 17px;
	font-size: 20px;
	font-weight: 700;
	text-align: center;
	cursor: no-drop;
	/*.btn_agree{
			color: white;
			background-color: #bc978d;*/
}

#footer {
	padding: 15px 0;
}

#footer>ul {
	margin: 0 auto 9px;
	text-align: center;
}

#footer * {
	font-size: 11px;
	line-height: normal;
	list-style: none;
	color: #333;
}

#footer>ul>li {
	display: inline;
	padding: 0 5px 0 7px;
	border-left: 1px solid #dadada;
}

#footer>ul>li a:hover {
	color: #1fbc02;
	text-decoration: underline;
}

#footer ul li:first-child { /*footer의 첫번째 자식만*/
	border-left: 0px !important;
	/*!important는 제일 높은 레벨 가장먼저 먹음*/
}

#addr_logo {
	width: 63px;
	height: 11px;
	display: inline-block;
	/*background: url();
			background-position: -242px 0;
			background-size: 460px auto;*/
}

#address {
	margin: 0auto;
	text-align: center;
}

#address * {
	font: 9px verdana;
}

#address a {
	font-weight: bold;
}

#address a:hover {
	color: #1fbc02;
}

.addr_box input {
	width: 100%;
	height: 31px;
	border: none;
	outline: none;
}
/*	table <= display: table;
		td    <= display: table-cell;
		div   <= display: block;*/
/* 모달 경고 창*/
	.modal_wrap{
		position: fixed;
		z-index: 1000;
		background-color: rgba(0,0,0,0.4);
		overflow: auto;
		width: 100%;
		height: 100%;
		display: flex;
		justify-content: center;
		align-items: center;
		display: none; 
	}
	.modal_content{
		position: relative;
		width: 400px;
		background-color: white;
		box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2),0 4px 20px 0 rgba(0,0,0,0.19);
		border-radius: 5px;
		overflow: hidden;
		padding: 15px;
	}
	.modal_box{
		margin: 0;
		padding: 0;
	}
	.modal_box{
		text-align: center;
		font-size: 12px;
	}
	.agree_title > h3{	
		margin-bottom: 14px;
		text-align: center;
		font-size: 25px;
	}
	.box_line{
		margin-top: 80px;
		padding: 1px;
		border-bottom: 1px solid #d4d4d4;
		margin: 14px auto;
		width: 290px;
	}
	.modal_button > .cancel_button{
		border-radius: 4px;
		border: 1px solid #d6d6d6;
		text-align: center;
		background-color: #fafafa;
		display: inline-block;
		min-width: 100px;
		padding: 10px;
		cursor: pointer;
	}
	.modal_button > .agree_button{
		border-radius: 4px;
		border: 1px solid #d6d6d6;
		text-align: center;
		background-color: #ffea00;
		display: inline-block;
		min-width: 100px;
		padding: 10px;
		cursor: pointer;
	}
	/* 로딩창 애니메이션*/
	#back{
		position: fixed;
		z-index: 1200;
		background-color: rgba(0,0,0,0.4);
		overflow: auto;
		width: 100%;
		height: 100%;
		top:0;
		left: 0;
		display: none;
		align-items:center;
		justify-content:center;
	}
	.loading_img{
	 	animation: ani_loading 0.8s infinite linear;
	 	font-size: 70px;
	 	color: #EBA444;
	}
	@keyframes ani_loading{
		from {-webkit-transform: rotate(0deg);}
		to 	 {-webkit-transform: rotate(359deg);}
	}


</style>
</head>
<body>
	<div class="modal_wrap">
		<div class="modal_content">
			<div class="agree_title">
				<h3>회원 가입 성공</h3>
			</div>
			<div class="modal_box">
				<div><h3>정상적인 서비스 이용을 위해 가입시 등록된<br>
				 이메일로 "인증하기"를 해주세요</h3></div>
			<div class="box_line"></div>

			<div class="modal_button">
				
					<div class="agree_button">닫기</div>
			
			</div>
		</div>
		</div>
	</div>	

	<div class="wrap">
		<header>
			<div class="header">
				<h1 class="naver_logo">
					<a href="${path}/" class="n_logo"></a>
				</h1>
			</div>
		</header>

		<section>
			<!--  <form id="frm_member" name="frm_join" action="${path}/member/join" method="POST"> -->
			<form:form id="frm_member" modelAttribute="memberDTO"
				autocomplete="on">
				<div class="container">
					<div class="join_content">
						<div class="row_group">
							<div class="join_row">
								<h3 class="join_title">
									<label for="id">아이디</label>
								</h3>
								<span class="ps_box int_id"> <input type="text" id="uid"
									name="id" class="int join_info_box_input"> <span
									class="step_url">@naver.com</span>
								</span> <span class="error_next_box">필수 정보입니다</span>
							</div>

							<div class="join_row">
								<h3 class="join_title">
									<label for="pswd1">비밀번호</label>
								</h3>
								<span class="ps_box int_pass"> <input type="text"
									id="upw" name="pw" class="int join_info_box_input"> <span
									class="step_url"><span class="pw_lock"></span></span>
								</span> <span class="error_next_box">필수 정보입니다</span>
							</div>

							<div class="join_row">
								<h3 class="join_title">
									<label for="urpw">비밀번호 재확인</label>
								</h3>
								<span class="ps_box int_pass"> <input type="text"
									id="urpw" name="urpw" class="int join_info_box_input">
									<span class="step_url"><span class="repw_lock"></span></span>
								</span> <span class="error_next_box">필수 정보입니다</span>
							</div>
						</div>

						<div class="row_group">
							<div class="join_row">
								<h3 class="join_title">
									<label for="name">이름</label>
								</h3>
								<span class="ps_box"> <input type="text" id="uname"
									name="name" class="int join_info_box_input">
								</span> <span class="error_next_box">필수 정보입니다</span>
							</div>



							<div class="join_row">
								<h3 class="join_title">
									<label for="name">본인 확인 이메일<span class="choice">(선택)</span></label>
								</h3>
								<span class="ps_box"> <input type="text" id="uemail"
									name="email" class="int join_info_box_input" placeholder="선택입력">
								</span> <span class="error_next_box">필수 정보입니다</span>
							</div>

							<div class="join_row">
								<h3 class="join_title">
									<label for="name">휴대전화<span class="choice">(선택)</span></label>
								</h3>


								<span class="ps_box"> <input type="tel" id="uphone"
									name="phone" class="int join_info_box_input"
									placeholder="'-'없이 입력 예) 01023341234">
								</span> <span class="error_next_box">필수 정보입니다</span>

							</div>

							<div class="join_row addr_box">
								<h3 class="join_title">
									<label for="name">상세주소<span class="choice">(필수)</span></label>
								</h3>

								<span class="ps_box"> <input type="text"
									name ="postcode"class="addr_only join_info_box_input" id="sample6_postcode" placeholder="우편번호"> 
									<input type="button" id="btn_post"onclick="sample6_execDaumPostcode()" value="우편번호 찾기"></span>
									<span class="ps_box"> <input type="text" name="addr1" class="addr_only join_info_box_input" id="sample6_address"	placeholder="주소"></span>
									<span class="ps_box"> <input type="text" name="addr2"class="join_info_box_input" id="sample6_detailAddress" placeholder="상세주소"></span>
									 <input	type="hidden" id="sample6_extraAddress" placeholder="참고항목">
								<span class="error_next_box">필수 정보입니다</span>
							</div>


							<div class="btn_double_area">
								<button type="button" class="btn_type btn_agree " id="btn_join">가입하기</button>
							</div>
						</div>
					</div>
			</form:form>
			<%--</form> --%>
		</section>
		<footer>
			<div id="footer">
				<ul>
					<li><a href="#">이용약관</a></li>
					<li><strong><a href="#">개인정보처리방침</a></strong></li>
					<li><a href="#">책임의 한계와 법적고지</a></li>
					<li><a href="#">회원정보 고객센터</a></li>
				</ul>
				<div id="address">
					<span> <a href="https://www.naver.com"> <!-- <img id="addr_logo" src="../img/naver/naver_logo.png"> -->
					</a>
					</span> <span>Copyright</span> <span>ⓒ</span> <span><strong><a
							href="#">Play time.</a></strong></span> <span>All Rights Reserved.</span>
				</div>
			</div>
		</footer>
	</div>
</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="${path}/resources/js/validation.js"></script>
<script type="text/javascript">
	$(function() {
		FunLoadingBarStart();
		// 비정상적인 접근인지 판단 
		var flag = '${flag}';
		if (flag == 0) {
			location.href = "${path}/member/constract";
		}

		// 비밀번호가 유효한 값인지 체크해주는 Flag값
		var pwFlag = false;

		// 유효성 체크 여부를 알려주는 배열
		var checkArr = new Array(6).fill(false);

		// printCheckArr(checkArr);
		var checkAll = true;

		// 유효성 체크
		// id가 uid인 input태그의 값을 가져와서 체크	
		$('#uid').keyup(function() {
			// 사용자가 입력한 값의 좌우여백을 제거하고 id에 입력
			var id = $(this).val().trim(); // 사용자가 입력한 값
			// validation.js의 checkId로 유효성체크를 실행 후
			// 결과를 result에 담음 (code, desc)
			var result = joinValidate.checkId(id);

			if (result.code == 0) {
				checkArr[0] = 'true';
			} else {
				checkArr[0] = 'false';
			}
			// printCheckArr(checkArr);

			// 유효셩체크 결과로 테두리색과 err메시지를 출력하는
			// // 함수 실행
			// console.log(result.code + "," + result.desc);

			ckDesign(result.code, result.desc, 0, 0);
		});

		// 비밀번호 유효성 체크
		$('#upw').keyup(function() {
			var pw = $.trim($('#upw').val());
			var rpw = $.trim($('#urpw').val());
			// 	1.사용자가 입력한 값 받기
			var result = joinValidate.checkPw(pw, rpw);
			if (result.code == 0 || result.code == 10 || result.code == 6) {
				pwFlag = true;
			} else {
				pwFlag = false;
			}
			// 2.유효성 체크 하기
			var result = joinValidate.checkPw(pw, rpw);

			if (result.code == 10) {
				checkArr[1] = true;
				$('ps_box:eq(2)').css('border', '2px solid #3885CA');
				// $('.error_next_box:eq(2)').css('visibility', 'visible')
				// 			 				 .text(result.desc)
				// 					         .css('color', '#3885CA'); {
			} else if (result.code == 6) {
				checkArr[1] = false;
				$('ps_box:eq(2)').css('border', '2px solid #3885CA');
			} else {
				checkArr[1] = false;
			}
			printCheckArr(checkArr);
			// 3.체크 결과에 따라 디자인하기
			ckDesign(result.code, result.desc, 1, 1);
		});
		//비밀번호 재확인 유효성 체크
		$('#urpw').keyup(
				function() {
					var pw = $.trim($('#upw').val());
					var rpw = $.trim($('#urpw').val());
					// console.log(pw+","+rpw);
					var result = joinValidate.checkRpw(pw, rpw, pwFlag);
					if (result.code == 10) {
						checkArr[1] = true;
						$('ps_box:eq(1)').css('border', '2px solid #3885CA');
					} else if (result.code == 6) {
						checkArr[1] = false;
						$('.error_next_box:eq(1)').css('visibility', 'visible')
								.text(result.desc).css('color', '#3885CA');
					} else {
						checkArr[1] = false;
					}
					printCheckArr(checkArr);
					ckDesign(result.code, result.desc, 2, 2);
				});

		// 이름 유효성체크
		$('#uname').keyup(function() {
			var name = $.trim($(this).val());

			var result = joinValidate.checkName(name);

			if (result.code == 0) {
				checkArr[2] = true;
			} else {
				checkArr[2] = false;
			}
			printCheckArr(checkArr);

			ckDesign(result.code, result.desc, 3, 3);
		});

		// 전화번호 체크
		$('#uphone').keyup(function() {
			var phone = $.trim($(this).val());
			
			var result = joinValidate.checkPhone(phone);

			if (result.code == 0) {
				checkArr[3] = true;
			} else {
				checkArr[3] = false;
			}
			printCheckArr(checkArr);

			ckDesign(result.code, result.desc, 5, 5);
		});

		// 이메일 유효성 체크
		$('#uemail').keyup(function() {
			var email = $.trim($(this).val());
			// alert('test');
			console.log('test');
			var result = joinValidate.checkEmail(email);

			if (result.code == 0) {
				checkArr[4] = true;
			} else {
				checkArr[4] = false;
			}
			printCheckArr(checkArr);

			ckDesign(result.code, result.desc, 4, 4);
		});

		$('.addr_only').click(function() {
			// 사용자가 우편번호 또는 주소 input을 클릭했을 때!
			$('#btn_post').click();
		});

		// 상세 주소를 클릭하면
		$('#sample6_detailAddress').click(function() {
			var addrPost = $('#sample6_postcode').val();
			if (addrPost == '' || addrPost.length == 0) {
				$('#btn_post').click();
			}
		});

		//주소 유효성 체크
		$('#sample6_detailAddress').keyup(function() {
			var addrDetail = $.trim($(this).val());
			var addrPost = $('#sample6_postcode').val();
			// console.log('우편번호'+addrPost+'상세주소:' + addrDetail);

			var result = joinValidate.checkAddr(addrDetail, addrPost);
			
			if (result.code == 3) { //우편번호 & 주소 X 
				ckDesign(result.code, result.desc, 8, 10);
				ckDesign(result.code, result.desc, 7, 10);
				checkArr[5] = false;
			} else if (result.code == 0) { // 상세주소 X
				checkArr[5] = true;
				ckDesign(result.code, result.desc, 7, 10);
				ckDesign(result.code, result.desc, 8, 10);
				ckDesign(result.code, result.desc, 9, 10);
			} else { // 상세주소 통과 X한 모든 경우
				ckDesign(result.code, result.desc, 9, 10);
				checkArr[5] = false;
			}
			printCheckArr(checkArr);
		});

		// 버튼활성화!
		$('.join_info_box_input').blur(function() {

			var checkAll = true;

			for (var i = 0; i < checkArr.length; i++) {
				if (!checkAll[i]) {
					checkAll = false;
				}
			}
			if (checkAll) {
				$('#btn_join').addClass('btn-primary');
				// $('btn_join').prop('disabledd', true);
				$('#btn_join').css('cursor', 'pointer');
			} else {
				$('#btn_join').removeClass('btn-primary');
				// $('btn_join').prop('disabledd', true);
				$('#btn_join').css('cursor', 'no-drop');
			}
			
			
		});

		// 회원가입 버튼 클릭
		$('#btn_join').click(
				function() {
					var invalidAll = true;
					for (var i = 0; i < checkArr.length; i++) {
						if (!checkArr[i]) {
							checkAll = false;
							$('.error_next_box:eq(' + i + ')').css('visibility', 'visible')
															  .css('color','#d95339');
						}
					}
					// printCheckArr(checkArr);

					if (invalidAll) {
						FunLoadingBarStart(); //로딩바 생성

						alert('회원가입 성공!')
						
						$('#frm_member').submit();
					} else {
						alert('유효성 체크를 진행해주세요!')
					}
					// alert('test');

					// 유효성체크가 전부 true이면

					// 하나라도 false이면
				});
		
				
							

		});
	
	//로딩바 출력
	function FunLoadingBarStart(){
		var loadingBarImage = ''; // 가운데 띄워 줄 이미지
		loadingBarImage += "<div id = 'back'>";
		loadingBarImage += "<div id ='loading'>";
		loadingBarImage += "<i class='fas fa-fan loading_img'></i>";
		loadingBarImage += "</div></div>";
		$('body').append(loadingBarImage);
		$('#back').css('display', 'flex');
		$('#loadingImg').show();
	}

	function ckDesign(code, desc, line, msg) {
		if (code == 0 || code == 10) { 							//통과 o 
			$('.ps_box:eq(' + line + ')').css('border', ' 2px solid #3885CA');
			$('.error_next_box:eq(' + msg + ')').css('visibility', 'visible')
												.text(desc)
												.css('color', '#3885CA');
			return true;

		} else { 												// 통과 x
			$('.ps_box:eq(' + line + ')').css('border', ' 2px solid #d95339');
			$('.error_next_box:eq(' + msg + ')').css('visibility', 'visible')
												.text(desc)
												.css('color', '#d95339');
			return false;
		}
	}


</script>
<script	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function sample6_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var addr = ''; // 주소 변수
						var extraAddr = ''; // 참고항목 변수

						//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							addr = data.roadAddress;
						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							addr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
						if (data.userSelectedType === 'R') {
							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraAddr !== '') {
								extraAddr = ' (' + extraAddr + ')';
							}
							// 조합된 참고항목을 해당 필드에 넣는다.
							document.getElementById("sample6_extraAddress").value = extraAddr;

						} else {
							document.getElementById("sample6_extraAddress").value = '';
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample6_postcode').value = data.zonecode;
						document.getElementById("sample6_address").value = addr;
						// 커서를 상세주소 필드로 이동한다.
						document.getElementById("sample6_detailAddress").focus();
					}
				}).open();
	}
	
	// 개발시 사용 : 유효성 체크 전체여부를 출력해주는 함수(true,false)
	function printCheckArr(checkArr) {
		for(var i=0; i < checkArr.length; i++){
			console.log(i + '번지:' + checkArr[i]);		
		}
	}
</script>
</html>