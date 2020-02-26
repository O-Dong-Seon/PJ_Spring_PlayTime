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
				<h3>회원 가입 성공</h3>
			</div>
			<div class="modal_box">
				<div><h3 id="modal_msg_main_txt"></h3></div>
				<div><h3 id="modal_msg_sub_txt"></h3></div>
			<div class="box_line"></div>

			<div class="modal_button">
				
					<!-- <div class="cancle_button">닫기</div> -->
					<div class="agree_button">확인</div>
			
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
		var join_sub_txt = email + '으로 인증메일을 보냈습니다. 인증하셔야만 사이트 활동이 가능합니다.'
		var auth_main_txt = id+'님 이메일 인증되셨습니다. ';
		var auth_sub_txt = '지금부터 사이트 활동이 가능합니다.감사합니다'
		
		if(key == 'join') {
			$('#modal_msg_main_txt').text(join_main_txt);  //메인 텍스트   	# = ID 
			$('#modal_msg_sub_txt').text(join_sub_txt);	// 서브 텍스트
			$('.cancle_button').css('display','none'); // 취소버튼 제거 	. = class
			$('.modal_wrap_msg').css('display', 'flex');  // 모달창 출력버튼
		} else if(key == 'auth') {
			$('#modal_msg_main_txt').text(auth_main_txt);  //메인 텍스트   	# = ID 
			$('#modal_msg_sub_txt').text(auth_sub_txt);	// 서브 텍스트
			$('.cancle_button').css('display','none'); // 취소버튼 제거 	. = class
			$('.modal_wrap_msg').css('display', 'flex');  // 모달창 출력버튼
		}
		
		$('#modal_msg_yes').on('click', function(){
			$('.modal_wrap_msg').css('display', 'none');
		});
		$('.modal_msg_close').on('click', function(){
			$('.modal_wrap_msg').css('display','none');
		});		
	});
	
	
</script>
</html>