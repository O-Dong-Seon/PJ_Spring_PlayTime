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
		*{
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
		ul { list-style: none; }/*
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
			padding: 0px 0px 20px;
			position: relative;
		/*		border: 1px solid red;*/
		}
		/* a태그는 기본 inline */
		
		.update_content {
			width: 460px;
			margin: 0 auto;
		/*	border: 1px solid blue;*/
		}
		.row_group{
			overflow: hidden;
			width: 100%;
		}
		.update_title{
			margin: 19px 0 8px;
			font-size: 14px;
			font-weight: 700;
			color: black;
		}
		.n_logo {
			display: block;
			width: 548px;
			height: 140px;
			background: url("${path}/resources/img/cpt.png")0 -106px;
			background-position: center center;
			margin: 0 auto;
		}

		.ps_box{
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
		.ps_post{
			display: table-column;
		}
		.int_id{
			padding-right: 110px;
		}
		.int_pass{
			padding-right: 40px;
		}
		.int {
			display: block;
			position: relative;
			width: 100%;
			height:29px;
			padding-right: 25px;
			line-height: 29px;
			border: none;
			background: #fff;
			font-size: 15px;
			z-index: 10;
		}
		.step_url{
			position: absolute;
			right: 13px;
			font-size: 15px;
			color: #8e8e8e;
		}
		.error_next_box{
			display: block;
			margin: 9px 0 -2px;
			font-size: 12px;
			line-height: 14px;
			color: red;
			height: 15px;
			visibility: hidden;
		}
		.pw_lock{
			background-image: url('https://static.nid.naver.com/images/ui/join/m_icon_pw_step.png');
			background-repeat: no-repeat;
			background-size: 125px 75px;
			cursor: pointer;
			width: 24px;
			height: 24px;
			display: inline-block;
		}
		.repw_lock{
			background-image: url('https://static.nid.naver.com/images/ui/join/m_icon_pw_step.png');
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
		.sel{
			background: #fff url('https://static.nid.naver.com/images/join/pc/sel_arr_2x.gif') 100% 50% no-repeat;
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
		#footer{
			padding: 15px 0;
		}
		#footer> ul{
			margin: 0 auto 9px;
			text-align: center;
		}
		#footer *{
			font-size: 11px;
			line-height: normal;
			list-style: none;
			color: #333;
		}
		#footer > ul >li{
			display: inline;
			padding: 0 5px 0 7px;
			border-left: 1px solid #dadada;
		}
		#footer > ul > li a:hover{
			color: #1fbc02;
			text-decoration: underline;
		}
		#footer ul li:first-child{     /*footer의 첫번째 자식만*/
			border-left: 0px!important;
			/*!important는 제일 높은 레벨 가장먼저 먹음*/
		}
		.line{				
			overflow: hidden;
	    	height: 39px;
	   	 	padding-top: 16px;
	 	    border-bottom: 1px solid #d4d4d4;
	 	    margin: 0px 915px;
		}
		
		
	</style>
</head>
<body>
<body>
	<div class="update_box">
				
		<div class="line"><h1>비밀번호 수정</h1></div>
	</div>
	<div class="header">
		<h1 class="naver_logo"><a href="#" class="n_logo"></a></h1>
	</div>

	<section>
		<form:form id="frm_member" modelAttribute="memberDTO" autocomplete="on" name="frm_join" action="" method="POST">
			<div class="container">
				<div class="update_content">
					 <div class="row_group">
					 	<div class="update_row">
					 		<h3 class="update_title">
					 			<label for="id">현재 비밀번호</label> 			
					 		</h3>
					 		<span class="ps_box int_id">
					 			<input type="text" id="nowpw" name="uid" class="int join_info_box_input">
					 			<!-- <span class="step_url">@naver.com</span> -->
					 		</span>
					 		<span class="error_next_box">필수 정보입니다</span>
					 	</div>

					 	<div class="update_row">
					 		<h3 class="update_title">
					 			<label for="pswd1">수정할 비밀번호</label> 			
					 		</h3>
					 		<span class="ps_box int_pass">
					 			<input type="text" id="upw" name="pw" class="int join_info_box_input">
					 			<span class="step_url"><span class="pw_lock"></span></span>
					 		</span>
					 		<span class="error_next_box">필수 정보입니다</span>
					 	</div>

					 		<div class="update_row">
					 		<h3 class="update_title">
					 			<label for="urpw">수정할 비밀번호 재확인</label> 			
					 		</h3>
					 		<span class="ps_box int_pass">
					 			<input type="text" id="urpw" name="rpw" class="int join_info_box_input">
					 			<span class="step_url"><span class="repw_lock"></span></span>
					 		</span>
					 		<span class="error_next_box">필수 정보입니다</span>
					 	</div>									 	
					 </div>

					 <div class="row_group">
					 	
					 <div class="btn_double_area">
					 	<button type="button" id="btn_join" class="btn_type btn_agree " id="btn_join">비밀번호 수정하기</button>
					 </div>
				</div>				
			</div>
		</form:form>
	</section>
		

	</div>

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="${path}/resources/js/validation.js"></script>
<script type="text/javascript">
	// $(document)는 독단적으로 사용 한다는 뜻 값을 교환하지 않는다
	
	
	// 전역변수를 만들었을때 공유해서 쓸것인지 안쓸것인지 선택
	// $(document).ready(function(){}) 안에 있을시 공유가능	
	//$(document).ready(function(){	});
	
	$(function(){
		var pwFlag = false;
		
		var checkArr = new Array(2).fill(false);
	
		$('#nowpw').keyup('keyup', function(){
			var nowpw= $(this).val();
				//console.log('입력:'+nowpw);
			var result = joinValidate.checkNowpw(nowpw);
				//console.log("code:" +result.code);
			ckDesign(result.code, result.desc, 0, 0);
			
			if(result.code == 100){
				checkArr[0] = true;
			}else {
				checkArr[0] = false;
			}
			
		});
		
	
		$('#upw').keyup(function() {			
			var nowpw = $.trim($('#nowpw').val());
			var pw = $.trim($('#upw').val());
			var rpw = $.trim($('#urpw').val());
			// 	1.사용자가 입력한 값 받기
			var result = joinValidate.checkPw(nowpw,pw, rpw);
			if (result.code == 0 || result.code == 10 || result.code == 6) {
				pwFlag = true;
			} else {
				pwFlag = false;
			}
			ckDesign(result.code, result.desc, 1, 1);
			
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
		});
		
		
		// 비밀번호 재확인 유효성 체크
		$('#urpw').keyup(function() {
			var pw = $.trim($('#upw').val());
			var rpw = $.trim($('#urpw').val());
			// console.log(pw+","+rpw);
			var result = joinValidate.checkRpw(pw, rpw, pwFlag);
			ckDesign(result.code, result.desc, 2, 2);
				
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
		});
		
		$('.join_info_box_input').keyup(function(){
			printCheckArr(checkArr);	
			ckColorBtn();
		});		
		
		function ckColorBtn(){
			var checkAll = true;

			for (var i = 0; i < checkArr.length; i++) {
				if (!checkArr[i]) {
					checkAll = false;
				}
			}
			
			if (checkAll) {
				$('#btn_join').removeClass('btn_agree')
							  .addClass('btn-primary');
				// $('btn_join').prop('disabledd', true);
				$('#btn_join').css('cursor', 'pointer');
			} else {
				$('#btn_join').removeClass('btn-primary')
							  .addClass('btn_agree');
				// $('btn_join').prop('disabledd', true);
				$('#btn_join').css('cursor', 'no-drop');
			}	
		}
		
		$('#btn_join').click(function(){
			var invalidAll = true;
			for(var i = 0; i < checkArr.length; i++){
				if(!checkArr[i]){
					invalidAll = false;
					$('.join_err_msg:eq('+i+')').css('visibility', 'visible')
												.css('color','$d95339');
				}
			}
			if(invalidAll) {
				$('#frm_member').submit();
			} else {
				alert('유효성체크를 진행해주세요')
			}
		});
		
	});

	function ckDesign(code, desc, line, msg) {
		if (code == 0 || code == 10 || code == 100) { 			//통과 o 
			$('.ps_box:eq('+line+')').css('border', ' 2px solid #3885CA');
			$('.error_next_box:eq(' + msg + ')').css('visibility', 'visible')
												.text(desc)
												.css('color', '#3885CA');
			return true;

		} else { 												// 통과 x
			$('.ps_box:eq('+line+')').css('border', ' 2px solid #d95339');
			$('.error_next_box:eq(' + msg + ')').css('visibility', 'visible')
											.text(desc)
											.css('color', '#d95339');
			return false;
		}
	}
	
	// 개발시 사용 : 유효성 체크 전체여부를 출력해주는 함수(true,false)
	function printCheckArr(checkArr) {
		for(var i=0; i < checkArr.length; i++){
			console.log(i + '번지:' + checkArr[i]);		
		}
	}
	

</script>
</html>