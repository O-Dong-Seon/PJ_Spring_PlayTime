<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<title>상세게시글</title>
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
	<script src="https://kit.fontawesome.com/912e79718f.js" crossorigin="anonymous"></script>
	<style type="text/css">
	@import url('https://fonts.googleapis.com/css?family=Nanum+Pen+Script&display=swap');
	*{
		margin: 0;
	    padding: 0;
	    list-style: none;
	    border: 0;
	    text-decoration: none;
	    font-family: "NanumBarunGothic" , "Malgun Gothic" , sans-serif;
        letter-spacing: -0.03em;
	}
		
	textarea{
		-webkit-writing-mode: horizontal-tb !important;
	    text-rendering: auto;
	    color: -internal-light-dark-color(black, white);
	    letter-spacing: normal;
	    word-spacing: normal;
	    text-transform: none;
	    text-indent: 0px;
	    text-shadow: none;
	    display: inline-block;
	    text-align: start;
	    -webkit-appearance: textarea;
	    background-color: -internal-light-dark-color(white, black);
	    -webkit-rtl-ordering: logical;
	    flex-direction: column;
	    resize: auto;
	    cursor: text;
	    white-space: pre-wrap;
	    overflow-wrap: break-word;
	    margin: 0em;
	    font: 400 13.3333px Arial;
	    border-width: 1px;
	    border-style: solid;
	    border-color: rgb(169, 169, 169);
	    border-image: initial;
	    padding: 2px;
	}
		
	*{
		margin: 0;
		padding:0;
		list-style: none;
		border: 0;
		text-decoration: none;
	   	font-family: "NanumBarunGothic" , "Malgun Gothic" , sans-serif;
	   	letter-spacing: -0.03em;
	}
	h1{
		font-weight: bold;
	}
	.content_wrap{
		/*border: 1px solid red;*/
		width: 930px;
		float: left;
		height: %;
		margin-left: 25%;
	}
	.wrap_head{
		overflow: hidden;
   		height: 39px;
    	padding-top: 16px;
	    border-top: 4px solid #ffde00;
    	border-bottom: 1px solid #d4d4d4;
    	margin: 65px auto;
	}
	.board_contant{
		width: 100%;
		float: left;
		height: 12%;
		margin-top:-100px;
	}
	.board_name{
		font-size: 34px;
		color: #333;
		margin-top: 60px;
		width: 100%;
		float: left;
		margin-bottom: 30px;
		height: 40px;
	}
	.board_list_btn{
		float: right;
		line-height: 1;
		margin: 0;
		padding: 0;
	}
	.back_btn{
		display: inline-block;
		font-size: 13px;
		color: #666;
		padding: 13px 11px;
		line-height: 1;
		border: 1px solid #e6e6e6;
		border-radius: 20%;
	}
	.board_title em{
		color: #1c6ac3;
		font-style: normal;
		font-size: 24px;
	}
	.board_title{
		float: left;
		width: 100%;
		line-height: 1.3;
		min-height: 36px;
		border-top: 1px solid #7e7e7e;
		color: #333;
		font-size: 24px;
		background-color: #f9f9f9;
		word-break: break-all;
		font-weight: bold;
		padding: 37px 27px 30px;
		margin-top: 0
	}
	.info_wrap{
		float: left;
		width: 100%;
		height: 55px;
		line-height: 55px;
		border-top: 1px solid #e3e3e3;
		border-bottom: 1px solid #e3e3e3;
	}
	.nick_name{
		float: left;
		margin-left: 27px;
		height: 100%;
		font-size: 18px;
		font-weight: bold;
	}
	.sub_info{
		float: right;
	}
	.sub_info p{
		float: left;
		font-size: 12px;
		color: #aaa;
		margin-right: 25px;
		line-height: 1;
		margin: 21px;
	}
	.sub_info p img{
		margin-right: 4px;
		vertical-align: middle;
		margin-bottom: 2px;
	}
	.sub_info p.time{
		margin-right: 27px;
	}
	.sub_info span{
		float: left;
		line-height: 1;
		margin-top: 12px;
		padding-left: 31px;
	}
	.sub_info span.report{
		margin-right: 27px;
		padding-top: 0;
		margin-left: -9px;
	}

/*	.text_box{
		float: left;
		width: 876px;
		margin-top: 40px;
		margin-left: 27px;
		font-size: 16px;
		color: #333;
		line-height: 26px;
		margin-bottom: 40px;
		word-break: break-all;
		display: block;
	}*/

	.board_text{
		
		float: left;
		width: 876px;
		margin-top: 40px;
		margin-left: 27px;
		font-size: 16px;
		color: #333;
		line-height: 26px;
		margin-bottom: 40px;
		word-break: break-all;
		display: block;
	}
	.button_wrap{
		width: 100%;
		position: relative;
		float: left;
		height: auto;
		text-align: center;
		margin-top:20px;

		justify-content: space-between;
		display: flex;
	}
	.answer_box{
		padding:0px 15px;
		border: 1px solid #e3e3e3;
		height: 45px;
		font-weight: bold;
		color: #fff;
		line-height: 45px;
		display: inline-block;
		margin-left: 5px;
		background-color: #131010;
		border-radius: 20%;
		margin-top: 15px;
	}

	.delete_box{
		padding:0px 15px;
		border: 1px solid #e3e3e3;
		height: 45px;
		font-weight: bold;
		color: #666;
		line-height: 45px;
		display: inline-block;
		margin-left: 5px;
		background-color:#f7d7d7;
		border-radius: 20%;
		margin-top: 15px;
	}
	.update_box{
		padding:0px 15px;
		border: 1px solid #e3e3e3;
		height: 45px;
		font-weight: bold;
		color: #565252;
		line-height: 45px;
		display: inline-block;
		margin-left: 75%;
		background-color:#f1e4889e;
		border-radius: 20%;
		margin-top: 15px;
	}
	.reply_wrap{
		float: left;
		width: 100%;
	}
	.reply_title{
		float: left;
		width: 100%;
		height: 44px;
		line-height: 45px;
		border-top: 1px solid #afa9a9;
		background-color: #f9f9f9;
		margin-top: 15px;
		border-bottom: 1px solid #afa9a9;
	}
	.reply_title h2{
		float: left;
		margin-left: 27px;
		font-size: 16px;
		color: #333333;
		margin-top: 0px;
	}
	.reply_title h2 span{
		font-size: 16px;
		color: #f68400;
		margin-left: 5px;

	}
	.reply_ul {
		float: left;
		width:100%;
	}
	.reply_ul > li {
		float: left;
		width: 100%;
		padding: 30px 27px 25px 27px;
		border-bottom: 1px solid #e3e3e3;
	}
	.reply{
		float: left;
		width: 100%;
		height: 40px;
	}
	.user_id {
		float: left;
		width: 100%;
		font-size: 15px;
		font-weight: bold;
		line-height: 1;
	}
	.user_id span{
		margin-left: 20px;
		font-size: 12px;
		color: #888;
	}
	.reply_text{
		float:left;
		width: 100%;
		font-size: 13px;
		color: #666666;
		line-height: 20px;
		margin-top: 11px;
		word-break: break-all;
		word-wrap: break-word;
	}

	
	.page_num{
		float: left;
	    width: 100%;
	    height: 45px;
	    text-align: center;
	    padding: 16px 0;
	    border-bottom: 1px solid #e3e3e3;
	}
	.page_num .page_befor, .page_num .page_next {
		vertical-align: middle;
		width: 28px;
		height: 28px;
		line-height: 28px;
		display: inline-block;
	}
	
	.page_before, .page_next{
		vertical-align: top;
		width: 12px;
		height: 12px;
		line-height: 12px;
		display: inline-block;
	}
	.page_num span a {
		line-height: 0;
		margin: 0;
	}
	.page_num a{
		line-height: 1;
		height: 12px;
		width: 12px;
		display: inline-block;
		color: #888;
		margin: 0 11px;
		font-size: 13px;
		vertical-align: top;
		font-family: "Tahoma";
	}

	a.active{
		color: #4a4a4a;
		font-weight: bold;
		width: 2px;
		font-size: 15px;
	}

	.bottom_text_wrap{
		float: left;
		margin-top: 40px;
		width: 100%;
		height: 205px;
	}
	.bottom_text{
		height: 170px;
		background-color: #e8eaee;
		border:1px solid #dcdde1;
	}
	.bottom_text .text {
		float: left;
		padding: 20px;
		width: 97%;
		height: 90px;
		margin-top: 10px;
		margin-left: 10px;
		background-color: #fff;
		resize: none;
		overflow: hidden;
		overflow-y: auto;
	}
	.text {
		float: left;
		padding: 20px;
		width: 834px;
		height: 60px;
		resize: none;
	}
	.bottom_text_btn{
		position: relative;
		float: left;
		margin-top: 11px;
		width: 100%;
		height: 42px;
		line-height: 42px;
		margin-left: 83%;
	}
	.bottom_text .text_write_btn{
		float: right;
		margin-right: 9px;
	}
	.font_number{
		float: left;
		margin-right: 20px;
		font-size: 14px;
		color: #666666;
	}
	.text_write_btn span em{
		font-style: normal;
	}
	.write_btn:hover{
		background-color: #6b717d;
		border: 1px solid #6b717d;
	}
	.text_write_btn span{
		float:left;
		margin-right: 0px;
		font-size: 12px;
		color: #666666;
	}
	.write_btn{
		min-width: 78px;
		font-size: 16px;
		color: #fff;
		text-align: center;
		background-color: #747a86;
		border-radius: 2px;
		padding: 9px 14px 9px 14px;
		border: 1px solid #747a86;
		display: inline-block;
		line-height: 1;
		float: left;
	}

	
	
	</style>
</head>
<body>
	<%@ include file="../include/modal.jsp"%>
	<div class="wrap_head"></div>	
		 <div class="content_wrap"> 
		
				<div class="board_contant">				
						<h1 class="board_name">자유게시판
							<span class="board_list_btn">
								<a href="${header.referer}" class="back_btn" style="width:56px; text-align: center;">목록</a>
							</span>
						</h1>
				</div>		
					<p class="board_title" style="margin-top:30px"><!-- <em>[질문글]</em>울면 근손실 난다는게 정말인가요? -->${one.title}</p>	
					
					<div class="info_wrap">
						<span class="nick_name"><i class="fas fa-chess-knight"></i>${one.writer}</span>
							<div class="sub_info">
								<p>${one.updatedate}"</p>
								<p>
									<img src="https://ssl.nx.com/s2/game/maplestory/renewal/common/eye_new.png" alt="본 유저수">${one.viewcnt}
								</p>
								<p class="time">
									<img src="https://ssl.nx.com/s2/game/maplestory/renewal/common/sub_date_new.png" alt="작성 시간">
								${one.regdate}
								</p>
								<span class="short_cut">
									<a href="#">
									<img src="https://ssl.nx.com/s2/game/maplestory/renewal/common/link_copy_btn.png" alt="주소복사" title="주소복사">
									</a>
								</span>
								<span class="report">
									<a href="#">
										<img src="https://ssl.nx.com/s2/game/maplestory/renewal/common/report_btn2.png" alt="신고하기" title="신고하기">
									</a>
								</span>
							</div>

					</div>
				<div class="text_box">
					<div class="info_img"></div>
					<div class="board_text">${ont.content}</div>
				</div>

				<div class="button_wrap">
					<div class="answer_box"> 답변 </div>
				<c:if test="${name == one.writer}">	
					<a href="#" class="update_box update_btn"> 수정 </a>
					<a href="#" class="delete_box delete_btn"> 삭제 </a>
				</c:if>	
				</div>

			<div id="listReply"></div>
				

</body>
<script type="text/javascript">
	$(function(){  // 1.페이지가 시작되자마자
		
		// alert('이전 URL: ${header.referer}');
		listReply(); // 2.  얘네들을 호출하라
		
		//삭제버튼 클릭시 모달창 open
		$('.delete_btn').click(function(){
			$('.modal_wrap_msg').css('display', 'flex');
		});
	
	
		//삭제 알림 모달창에서 확인버튼 Click -> 게시글 삭제
		$('#modal_msg_yes').click(function(){
			location.href='${path}/board/delete?bno=${one.bno}';
		});
	
	});
	
	
	
	// 댓글 목록 출력 함수
	function listReply(){   
		$.ajax({
			type: "get",   // get방식으로 보내는데 
			url: "${path}/reply/list?bno=${one.bno}",  // reply 에 bno를 가지고 
			success: function(result){
				//result: reponseText 응답텍스트(html)
				$("#listReply").html(result);
			}	
		});
	}
	
</script>
</html>