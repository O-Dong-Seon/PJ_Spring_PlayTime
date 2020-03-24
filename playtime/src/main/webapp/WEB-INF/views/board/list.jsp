<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
<style type="text/css">
	html ,body{
		height: 100%;
	}
	tr{
		display: table-row;
	    vertical-align: inherit;
	    border-color: inherit;
	}
	th {
		padding: 11px 0 10px;
	    vertical-align: middle;
	    text-align: center;
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
		border-top: 4px solid #ffde00;
		border-bottom: 1px solid #d4d4d4;
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
		letter-spacing: 0px;
	}
	.compatible_wrap{
		width: 800px;
		display: block;
		text-align: center;
		margin: 70px auto 20px auto;
		position: relative;
	}
	#content{
		text-align: center;
		padding-top: 35px;
	}
	/*.compatible_wrap{
		line-height: 1.5;
		color: #1e1e1e;
		font-size: 17px;
		letter-spacing: 0px;
	}*/
/*	.compatible_wrap > .desc1_box {
		line-height: 1.5s;
	}
*/	.compatible_wrap .pt_header {
		text-align: left;
		border-bottom: 3px solid #ffde00;
	}
	.compatible_wrap .pt_header h1 {
		font-weight: normal;
		font-size: 30px;
	}
	
	.board_wrap{
		position: relative;
	}
	.side_wrap{
		position: absolute;
		bottom: 0;
		right: 10px;
	}
	.board_head{
		width: 100%;
		margin: 15px auto;
		box-sizing: border-box;
	    position: relative;
	    margin: 10px 0 0;
	    border-top-color: #fff;
	    color: #fff;
	    line-height: 1.5;
	    border-bottom: 1px solid #d6d6d6;
	    box-sizing: border-box;
	    text-align: left;
	}
	
	.board_head tr td{
		/*border-bottom: 1px solid red;*/
		border-spacing: 0px;
		line-height: 1.5;
		color: #1e1e1e;
		font-size: 20px;
		letter-spacing: 0px;
	}

	.board_list{
		width: 100%;
		margin: 15px auto;
		box-sizing: border-box;
	    position: relative;
	    margin: 10px 0 0;
	    border-top-color: #fff;
	    color: #fff;
	    line-height: 1.5;
	    border-bottom: 1px solid #d6d6d6;
	    box-sizing: border-box;

	}
	.side_box_list {
		display: flex;
		justify-content: space-between;
	}
	
	.side_button {
		margin-top: 10px;
		margin-right: 50%;
	}
	
	.side_button > a {
		margin-left: 30px;
		border-radius: 10%;
		padding-right: 6px;
		padding-left: 6px;
		background-color: #E6E9EE;
	}	
	
	.next_page > a {
		padding-right: 10px;
		padding-left: 10px;
	}
	
		/* animation */
		.board_head  span{
			font-size: 13px;
			color: pink;
			font-weight: bold;
			animation-name: twinkle;  /*설정할 애니메이션 이름*/
			animation-iteration-count: infinite;  /* 애니메이션의 반복 횟수*/
			animation-duration: 3s; /* 애니메이션의 실행 시간*/
			margin-bottom: 10px;
		}
	
	
		.twincle_eff{
			animation-name: twinkle;
			animation-duration:1.2s;
			animation-iteration-count:infinite;
		}
		
		@keyframes twinkle{
			0% {opacity:0;}
			100%{opacity:1;}
			
			/* from{opacity: 0;}
			to{opacity: 1;} */
		}

		.new_color{
			border: 1px solid tomato;
			color: tomato;
			padding: 3px 5px;
			margin-left: 7px;
			font-weight: bold;
			font-size: 12px;
			
		}
		
		.check_color{
			border:1px solid #3885CA;
			background-color: #3885CA;
			color:white;
		}
		
		.search_box{
			display: flex;
			justify-content: flex-end;		
			height: 20px;	
		}
		.fa{
			display: inline-block;
  			font: normal normal normal 14px/1 FontAwesome;
   			font-size: inherit;
  			text-rendering: auto;
  			-webkit-font-smoothing: antialiased;
  			-moz-osx-font-smoothing: grayscale;
  			transform: translate(0, 0);
		}
		.btn_clear{
			color: #fff;
   			background-color: #f0ad4e;
    		border-color: #eea236;
  			padding: 5px 10px;
   			font-size: 12px;
		    line-height: 1.5;
   			border-radius: 1px;
  			align-items: center;
  			display: flex;

		}
</style>




</head>
<body class="not-support-flex">
<jsp:useBean id="now" class="java.util.Date"/>
	<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today"/>
	<div class="wrap">
		<header id="playhead">
			<h1>
				<a href="#" id="play_service_logo" class="link_logo">
					<span class="service_play"></span>
				</a>
			</h1>
		</header>
			<div class="compatible_wrap">
				<div class="page_deactivate_web km_page_active">
					<div class="pt">
						<div class="pt_header">
							<div class="pt_nav back"></div>
							<div class="pt_nav close"></div>
							<h1>자유게시판</h1>
						</div>
					</div>
					
					
						<div class="side_button">
							<a href="${path}/board/list?sort_option=new&keyword=${map.keyword}" id="sort_new">최신순</a>
							<a href="${path}/board/list?sort_option=cnt&keyword=${map.keyword}" id="sort_cnt">조회순</a>
							<a href="${path}/board/list?sort_option=reply&keyword=${map.keyword}" id="sort_reply">댓글순</a>
							<a href="${path}/board/list?sort_option=good&keyword=${map.keyword}" id="sort_good">추천순</a>
						</div>

						<div class="board_wrap">
							<table class="board_head">									
									<tr>
										<td scope="col">번호</td>
										<td scope="col">제목</td>
										<td scope="col">작성자</td>
										<td scope="col">작성일</td>
										<td scope="col">조회수</td>
									</tr>
									
									<div class="search_box">
				
										<form action="${path}/board/list" method="GET">
											<input class="search_txt" type="text" name="keyword" placeholder="검색어를 입력하세요" value="${map.keyword}">
											<button type="submit" class="btn_search btn_search_board">
												<i class="fas fa-search"></i>									
											</button>
											<a href="${path}/board/list" class="btn_clear"><i class="fa fa-times-circle">clear</i></a>
										</form>	
									</div>
									<c:if test="${!empty map.keyword}">
										<div class="search_info">
											<span class="search_name">${map.keyword} 검색결과 ${map.count} 건 검색되었습니다</span>
										</div>
									</c:if>
								<c:forEach items="${map.list}" var="list">
									
									<fmt:formatDate value="${list.updatedate}" pattern="yyyy-MM-dd" var="regdate"/>
										<tr>
											<td scope="col">${list.bno}</td> <!--  번호 -->
											<td scope="col"><a href="${path}/board/view/${list.bno}" class="txt_conn">${list.title}</td>  <!--  제목 -->  <!-- ${list.title}<span> new</span> -->
											<c:if test="${today == regdate}">
												<span class = "new_color twincle_eff">N</span>
											</c:if>
											
											<td scope="col">${list.writer}</td><!--  작성자 -->
											<td scope="col">
											
											<c:choose>
												<c:when test="${today == regdate}">
													<fmt:formatDate value="${list.updatedate}" pattern="HH:mm:ss" />
												</c:when>
												<c:otherwise>
													<fmt:formatDate value="${list.updatedate}" pattern="yyyy-MM-dd" />
												</c:otherwise>													
											</c:choose></td><!--  작성일 -->
											
											<td scope="col">${list.viewcnt}</td><!--  조회수 -->
										</tr>
								</c:forEach>
								
							</table>
								<div class="side_box_list" style="display: flex; justify-content: center">
									
																	
										<div class="next_page" style="margin: auto;" >
											<c:if test="${map.pager.curBlock > 1}">
												<a href="${path}/board/list?curPage=${map.pager.blockBegin-10}&sort_option=${map.sort_option}&keyword=${map.keyword}" class="page_left"><i class="fas fa-angle-left"></i></a>
												<a href="${path}/board/list?curPage=1&sort_option=${map.sort_option}&keyword=${map.keyword}" class=""></a>
												<span>...</span>
											</c:if>
											
											<c:if test="${map.pager.curBlock < map.pager.totBlock}">
												<span>...</span>
												<a href="${path}/board/list?curPage=${map.pager.totPage}&sort_option=${map.sort_option}&keyword=${map.keyword}"  class="">${map.pager.totPage}</a>
												<a href="${path}/board/list?curPage=${map.pager.blockEnd + 1}&sort_option=${map.sort_option}&keyword=${map.keyword}" class="page_right"><i class="fas fa-angle-right"></i></a>
											</c:if>
																					
										
											<c:forEach var="num" begin="${map.pager.blockBegin}" end="${map.pager.blockEnd}"> 
												<c:choose>
													<c:when test="${num == map.pager.curPage}">
														<a href="${path}/board/list?curPage=${num}&sort_option=${map.sort_option}&keyword=${map.keyword}" id="check_color">${num}</a>
													</c:when>
													<c:otherwise>
														<a href="${path}/board/list?curPage=${num}&sort_option=${map.sort_option}&keyword=${map.keyword}">${num}</a>
													</c:otherwise>
												</c:choose>
											</c:forEach>	
										</div>
			                       

			                        <div class="side_write" >
										<a href="#">글쓰기</a>
									</div>				
								</div>

						</div>

				</div>
						
			</div>
	</div>
	
</body>
<script type="text/javascript">
	$(function(){
		var sort_option = '${map.sort_option}';
		if(sort_option != null){
			
			// alert('#sort_' + sort_option);
			
			$('#sort_' + sort_option).css('color', 'navy');
			$('#sort_' + sort_option).css('border-radius', '5px');
			$('#sort_' + sort_option).css('font-weight', 'bold');
		}
		
		
		$('.write_btn').click(function(){
			loaction.href="/playtime/board/write";
		});
	});

</script>
</html>