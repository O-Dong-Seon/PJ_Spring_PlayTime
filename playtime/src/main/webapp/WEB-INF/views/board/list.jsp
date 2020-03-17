<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="../include/header.jsp" %>
    
<!DOCTYPE html>
<title>사용자 확인</title>
	<link rel="stylesheet" type="text/css" href="../../css/common.css">
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
		font-size: 20px;
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
		font-size: 17px;
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

		
		@keyframes twinkle{
			0% {opacity:0;}
			100%{opacity:1;}
			
			/* from{opacity: 0;}
			to{opacity: 1;} */
		}

	
	

	
	</style>
</head>
<body class="not-support-flex">	

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
							<a href="#">최신순</a>
							<a href="#">조회순</a>
							<a href="#">댓글순</a>
							<a href="#">추천순</a>
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
								
								<tr>
									<td scope="col">1</td> <!--  번호 -->
									<td scope="col">디자인개어렵<span> new</span></td>  <!--  제목 -->
									<td scope="col">오동동</td><!--  작성자 -->
									<td scope="col">2020/3/17</td><!--  작성일 -->
									<td scope="col">15</td><!--  조회수 -->
								</tr>

								<tr>
									<td scope="col">2</td> <!--  번호 -->
									<td scope="col">자바개어렵</td><!--  제목 -->
									<td scope="col">비폭력간디</td><!--  작성자 -->
									<td scope="col">2020/3/1</td><!--  작성일 -->
									<td scope="col">50</td><!--  조회수 -->
								</tr>
								<tr>
									<td scope="col">3</td> <!--  번호 -->
									<td scope="col">스프링 개어렵</td><!--  제목 -->
									<td scope="col">재훈</td><!--  작성자 -->
									<td scope="col">2020/2/3</td><!--  작성일 -->
									<td scope="col">45</td><!--  조회수 -->
								</tr>
								<tr>
									<td scope="col">4</td> <!--  번호 -->
									<td scope="col">공부 개어렵</td><!--  제목 -->
									<td scope="col">보훈</td><!--  작성자 -->
									<td scope="col">2020/1/1</td><!--  작성일 -->
									<td scope="col">35</td><!--  조회수 -->
								</tr>
							</table>
								<div side_box_list style="display: flex; justify-content: center">
									
										<div class="next_page" style="margin: auto;" >
											<a href="#">←</a>
											<a href="#">1</a>
											<a href="#">2</a>
											<a href="#">3</a>
											<a href="#">4</a>
											<a href="#">5</a>
											<a href="#">→</a>
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