<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
html, body {
	height: 100%;
}

body, th, td, input, select, textarea, button {
	font-size: 13px;
	line-height: 1.5;
	color: #333;
}

body {
	background: #fff;
}

.wrap {
	display: block;
}

#playhead {
	overflow: hidden;
	height: 39px;
	padding-top: 16px;
	border-top: 4px solid #ffde00;
	border-bottom: 1px solid #d4d4d4;
}

#playhead .service_play {
	display: inline-block;
	font-weight: normal;
	font-size: 18px;
	line-height: 20px;
	vertical-align: top;
}

#playtime {
	float: right;
	margin-top: 2px;
	margin-right: 13px;
}

.screen_out {
	overflow: hidden;
	position: absolute;
	width: 0;
	height: 0;
	line-height: 0;
	text-indent: -9999px;
}

#playtime .list_help {
	float: left;
}

#playtime .list_help li {
	float: left;
	margin-right: 12px;
}

#playtime .list_help li .link_help {
	color: #777;
	letter-spacing: -1px;
}

.compatible_wrap {
	width: 800px;
	display: block;
	text-align: center;
	margin: 70px auto 20px auto;
	position: relative;
}

#content {
	text-align: center;
	padding-top: 35px;
}

.compatible_wrap * {
	line-height: 1.5;
	color: #1e1e1e;
	font-size: 14px;
	letter-spacing: -1px;
}

.compatible_wrap>.desc1_box {
	line-height: 1.5s;
}

.compatible_wrap .pt_header {
	text-align: left;
	border-bottom: 1px solid #d6d6d6;
}

.compatible_wrap .pt_header h1 {
	font-weight: normal;
	font-size: 20px;
}

form.pt_section {
	text-align: center;
	width: 100%;
	font-size: 14px;
}

.pt_section_footer {
	margin-top: 8px;
	padding-top: 30px;
	border-top: 1px solid #d4d4d4;
}

.pt_button {
	margin-right: 10px;
	border-radius: 4px;
	border: 1px solid #b6b6b6;
	text-align: center;
	background-color: #fafafa;
	display: inline-block;
	min-width: 118px;
	padding: 11px;
	cursor: no-drop;
}

.pt_button.cancel {
	margin-right: 10px;
}

.pt_button.mean {
	/*	background-color: #ffea00; */
	
}

#playtimefoot {
	position: relative;
	bottom: 0;
	left: 0;
	width: 100%;
	padding: 20px 0 22px;
	border-top: 1px solid #d4d4d4;
	font-size: 12px;
	text-align: center;
	letter-spacing: -1px;
}

.screen_out {
	overflow: hidden;
	position: absolute;
	width: 0;
	height: 0;
	line-height: 0;
	text-indent: -9999px;
}

.footer_link {
	min-height: 18px;
}

.footer_link .link_info {
	display: inline-block;
	line-height: 22px;
	color: #898989;
	white-space: nowrap;
}

.footer_link .txt_bar {
	display: inline-block;
	width: 1px;
	height: 8px;
	margin: 4px 1px 0 3px;
	font-size: 11px;
	background-color: #ccc;
}

.util_cont {
	position: relative;
	display: inline-block;
}

button {
	border: 0 none;
	background-color: transparent;
	cursor: no-drop;
}

.footer_link .btn_info {
	display: inline-block;
	padding: 0;
	margin-top: -2px;
	font-size: 12px;
	line-height: 22px;
	color: #898989;
	vertical-align: top;
	letter-spacing: -1px;
}

.util_cont .ico_arr {
	display: inline-block;
	width: 6px;
	height: 4px;
	margin: 8px 0 0 5px;
	background-position: -70px -44px;
	vertical-align: top;
}

.ico_login {
	display: block;
	overflow: hidden;
	background-image: url('../../img/naver/sel_arr.gif');
	background-repeat: no-repeat;
}

.screen_out {
	overflow: hidden;
	position: absolute;
	width: 0;
	height: 0;
	line-height: 0;
	text-indent: -9999px;
}

.util_cont .cont_util {
	display: none;
	position: absolute;
	bottom: -9px;
	left: -12px;
	width: 78px;
	background-color: #fff;
	border: 1px solid #ddd;
}

.cont_util .item_lang {
	display: block;
	height: 32px;
}

.cont_util .item_lang .link_lang {
	display: block;
	padding: 0 10px;
	line-height: 32px;
	color: #222;
	text-align: left;
}

.pt_title {
	display: block;
	font-weight: normal;
	font-size: 24px;
	margin: 0 0 4px;
}

form.pt_section {
	text-align: center;
	width: 100%;
	font-size: 14px;
}

.pt_email {
	margin-top: 8px;
}

.pt_email_box {
	margin: 10px 0;
	display: inline-block;
	width: 272px;
	height: 38px;
	padding: 0 15px;
	border: 1px solid #d4d4d4;
	border-radius: 3px;
	font-weight: bold;
	line-height: 38px;
	background-color: #f0f0f0;
	text-align: left;
}

.pt_input_group {
	display: inline-block;
	margin: 10px 0;
	width: 272px;
	height: 38px;
	padding: 0 15px;
	border: 1px solid #d4d4d4;
	border-radius: 3px;
	font-weight: bold;
	line-height: 38px;
	background-color: #f0f0f0;
	text-align: left;
}

.pt_input-group .pt_input_wrapper input {
	width: 90%;
}

.pt_input_wrapper input {
	outline: none;
	display: block;
	margin: 0;
	padding: 0;
	border: 0;
	width: 100%;
	margin-top: 10px;
	line-height: 100%;
	background-color: #f0f0f0;
}

/* 모달 경고 창*/
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
	width: 400px;
	background-color: white;
	box-shadow: 0 4px 10px 0 rgba(0, 0, 0, 0.2), 0 4px 20px 0
		rgba(0, 0, 0, 0.19);
	border-radius: 5px;
	overflow: hidden;
	padding: 15px;
}

.modal_box {
	margin: 0;
	padding: 0;
}

.modal_box {
	text-align: center;
	font-size: 12px;
}

.agree_title>h3 {
	margin-bottom: 14px;
	text-align: center;
	font-size: 25px;
}

.box_line {
	margin-top: 80px;
	padding: 1px;
	border-bottom: 1px solid #d4d4d4;
	margin: 14px auto;
	width: 290px;
}

.modal_button>.cancel_button {
	border-radius: 4px;
	border: 1px solid #d6d6d6;
	text-align: center;
	/*background-color: #fafafa;*/
	display: inline-block;
	min-width: 100px;
	padding: 10px;
	cursor: pointer;
}

.modal_button>.agree_button {
	border-radius: 4px;
	border: 1px solid #d6d6d6;
	text-align: center;
	/*	background-color: #ffea00; */
	display: inline-block;
	min-width: 100px;
	padding: 10px;
	cursor: pointer;
}
</style>
</head>
<body>
	<%@ include file="../include/modal.jsp"%>
	<div class="not-support-flex">
		<div class="modal_wrap">
			<div class="modal_content">
				<div class="agree_title">
					<h3>정말 회원 탈퇴를 하시겠습니까???</h3>
				</div>
				<div class="modal_box">
					<div>
						<h3>
							탈퇴시 이용하던 서비스 기록은 복구가 불가능합니다<br> 이후 생길 불이익에 책임 지지 않으니 신중하게<br>결정해주시고
							버튼을 눌러주세요
						</h3>
					</div>
					<div class="box_line"></div>

					<div class="modal_button">

						<div class="cancel_button">아니오</div>
						<div class="agree_button" id="drop_yes">예</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="wrap">
		<header id="playhead">
			<h1>
				<a href="#" id="play_service_logo" class="link_logo"> <span
					class="service_play"></span>
				</a>
			</h1>
		</header>
		<div class="compatible_wrap" style="height: auto;">
			<div class="page_deactivate_web km_page_active"
				id="page_deactivate-intro">
				<div class="pt">
					<div class="pt_header">
						<div class="pt_nav back"></div>
						<div class="pt_nav close"></div>
						<h1>사용자 확인</h1>
					</div>
				</div>
				<div class="pt" id="content">
					<div class="pt_container">
						<h1 class="pt_title">플레이타임계정 탈퇴 전 꼭 확인해 주세요!</h1>
						<p class="pt_desc1">플레이타임 계정은 전체 서비스 뿐 아니라 Daum,naver 및
							외부서비스에서도 함께 이용하는 통합 계정입니다</p>
						<p class="desc1_box">
							<br>
						</p>
						<p class="pt_desc2">플레이타임 계정을 탈퇴하면 계정 정보 및 서비스 이용
							기록(naver,daum 등)을 포함한 모든 정보가 삭제됩니다</p>
						<p class="pt_desc3">
							탈퇴한 후에는 더이상 플레이타임 계정으로 로그인 할 수 없으므로, 플레이타임 계정으로<br> 연결하여 사용한
							외부 서비스들도 모두 이용할 수 없게 됩니다
						</p>
						<p class="pt_desc4">* 플레이타임 계정을 탈퇴하시기 전 '계정이용'메뉴에서 현재 사용중인
							서비스를 확인해주세요</p>
						<p class="pt_desc5">탈퇴된 플레이타임 계정 정보와 서비스 이용기록 등은 복구할 수 없으니
							신중하게 선택하시길 바랍니다</p>
						<div class="pt_container">
							<h1 class="pt_title_agree">회원님의 소중한 정보 보호를 위해 현재 비밀번호를
								확인해주세요</h1>
							<form class="pt_section">
								<div class="pt_email_box">
									<div class="pt_email account"></div>
								</div>
								<div class="pt_password_box">
									<fieldset class="pt_input_group">
										<div class="pt_input_wrapper">
											<div>
												<input data-error-empty="비밀번호를 입력해주세요.(영문자/숫자/특수문자)"
													data-error-invalid="비밀번호가 올바르지 않습니다"
													data-error-not-matched="입력한 비밀번호와 재입력한 비밀번호가 일치하지 않습니다.다시 확인해주세요"
													maxlength="32" name="password" id="upw" placeholder="비밀번호"
													send="true" type="password" validator="password"
													autocomplete="off">
											</div>
											<div class="button"></div>
										</div>
									</fieldset>
								</div>
								<div class="pt_section_footer">
									<a class="pt_button cancel" href="#"><span>탈퇴취소</span></a> <a
										class="pt_button mean" href="drop_yes"><span>확인</span></a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
<script src="${path}/resources/js/validation.js"></script>
<script type="text/javascript">

	$(document).ready(function(){ // 정식
		
	});		
		$(function(){ // 약식(더많이사용)
			
			var pwFlag = false;
			// var checkArr = new Array(1).fill(false); // 체크박스 있는사람

			var checkArr = false; // 체크박스 없는사람
		
		$('#upw').keyup(function(){
			var pw = $(this).val();
			console.log(pw);
			// retrun 4개중에 1개
			var result = joinValidate.checkNowpw(pw);
			console.log(result.code + ","+ result.desc)
			
			var color = '';
			
			if(result.code == 100){
				color = '#3885CA';
				checkArr = true;
			} else {
				color = '#d95339';
				checkArr = false;
			}
			$('.drop_err_msg:eq(0)').css('visibilty', 'visible')
									.text(result.desc)
									.css('color', color);	
				ckColorBtn();
			});
		
		$('#drop_yes').click(function(){
			if(checkArr == false) {
					$('.drop_err_msg:eq(0)').css('visibility', 'visible')
											.css('color', '#d95339');
				} else {
					$('.modal_wrap_msg').css('display', 'flex');
				}
			});	
		
			function ckColorBtn() {
			if(checkArr) {
				$('#drop_yes').addClass('btn-secondary')
								 .css('border', '1px solid #b6b6b6')
								 .css('cursor', 'pointer');
				} else {
					$('#drop_yes').removeClass('btn-secondary')
								  .css('border', '1px solid transparent')
								  .css('cursor', 'no-drop');
				}
			}
		});
		$('#drop_yes').click(function(){
			if(checkArr == false) {
				$('.drop_err_msq:eq(0)').vss('visibility', 'visible');
			}else{
				//모달창 온
			}	
			$('#modal_wrap_msg').click(function(){
			 	location.href='${path}/member/dropAction';				
		});
	});			
			
</script>
</html>
