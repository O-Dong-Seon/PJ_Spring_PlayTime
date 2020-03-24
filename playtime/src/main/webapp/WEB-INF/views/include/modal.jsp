<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* 모달 경고 창*/
	.modal_wrap_msg{
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
	.modal_content_msg{
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
	.modal_button > .cancle_button{
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

</style>	

</head>

<body>
	<div class="modal_wrap_msg">
		<div class="modal_content_msg">
			<div class="agree_title">
				<h3></h3>
			</div>
			<div class="modal_box">
				<div><h3 id="modal_msg_main_txt"></h3></div>
				<div><h3 id="modal_msg_sub_txt"></h3></div>
			<div class="box_line"></div>

			<div class="modal_button">				
					<div id ="modal_msg_cancle" class="cancle_button">닫기</div>
					<div id ="modal_msg_yes" class="agree_button">확인</div>			
			</div>
		</div>
		</div>
	</div>	
</body>
<script type="text/javascript">
		// $ = 제이쿼리
	$(function(){			
		var id ='${id}';
		var email ='${email}';
		var key ='${key}';
		
		var join_main_txt = id+'님 회원가입을 축하드립니다.';
		var join_sub_txt = email + '으로 인증메일을 보냈습니다. 인증하셔야만 사이트 활동이 가능합니다.';
		var auth_main_txt = id+'님 이메일 인증되셨습니다. ';
		var auth_sub_txt = '지금부터 사이트 활동이 가능합니다.감사합니다';
		var drop_main_txt = '${userid}님 정말 탈퇴하시겠습니까?';
		var dropResult_main_txt = id +'님 탈퇴되셨습니다';
		var dropResult_sub_txt = '그동안 playtime을 이용해주셔서 감사합니다';
		
		var dropBoard_main_txt ="정말 삭제하시겠습니까?";
		var dropBoardNo_main_txt ="댓글이 있는 게시글은 삭제 할 수 없습니다";
		
						
		
		if(key == 'join') {
			$('#modal_msg_main_txt').text(join_main_txt);  //메인 텍스트   	# = ID 
			$('#modal_msg_sub_txt').text(join_sub_txt);	// 서브 텍스트
			$('.modal_msg_yes').css('display','none'); // 확인버튼 제거 	. = class
			$('.modal_msg_cancle').text('확 인');
			$('.modal_wrap_msg').css('display', 'flex');  // 모달창 출력버튼
		} else if(key == 'auth') {
			$('#modal_msg_main_txt').text(auth_main_txt);  //메인 텍스트   	# = ID 
			$('#modal_msg_sub_txt').text(auth_sub_txt);	// 서브 텍스트
			$('.modal_msg_yes').css('display','none'); // 확인버튼 제거 	. = class
			$('.modal_msg_cancle').text('확 인');
			$('.modal_wrap_msg').css('display', 'flex');  // 모달창 출력버튼
		} else if(key == 'drop'){
			$('modal_msg_main_txt').text(drop_main_txt);
		} else if(key == 'dropResult'){
			$('#modal_msg_main_txt').text(auth_main_txt);
			$('#modal_msg_sub_txt').text(auth_sub_txt);
			$('.modal_msg_yes').css('display','none');
			$('.modal_msg_cancle').text('확 인');
			$('.modal_wrap_msg').css('display', 'flex');  
		
		} else if(key == 'dropBoard'){
			if('${one.replycnt}' == 0){ //댓글이없는 경우
			$('.modal_msg_main_txt').text(dropBoard_main_txt);
		} else {		//댓글이 있는경우
			$('#modal_msg_main_txt').text(dropBoardNo_main_txt);
			$('#modal_msg_yes').text('display', 'none');
			$('#modal_msg_cancle').text('확인');
			
		}
		
	}	
	
		$('.modal_msg_close').on('click', function(){
			$('.modal_wrap_msg').css('display','none');
		});	
		$('#modal_msg_cancle').on('click', function(){
			$('.modal_wrap_msg').css('display', 'none');
		});
	});
	
	
</script>
</html>