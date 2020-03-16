<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	
	html ,body{
		height: 100%;
	}
	body, th, td, input, select,textarea,button{
		font-size: 13px;
		line-height: 1.5;
		color: #333;
	}

	body{
		background: #fff;
	}
	.wrap{
		display:block;
	}
	#playhead {
		overflow: hidden;
		height: 39px;
		padding-top: 16px;
		border-top: 4px solid #DDD1F1;
		border-bottom: 1px solid #904073;
	}
	#playhead .service_play{
		display: inline-block;
		font-weight: normal;
		font-size: 18px;
		line-height: 20px;
		vertical-align: top;
	}
	#playtime{
		float: right;
		margin-top: 2px;
		margin-right: 13px;
	}
	.screen_out{
		overflow: hidden;
		position: absolute;
		width: 0;
		height: 0;
		line-height: 0;
		text-indent: -9999px;
	}
	#playtime .list_help{
		float: left;
	}
	#playtime .list_help li{
		float: left;
		margin-right: 12px;
	}
	#playtime .list_help li .link_help{
		color: #777;
		letter-spacing: -1px;
	}
	.compatible_wrap{
		width: 425px;
		display: block;
		margin: 70px auto 20px auto;
		position: relative;
	}
	#content{
		padding-top: 35px;
	}
	.compatible_wrap *{
		line-height: 2.5;
		color: #1e1e1e;
		font-size: 14px;
		letter-spacing: -1px;
	}
	.compatible_wrap > .desc1_box {
		line-height: 1.5s;
	}
	.compatible_wrap .pt_header {
		text-align: left;
		border-bottom: 2px solid #904073;
	}
	.compatible_wrap .pt_header h1 {
		font-weight: normal;
		font-size: 20px;
	}
	form.pt_section{
		text-align: center;
		width: 100%;
		font-size: 14px;
	}
	.pt_section_footer {
		margin-top: 8px;
		padding-top: 30px;
	}
	.pt_button{
		margin-right: 10px;
		border-radius: 4px;
		border: 1px solid #b6b6b6;
		text-align: center;
		background-color: #F5E9B7;
		display: inline-block;
		min-width: 105px;
		padding: 11px;
		cursor: pointer;
	}

	.pt_button.update{
		background-color: #E0F1EB;
	}	
	.pt_button.cancel{
		margin-right: 10px;
	}

	
	.pt_button.mean{
		background-color: #F7EAEb;   /* ffea00 */
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
	.footer_link{
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
	.util_cont{
		position: relative;
		display: inline-block;
	}
	button {
		border: 0 none;
		background-color: transparent;

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
		margin:8px 0 0 5px;
		background-position: -70px -44px;
		vertical-align: top;
	}
	.ico_login{
		display: block;
		overflow: hidden;
		background-image: url('${path}/resources/img/naver/sel_arr.gif');
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
	.cont_util .item_lang .link_lang{
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

	.pt_input_group{
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
	.pt_input-group .pt_input_wrapper input{
		width:90%;
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
	.picture{
		margin-left: 40%;
	}
	.side_box div{
		margin: 0 auto;
		margin-left: 10px;
	    padding-top: 10px;

	}
	.picture{
		box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2),0 4px 20px 0 rgba(0,0,0,0.19);
		background-image: url('${path}/resources/img/ghost.png');
		border-radius: 20%;
		width:117px;
		height: 117px;

	}

	.text_line {
		text-align: center;
	}
	
	.text_line > div{
		font-size: 15px;
		margin: 10px auto;
		border-bottom: 1px solid #904073;
		width: 330px;
		display: flex;
	}
	.info_name{
		margin-left: 5px;

	}
	
	
	
	
	</style>
</head>
<body class="not-support-flex">	
<%@ include file="../include/modal.jsp" %>	
	<div class="wrap">
		<header id="playhead">
			<h1>
				<a href="#" id="play_service_logo" class="link_logo">
					<span class="service_play"></span>
				</a>
			</h1>
		</header>
			<div class="compatible_wrap" style="height:auto;">
				<div class="page_deactivate_web km_page_active" id="page_deactivate-intro">
					<div class="pt">
						<div class="pt_header">
							<div class="pt_nav back"></div>
							<div class="pt_nav close"></div>
							<h1>사용자 확인</h1>
						</div>
					</div>
						<div class="pt" id="content">
							<div class="pt_container">
								<h1 class="pt_title">내 정보</h1>
									<div class="picture"></div>
									<div class="side_box">
										<div class="text_line">
											<div class="info_name">
												<div>아이디:</div><div>ehdtjs88kr</div>
											</div>

											<div class="info_name">
												<div>이름:</div><div>오동선</div>
											</div>	

											<div class="info_name">
												<div>번호:</div><div>010-2333-1111</div>
											</div>	

											<div class="info_name">
												<div>이메일:</div><div>ehdtjs88kr@naver.com</div>
											</div>	

											<div class="info_name">
												<div>주소:</div><div>화정동 우성아파트</div>
											</div>	
											
										</div>	
									</div>	
							<div class="pt_container">
								<h1 class="pt_title_agree"></h1>
								<form class="pt_section">			
									
									<div class="pt_section_footer">
										<a class="pt_button update " id="btn_update"><span>회원정보 수정</span></a>
										<a class="pt_button cancel " id="btn_cancel"><span>비밀번호 변경</span></a>
										<a class="pt_button mean " id="btn_mean"><span>회원탈퇴</span></a>
									</div>
								</form>	
							</div>
						</div>
				</div>
			</div>
	</div>
</body>
<script type="text/javascript">
	$(function(){
		$("#btn_update").click(function(){
			location.href="${path}/member/update"
		});
		$("#btn_cancel").click(function(){
			location.href="${path}/member/pwupdate"
		});
		$("#btn_mean").click(function(){
			location.href="${path}/member/drop"
		});
	});
</script>
</html>