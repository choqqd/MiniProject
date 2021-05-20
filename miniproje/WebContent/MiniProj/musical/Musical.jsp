<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Gaze in daegu</title>
<!-- slider 링크 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script>
	//슬라이더 스크립트 부분
	$(document).ready(function() {
		$('.slider').bxSlider();
	});

</script>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">


<!-- Google Font -->
<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,500.00,700,300'
	rel='stylesheet' type='text/css'>

<!--all css here-->
<!-- bootstrap v3.3.6 css -->
<link rel="stylesheet" href="../css/bootstrap.min.css">
<!-- flaticon css -->
<link rel="stylesheet" href="../css/shopick-icon.css">
<!-- style css -->
<link rel="stylesheet" href="../css/style.css">
<!-- main css -->
<link rel="stylesheet" href="main.css">
</head>
<body>
	<!-- HEADER-AREA START -->
	<header class="header-area">
	
		<!-- Header-Top Start -->
		<div class="header-top hidden-xs">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-6">
						<div class="header-top-left text-left">
							<ul>
								<li><i class="sp-phone"></i> <span>010-1111-1111</span></li>
								<li><i class="sp-email"></i> <span>email@naver.com</span></li>
							</ul>
						</div>
					</div>
					<div class="col-md-6 col-sm-6">
						<div class="header-top-right pull-right">
							<ul>
								<li><a href="#">관리 <span><i class="sp-gear"></i></span></a>
									<ul class="submenu">
										<li><a href="#">로그인</a></li>
										<li><a href="#">내 정보</a></li>
										<li><a href="#">관심목록</a></li>
										<li><a href="#">로그아웃</a></li>
									</ul></li>
							</ul>
							<div class="header-search">
								<form action="#">
									<input type="text" placeholder="Search..." />
									<button type="submit">
										<i class="sp-search"></i>
									</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
			<!-- Header-Top End -->
	<!-- Main-Header Start -->
	<div class="main-header">
		<div class="container">
			<div class="row">
				<div class="col-md-2 col-sm-6 col-xs-12">
					<div>
						<a href="index.html"><img src="" class="img" alt="" /></a>
					</div>
				</div>
				<div class="col-md-8 hidden-sm hidden-xs">
					<div class="main-menu pull-right">
						<nav>
							<ul>
								<li><a href="">home</a></li>
								<li><a href="">콘서트</a></li>
								<li><a href="">뮤직컬</a></li>
								<li><a href="">연극</a></li>
								<li><a href="">게시판</a></li>
								<li><a href="">공연장</a></li>
								<li><a href="">이벤트/쿠폰</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
	</header>
	<!-- Main-Header End -->
	
	
	<!-- MUSICAL START -->
	<div>
		<!-- HEADER-AREA END -->
		<section>
			<div class="slider">
				<div>
					<img class="im" src="musical_Img/banner1.JPG" alt="">
				</div>
				<div>
					<img class="im" src="musical_Img/banner2.JPG" alt="">
				</div>
				<div>
					<img class="im" src="musical_Img/banner3.JPG" alt="">
				</div>
			</div>
		</section>
		
		<!-- 메뉴 START -->
		<div class='submenu'>
			<ul>
        		 <li ><a href="down_menu/1_Reservation.jsp" >예매</a></li>
      			 <li ><a href="down_menu/2_Info.jsp">공연정보</a></li>
        		 <li ><a href="down_menu/3_Review.jsp">관람후기</a></li>
        		 <li ><a href="down_menu/4_QnA.jsp">Q&A</a></li>
			</ul>
		</div>
		<!-- 메뉴 END -->
		
		
		<!-- 상단 포스터 -->
		<div id="mContent">
		<section class='topSec-area'>
			<p id="hot-font">WHAT'S HOT</p>
			<div>
				<div class="main-div">
					<img class="poster" src='musical_Img/mama.jfif'>
					<div>
						<span><h3 id="poster-title">마마, 돈크라이</h3></span> 
						타고난 천재성으로 일찍 교수 생활을 시작한 프로페서 V이지만 수줍음 많은 성격의...<br>
						<h4>2021.03.05 ~ 06.24</h4>
					</div>
				</div>
				<div class="main-div">
					<img class="poster" src='musical_Img/bluerain.jfif'>
					<div>
						<span><h3 id="poster-title">블루레인</h3></span> 
						타고난 천재성으로 일찍 교수 생활을 시작한 프로페서 V이지만 수줍음 많은 성격의...<br>
						<h4>2021.03.05 ~ 06.24</h4>
					</div>
				</div>
				<div class="main-div">
					<img class="poster" src='musical_Img/midnight.jfif'>
					<div>
						<span><h3 id="poster-title">미드나잇(Mid-night)</h3></span> 
						타고난 천재성으로 일찍 교수 생활을 시작한 프로페서 V이지만 수줍음 많은 성격의...<br>
						<h4>2021.03.05 ~ 06.24</h4>
					</div>
				</div>
				<div class="main-div">
					<img class="poster" src='musical_Img/moonstory.jfif'>
					<div>
						<span><h3 id="poster-title">문스토리</h3></span> 
						타고난 천재성으로 일찍 교수 생활을 시작한 프로페서 V이지만 수줍음 많은 성격의...<br>
						<h4>2021.03.05 ~ 06.24</h4>
					</div>
				</div>
			</div>

			<div>
				<div class="main-div">
					<img class="poster" src='musical_Img/moonstory.jfif'>
					<div>
						<span><h3 id="poster-title">마마, 돈크라이</h3></span> 
						타고난 천재성으로 일찍 교수 생활을 시작한 프로페서 V이지만 수줍음 많은 성격의...<br>
						<h4>2021.03.05 ~ 06.24</h4>
					</div>
				</div>
				<div class="main-div">
					<img class="poster" src='musical_Img/romance.jfif'>
					<div>
						<span><h3 id="poster-title">마마, 돈크라이</h3></span> 
						타고난 천재성으로 일찍 교수 생활을 시작한 프로페서 V이지만 수줍음 많은 성격의...<br>
						<h4>2021.03.05 ~ 06.24</h4>
					</div>
				</div>
				<div class="main-div">
					<img class="poster" src='musical_Img/midnight.jfif'>
					<div>
						<span><h3 id="poster-title">마마, 돈크라이</h3></span> 
						타고난 천재성으로 일찍 교수 생활을 시작한 프로페서 V이지만 수줍음 많은 성격의...<br>
						<h4>2021.03.05 ~ 06.24</h4>
					</div>
				</div>
				<div class="main-div">
					<img class="poster" src='musical_Img/bluerain.jfif'>
					<div>
						<span><h3 id="poster-title">마마, 돈크라이</h3></span> 
						타고난 천재성으로 일찍 교수 생활을 시작한 프로페서 V이지만 수줍음 많은 성격의...<br>
						<h4>2021.03.05 ~ 06.24</h4>
					</div>
				</div>
			</div>
		</section>
		<!--상단 포스터 end-->
		
		<!-- MV START -->
		<div class="mvwrap">
			<section class='mvsec'>
				<div class='swiper-wapper'>
					<p id="mvtitle">FOCUS ON</p>
					<p id="mvtitle2">블루레인</p>
					<p id="mvtag">#몽몽몽#냥냥냥</p>
					<p id="mvtag">#보러와라꼭#재미있다구재미있어</p>
				</div>

				<div clss='swiper-player'>
					<iframe id="playYoutube" frameborder='0' allowfullscreen='1'
					accelerometer; autoplay; width="580" height="360"
					src="https://www.youtube.com/embed/?enablejsapi=1&origin=http%3A%2F%2Fticket.yes24.com&widgetid=1"></iframe>
				</div>
			</section>
		</div> <br><br>
		<!-- MV END -->
	
		<!-- FOOTER-AREA START -->
		<footer>
			<p class="single-footer" align="center">
				(주)Gaze in Daegu 대구광역시 중구 국채보상로 537 (수동, 5층) / 대표자:조진호 / <br> 대표
				GIt:https://github.com/choqqd/Miniproj.git / 개인정보보호책임자:조진호 <br>
				Copyright © 2021 (주)Gaze in Daegu All Rights Reserved.
			</p>
		</footer>
		<!-- FOOTER-AREA END -->
		
		
	</div>
	<!-- 메뉴 Script -->
	<script>

	</script>
	<!-- MUSICAL END -->
</body>
</html>