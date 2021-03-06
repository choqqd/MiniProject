\<%@page import="java.io.PrintWriter"%>
<%@page import="projectVO.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Gaze in daegu</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">


	<!-- Google Font -->
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,500.00,700,300' rel='stylesheet' type='text/css'>
	<!-- slider 링크 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	<!-- bootstrap v3.3.6 css -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- flaticon css -->
	<link rel="stylesheet" href="css/shopick-icon.css">
	<!-- style css -->
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/index.css">
	<script type="text/javascript">
		//슬라이더 스크립트 부분
		$(document).ready(function () {
			$('.slider').bxSlider();

		})
	</script>
	<style>

	</style>
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
										<li><a href="login.jsp">
										<%
											if(session.getAttribute("id")==null){
												%>로그인</a><%
											}else{
												%><a href = "logCheck.jsp">로그아웃<%
											}
										%>
										</a></li>
										<li><a href="#" onclick="myinfo();" id ="myinfo">내 정보</a></li>
										<script type ="text/javascript">								
											function myinfo(){
												<% 
												if(session.getAttribute("id")==null){
													%> window.alert("로그인을 해주세요");<%
												}else{
													%>$("#myinfo").attr("href","myinfo.jsp") <%
												}
												%>
											}
										</script>
										<li><a href="#">관심목록</a></li>
									</ul>
								</li>
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
									<li><a href="index.jsp">home</a></li>
									<li><a href="concert/Concert.jsp">콘서트</a></li>
									<li><a href="musical/Musical.jsp">뮤지컬</a></li>
									<li><a href="theater/Theater.jsp">연극</a></li>
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
		<!-- Main-Header End -->
	</header>
	<!-- HEADER-AREA END -->
	<section>
		<div class="slider">
			<div><img class="im" src="img/index/블리쳐스.jpg" alt=""></div>
			<div><img class="im" src="img/index/레미제라블.jpg" alt=""></div>
			<div><img class="im" src="img/index/THE-HYUNDAI-SUPER-STAGE.jpg" alt=""></div>
		</div>
		<div class="inner">
			<div class="baner">
				<h2>Concert <span>눈 앞에 연예인과 함께~♡</span></h2>
				<ul>
					<li>
						<img src="img/index/con1.gif"> <strong>싱어게인 TOP10</strong><span>5.30일</span>
					</li>
					<li>
						<img src="img/index/con2.gif"> <strong>10센치X치즈</strong><span>6.25일</span>
					</li>
					<li>
						<img src="img/index/con3.gif"> <strong>에일리 단톡 콘서트</strong><span>6.5일</span>
					</li>
					<li>
						<img src="img/index/con4.jpg"> <strong>장윤정 라이브 콘서트</strong><span>6.26일</span>
					</li>
				</ul>
				<ul>
				</ul>
			</div>
			<div class="baner">
				<h2>musical <span>눈과 귀가 동시에 호강♬</span></h2>
				<ul>
					<li>
						<img src="img/index/mu1.gif"> <strong>맨 오브 라만차</strong><span>~7.20일</span>
					</li>
					<li>
						<img src="img/index/mu2.gif"> <strong>시카고</strong><span>~7.18일</span>
					</li>
					<li>
						<img src="img/index/mu3.gif"> <strong>팬텀</strong><span>~6.27일</span>
					</li>
					<li>
						<img src="img/index/mu4.gif"> <strong>로미오와 줄리엣</strong><span>~10.10일</span>
					</li>
				</ul>
			</div>
			<div class="baner">
				<h2>theater <span>빠져나올수 없는 몰입감!</span></h2>
				<ul>
					<li>
						<img src="img/index/ta1.gif"> <strong>옥탑방 고양이</strong><span>~10.10일</span>
					</li>
					<li>
						<img src="img/index/ta2.gif"> <strong>해롤드와 모드</strong><span>~6.30일</span>
					</li>
					<li>
						<img src="img/index/ta3.gif"> <strong>완벽한 타인</strong><span>~8.~01일</span>
					</li>
					<li>
						<img src="img/index/ta4.gif"> <strong>유리 동물원</strong><span>~5.30일</span>
					</li>
				</ul>
			</div>
			<div class="baner">
				ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ<br>
				ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ<br>
				ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ<br>
				ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ<br>
				ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ<br>
				ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ<br>
				ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ<br>
				ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ<br>
				ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ<br>
				
				<%
				out.print(session.getAttribute("id")+"/"+session.getAttribute("name"));
				%>
				
			</div>
		</div>
	</section>
	<div class="footer">
		<!-- Footer는 Sifoot start -->
		<p class="single-footer" align="center">
			(주)Gaze in Daegu 대구광역시 중구 국채보상로 537 (수동, 5층) / 대표자: (주)그 미소는 꽃이야 / <br> 대표
			GIt:https://github.com/choqqd/Miniproj.git / 개인정보보호책임자: (주)그 미소는 꽃이야 <br>
			Copyright © 2021 (주)Gaze in Daegu All Rights Reserved.
		</p>
	</div>
</body>
</html>