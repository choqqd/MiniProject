<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<!-- Google Font -->
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,500.00,700,300' rel='stylesheet' type='text/css'>
	<!-- bootstrap v3.3.6 css -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- flaticon css -->
	<link rel="stylesheet" href="css/shopick-icon.css">
	<!-- style css -->
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/index.css">
	<style>
		.session {
			width: 1000px;
			min-height: 800px;
			margin: 0 auto;
			background-color: rgb(242, 244, 247);
		}

		.loginTitle {
			text-align: center;
			margin: 80px auto 40px;
			background-color: rgb(242, 244, 247);
		}

		.loginWap {
			border: 2px solid black;
			height: 350px;
			border-radius: 20px;
			margin: 40px;
			text-align: center;
			
		}

		input {
			color: -internal-light-dark(black, white);
			display: inline-block;
			text-align: start;
			background-color: -internal-light-dark(rgb(255, 255, 255), rgb(59, 59, 59));
			margin: 0 auto;
		}

		.login {
			width: 312px;
			height: 44px;
			margin-top : 20px;
			margin-bottom: 15px;
			line-height: 46px;
			padding: 0 10px;
		    border: 1px solid #d4d4d4;
 		    border-radius: 3px;
		}
	</style>
	<title>Login | Gaze in daegu</title>
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
									<li><a href="index.html">home</a></li>
									<li><a href="concert/Concert.html">콘서트</a></li>
									<li><a href="musical/Musical.html">뮤직컬</a></li>
									<li><a href="theater/Theater.html">연극</a></li>
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
	<!-- Login box -->
	<div class="session">
		<div class="loginTitle">
			<h2> 로그인</h2>
		</div>
		<div class="loginWap">
			<form action="logCheck.jsp" method="POST">
				<input class="login" type="text" name="userId" placeholder="아이디(ID)를 입력해 주세요."><br>
				<input class="login" type="password" name="userPwd" placeholder="비밀번호(password)를 입력해 주세요."><br>
				<input type="submit" value="로그인">
			</form>
			<form action="logInsert.jsp" method="post">
			<input type="submit" value="회원가입">
			</form>
		</div>
	</div>





	<div class="footer">
		<!-- Footer는 Sifoot start -->
		<p class="single-footer" align="center">
			(주)Gaze in Daegu 대구광역시 중구 국채보상로 537 (수동, 5층) / 대표자: 그미소는 꽃이야 / <br> 대표
			GIt:https://github.com/choqqd/Miniproj.git / 개인정보보호책임자: 그미소는 꽃이야 <br>
			Copyright © 2021 (주)Gaze in Daegu All Rights Reserved.
		</p>
	</div>
</body>

</html>