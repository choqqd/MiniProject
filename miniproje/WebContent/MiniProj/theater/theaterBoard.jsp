<%@page import="java.util.List"%>
<%@page import="TheaterBoardService.TheaterBoardDAO"%>
<%@page import="TheaterBoardService.TheaterBoardVO"%>
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
<link rel="stylesheet" href="css/theaterBoard.css">
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
										href="http://localhost/miniproje/MiniProj/index.jsp">home</a></li>
									<li><a
										href="http://localhost/miniproje/MiniProj/concert/Concert.jsp">콘서트</a></li>
									<li><a
										href="http://localhost/miniproje/MiniProj/musical/Musical.jsp">뮤직컬</a></li>
									<li><a
										href="http://localhost/miniproje/MiniProj/theater/Theater.jsp">연극</a></li>
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
	<!-- 게시판 영역 -->
	<div id="show">
		<h1 style="text-align: center; margin: 20px auto;">후기게시판</h1>
		<table id="boardTable">
			<tr id="boardTrTag">
				<th>번호</th>
				<th>제목</th>
				<th>내용</th>
				<th>글쓴이</th>
				<th>등록날짜</th>
				<th>조회수</th>
			</tr>
			<%
			TheaterBoardDAO dao = new TheaterBoardDAO();
			List<TheaterBoardVO> list = dao.theaterBoardList();
			if (list.size() == 0) {
			%>
			<tr>
				<td colspan="6" style="font-size: 16pt; font-weight: bold;">첫
					게시글을 써보세요!</td>
			</tr>
			<%
			} else {
			for (int i = 0; i < list.size(); i++) {
			%>
			<tr id="trTag">
				<td style="width: 10%"><%=list.get(i).getBoardNum()%></td>
				<td style="width: 14%"><%=list.get(i).getBoardTitle()%></td>
				<td style="width: 40%"><a
					href="theaterBoardContent.jsp?content=<%=list.get(i).getBoardContent()%>"><%=list.get(i).getBoardContent()%></a></td>
				<td style="width: 12%"><%=list.get(i).getMemberName()%></td>
				<td style="width: 12%"><%=list.get(i).getBoardDate()%></td>
				<td style="width: 12%"><%=list.get(i).getBoardHit()%></td>
			</tr>
			<%
			}
			%>
			<%
			}
			%>
			<tr>
				<td colspan="6">
					<button id="insertBtn" type="button"
						onclick="location.href='insertContent.jsp'">글등록</button>
				</td>
			</tr>
		</table>
	</div>
	<!-- 게시판 영역 끝-->
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