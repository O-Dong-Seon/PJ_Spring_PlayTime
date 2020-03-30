<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="now" class="java.util.Date"/>
	<div class="reply_wrap">
		<div class="reply_title"><h2>댓글<span>${list.size()}</span></h2><span></span></div>
		
		<input type="hidden" name="coment_page" value="1">
	</div>
		<div class="reply_ul">
			<c:forEach items="${list}" var="reply">
				<li>
					<div class="reply"><textarea style ="display:none" name="comment_content"></textarea>	
						<p class="user_id"><i class="fas fa-chess-pawn"></i>${reply.writer}
							<c:if test="${name == reply.writer}">
								<button type="button" class="reply_del_btn" data_num="${reply.rno}">삭제</button>
							</c:if>
							<span>${reply.regdate}</span>
						</p>
						<div class="reply_text">${reply.content}</div>
					</div>
				</li>
			</c:forEach>
			
			<c:if test="${list.size() == 0 }">		
				<li>	
					<div class="reply"><textarea style ="display:none" name="comment_content"></textarea>	
						<p class="user_id"><i class="fas fa-crown"></i>관리자 오동선
							<span>${reply.regdate}</span>
							<fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate>
						</p>		
					<div class="reply_text">등록된 게시글이 없습니다</div>		
					</div>
				</li>
			</c:if>
			
			
				
			<div class="page_num">
				<span class="page_before">
					<a><img src="https://ssl.nx.com/s2/game/maplestory/renewal/common/re_prev_off.png" alt="이전"></a>
				</span>
				
				<a class="active">1</a>
				
				<span class="page_next">
					<a><img src="https://ssl.nx.com/s2/game/maplestory/renewal/common/re_next_off.png" alt="다음"></a>
				</span>
			</div>
			
			
			<c:choose>
				<c:when test="${empty userid}">
					<span>로그인</span> 후에 댓글을 입력해주세요
				</c:when>
				
				<c:otherwise>
					<form class="frm_reply">
						<input type="hidden" name="bno" class="reply_bno">
						<input type="hidden" name="type" class="reply_type">
						<input type="hidden" name="writer" class="reply_writer">
							
						<div class="bottom_text_wrap">				
							<div class="bottom_text write">
								<span class="">${name}</span>
									<textarea class="text" name="content"></textarea>
							<div>
								<div class="bottom_text_btn">
									<div class="err_msg"><span>댓글을 입력해주세요</span></div>
									<div class="text_write_btn">
										<span><button type="button" class="write_btn reply_btn">등록</button></span> <!-- form 태그 안에서 button -->
									</div>
								</div>
							</div>
							
							</div>
						</div>
					</form>
				</c:otherwise>
			</c:choose>
				
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
	
	$(document).on('click', '.reply_login_btn',function(){
		$('.modal_wrap').css('display', 'flex');
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