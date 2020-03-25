<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="reply_wrap">
		<div class="reply_title"><h2>댓글<span>${list.size()}</span></h2><span></span></div>
		<input type="hidden" name="coment_page" value="1">
	</div>
		<div class="reply_ul">
			<c:forEach items="${list}" var="reply">
			<li>
				<div class="reply"><textarea style ="display:none" name="comment_content"></textarea>	
				<p class="user_id"><i class="fas fa-chess-pawn"></i>${reply.writer}
					<span>${reply.regdate}</span>
				</p>		
				<div class="reply_text">${reply.content}</div>		
					</div>
			</li>
			</c:forEach>
			
				
			<div class="page_num">
				<span class="page_before">
					<a><img src="https://ssl.nx.com/s2/game/maplestory/renewal/common/re_prev_off.png" alt="이전"></a>
				</span>
				
				<a class="active">1</a>
				
				<span class="page_next">
					<a><img src="https://ssl.nx.com/s2/game/maplestory/renewal/common/re_next_off.png" alt="다음"></a>
				</span>
			</div>
			
			<div class="bottom_text_wrap">
			<div class="bottom_text write">
				<textarea name="comment" cols="30" rows="10" class="text" placeholder="로그인 후 이용해주세요" readonly="readonly"></textarea>
				<div class="bottom_text_btn">
					<div class="text_write_btn"></div>
						<span class="font_number"><em></em>(0/200)</span>
						<span><a class="write_btn" href="#">등록</a></span>
				</div>
			</div>
		</div>
	</div>
	
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

</body>
</html>