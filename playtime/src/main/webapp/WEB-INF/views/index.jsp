<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="include/header.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
	<style type="text/css">
		div {
			/*border: 1px solid red;*/
		}
	
		* {box-sizing: border-box;}
		body {
			font-family: Verdana, sans-serif;
			background-color: #252A3B;
		}
		.mySlides {display: none;}
		img {vertical-align: middle;}

		/* Slideshow container */
		.slideshow-container {
		  max-width: 1000px;
		  position: relative;
		}
		.carousel_all {
			width: 1400px;
			margin: 0 auto;
			display: flex;
			justify-content: space-between;
		}

		.myslides_sub {
			background-color: #DFD0Bd;
			text-align: center;
			width: 400px;
		}
		.myslides_sub > h1 {
			color: white;
		}

		/* Caption text */
		.text {
		  color: white;
		  font-size: 25px;
		  padding: 8px 12px;
		  position: absolute;
		  bottom: 0px;
		  width: 100%;
		  text-align: center;
		}

		/* Number text (1/3 etc) */
		.numbertext {
		  color: #f2f2f2;
		  font-size: 12px;
		  padding: 8px 12px;
		  position: absolute;
		  top: 0;
		}

		/* The dots/bullets/indicators */
		.dot {
		  height: 15px;
		  width: 15px;
		  margin: 0 2px;
		  background-color: #bbb;
		  border-radius: 50%;
		  /*display: inline-block;*/
		  transition: background-color 0.6s ease;
		  display: none;
		}

		.active {
		  background-color: #717171;
		}

		/* Fading animation */
		.fade {
		  -webkit-animation-name: fade;
		  -webkit-animation-duration: 1.5s;
		  animation-name: fade;
		  animation-duration: 1.5s;
		}

		@-webkit-keyframes fade {
		  from {opacity: .4} 
		  to {opacity: 1}
		}

		@keyframes fade {
		  from {opacity: .4} 
		  to {opacity: 1}
		}

		/* On smaller screens, decrease text size */
		@media only screen and (max-width: 300px) {
		  .text {font-size: 15px;}
		}
		

		.sale {
			box-sizing: border-box;
			display: block;
			margin: 15px auto;
			width: 1400px;
			height: 450px;
		}
		.sale > h3 {
			color: white;
			height: 35px;
		}
		.sale_game {
			width: 100%;
			height: 71%;
			display: flex;
			justify-content: space-between;
			align-items: center;

		}
		.sale_info{
			display: flex;
			justify-content: space-between;
			align-items: center;
		}
		.game{
			margin-top: 0px;
		}
		.journey{
			background-image: url(${path}/resources/img/journey.jpg);
			width: 263px;
			height: 100%;		
		}
		.portal {
			background-image: url(${path}/resources/img/portal.jpg);
			width: 263px;
			height: 100%;
		}
		.gris{
			background-image: url(${path}/resources/img/gris.jpg);
			width: 263px;
			height: 100%;
		}
		.ori{
			background-image: url(${path}/resources/img/ori.jpg);
			width: 263px;
			height: 100%;
		}
		.shadow{
			background-image: url(${path}/resources/img/shadow.jpg);
			width: 263px;
			height: 100%;
		}

		h1 {
			box-sizing: border-box;
			display:block;
			margin-top: 265px;
			font-size: 25px;
		}

	
		/*#carousel_picture > ul > li {
			width: 1000px;
			margin: 0 auto;
			box-sizing: border-box;
			height: 350px; /*임시로 고정 나중에 삭제할 것!
			border: 1px solid red;
			
		}*/
		
		.sale_game_name{
			height: 6%;
			width: 100%;
			display: flex;
			justify-content: space-between;
			align-items: center;
		}
		.game_name{
			width: 19%;
			height: 100%;
			color: white;
			text-align: center;
		}

		
		.sale_game_price{
			height: 6%;
			width: 100%;
			display: flex;
			justify-content: space-between;
			align-items: center;
		}
		.game_price{
			width: 19%;
			height: 100%;
			color: white;
			text-align: center;
		}

		.sale_game_info{
			height: 6%;
			width: 100%;
			display: flex;
			justify-content: space-between;
			align-items: center;
		}
		.game_info{
			width: 19%;
			height: 100%;
			color: white;
			text-align: center;
		}
	</style>
</head>
<body>
<div class="carousel_all">
		<div class="slideshow-container">
			<div class="mySlides fade">
			  <div class="numbertext">1 / 5</div>
			  	<img src="${path}/resources/img/저니1.jpg" style="width:100%">
			  <div class="text">Playtime</div>
			</div>

			<div class="mySlides fade">
			  <div class="numbertext">2 / 5</div>
			  	<img src="${path}/resources/img/포탈.jpg" style="width:100%">
			  <div class="text">Playtime</div>
			</div>

			<div class="mySlides fade">
			  <div class="numbertext">3 / 5</div>
				  <img src="${path}/resources/img/그리스.jpg" style="width:100%">
			  <div class="text">Playtime</div>
			</div>

			<div class="mySlides fade">
			  <div class="numbertext">4 / 5</div>
				  <img src="${path}/resources/img/오리.jpg" style="width:100%">
			  <div class="text">Playtime</div>
			</div>

			<div class="mySlides fade">
			  <div class="numbertext">5 / 5</div>
				  <img src="${path}/resources/img/거상.jpg" style="width:100%">
			  <div class="text">Playtime</div>
			</div>
		</div>

		<div class="myslides_sub">
			<h1>Game</h1>
		</div>
	</div>
	<br>

	<div style="text-align:center">
	  <span class="dot"></span> 
	  <span class="dot"></span> 
	  <span class="dot"></span>
	  <span class="dot"></span> 
	  <span class="dot"></span> 
	</div>



	<div class="sale">
		<h3>인기게임</h3>			
		<div class="sale_game">
			<div class="game journey"></div>	
			<div class="game portal"></div>
			<div class="game gris"></div>
			<div class="game ori"></div>
			<div class="game shadow"></div>
		</div>
		
		<div class="sale_game_name">
			<div class="game_name">journey</div>
			<div class="game_name">portal</div>
			<div class="game_name">gris</div>
			<div class="game_name">ori and the blind forest</div>
			<div class="game_name">shadow of colossus</div>
		</div>

		<div class="sale_game_info">
			<div class="game_info">힐링,모험,협동</div>
			<div class="game_info">퍼즐,두뇌,전략</div>
			<div class="game_info">모험,스토리</div>
			<div class="game_info">공포,모험</div>
			<div class="game_info">전략,액션,모험</div>			
		</div>

		<div class="sale_game_price">
			<div class="game_price">10000</div>
			<div class="game_price">5000</div>
			<div class="game_price">12000</div>
			<div class="game_price">23000</div>
			<div class="game_price">34000</div>			
		</div>
	
			
	</div>
	
	<div class="sale">
		<h3>할인게임</h3>			
		<div class="sale_game">
			<div class="game journey"></div>	
			<div class="game portal"></div>
			<div class="game gris"></div>
			<div class="game ori"></div>
			<div class="game shadow"></div>
		</div>
		
		<div class="sale_game_name">
			<div class="game_name">journey</div>
			<div class="game_name">portal</div>
			<div class="game_name">gris</div>
			<div class="game_name">ori and the blind forest</div>
			<div class="game_name">shadow of colossus</div>
		</div>

		<div class="sale_game_info">
			<div class="game_info">힐링,모험,협동</div>
			<div class="game_info">퍼즐,두뇌,전략</div>
			<div class="game_info">모험,스토리</div>
			<div class="game_info">공포,모험</div>
			<div class="game_info">전략,액션,모험</div>			
		</div>

		<div class="sale_game_price">
			<div class="game_price">10000</div>
			<div class="game_price">5000</div>
			<div class="game_price">12000</div>
			<div class="game_price">23000</div>
			<div class="game_price">34000</div>			
		</div>
	
			
	</div>

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
		var slideIndex = 0;
		showSlides();

		function showSlides() {
		    var i;
		    var slides = document.getElementsByClassName("mySlides");
		    var dots = document.getElementsByClassName("dot");
		    for (i = 0; i < slides.length; i++) {
		       slides[i].style.display = "none";  
		    }
		    slideIndex++;
		    if (slideIndex > slides.length) {slideIndex = 1}    
		    for (i = 0; i < dots.length; i++) {
		        dots[i].className = dots[i].className.replace(" active", "");
		    }
		    slides[slideIndex-1].style.display = "block";  
		    dots[slideIndex-1].className += " active";
		    setTimeout(showSlides, 2000); // Change image every 2 seconds
		}
</script>
</html>