<%@page import="TheaterBoardService.TheaterBoardVO"%>
<%@page import="TheaterBoardService.TheaterBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>theaterBoard.html</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script type="text/javascript"></script>
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
<link rel="stylesheet" href="css/theaterMain.css">
<link rel="stylesheet" href="css/insertContent.css">
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
									<li><a
										href="http://localhost/miniproje/MiniProj/index.html">home</a></li>
									<li><a
										href="http://localhost/miniproje/MiniProj/concert/Concert.html">콘서트</a></li>
									<li><a
										href="http://localhost/miniproje/MiniProj/musical/Musical.html">뮤직컬</a></li>
									<li><a
										href="http://localhost/miniproje/MiniProj/theater/Theater.html">연극</a></li>
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
	<!-- 게시판 글쓰기 양식 영역 시작 -->
	<div class="container">
		<div id="insertPage">
			<form method="post" action="insertProc.jsp">
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2">후기게시판</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control"
								placeholder="글쓴이" name="memberName" maxlength="50"></td>
						</tr>
						<tr>
							<td><input type="text" class="form-control"
								placeholder="제목" name="title" maxlength="50"></td>
						</tr>
						<tr>
							<td><input type="text" class="form-control"
								placeholder="내용" name="content" maxlength="50"></td>
						</tr>

						<tr>
							<td><textarea class="form-control" placeholder="글 내용"
									name="bbsContent" maxlength="2048" style="height: 500px;"></textarea></td>
						</tr>
					</tbody>
				</table>
				<!-- 글쓰기 버튼 생성 -->
				<input type="submit" class="btn btn-primary pull-right" value="글쓰기">
			</form>
		</div>
	</div>
	<!-- 게시판 글쓰기 양식 영역 끝 -->
	<!-- Footer -->
	<div class="footer" style="text-align: center;">
		<p class="single-footer">
			(주)Gaze in Daegu 대구광역시 중구 국채보상로 537 (수동, 5층) / 대표자:조진호 / <br> 대표
			GIt:https://github.com/choqqd/Miniproj.git / 개인정보보호책임자:조진호 <br>
			Copyright © 2021 (주)Gaze in Daegu All Rights Reserved.
		</p>
	</div>
	<!-- End Footer -->
</body>
</html>