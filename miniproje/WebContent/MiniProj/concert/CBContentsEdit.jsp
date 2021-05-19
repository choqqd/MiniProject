<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Gaze In Daegu :: 게시글 수정</title>
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
	<!-- Banya's css -->
	<link rel="stylesheet" href="../css/ConcertBoard.css">
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
										<li><a href="login.jsp">로그인</a></li>
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
						<div></div>
					</div>
					<div class="col-md-8 hidden-sm hidden-xs">
						<div class="main-menu pull-right">
							<nav>
								<ul>
									<li><a href="../index.jsp">home</a></li>
									<li><a href="Concert.jsp">콘서트</a></li>
									<li><a href="../musical/Musical.html">뮤지컬</a></li>
									<li><a href="../theater/Theater.html">연극</a></li>
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
	<jsp:useBean id="dao" class= "ConcertBoardService.ConcertBoardDAO"></jsp:useBean>
	<jsp:useBean id="vo" class="ConcertBoardService.ConcertBoardVO"></jsp:useBean>
	<div class = "wrap">
		<%
			String bNum = request.getParameter("boardNum");
			int boardNum = Integer.parseInt(bNum);
			String title = request.getParameter("title");
			String name = request.getParameter("memberName");
			String contents = request.getParameter("contents");
		%>
		<form method="post" action="BBSEditAction.jsp?boardNum=<%= bNum %>">
			<table class = 'upTbl' align = "center">
			<caption><h2>Concert Review</h2></caption>
				<tr>
					<td width="55px" class = "leftTd" style ="border-right:1px solid lightgray;">no. <%= bNum %></td><td width= "55px" class = "leftTd">작성자</td><td class = "leftTd" colspan="3"><input type = "text" name = "name" class="name" value="<%= name %>"></td>
				</tr>
				<tr>
					<td class = "leftTd">제목</td><td class = "leftTd" colspan="3"><input type = "text" name = "title" class = "title" value="<%= title%>"></td>
				</tr>
				
				<tr>
					<td colspan="4" class = "leftTd">내용</td>
				</tr>
				<tr>
					<td colspan="4"><textarea name = "contents" class = "contents" cols="100" rows="30"><%= contents %></textarea></td>
				</tr>
				<tr>
					<td class="leftTd"><input class = "btn" type = "submit" value = "저장"></td>
					<td class="leftTd"><input class = "btn" type = "reset" value = "삭제"></td>
																								<!--┌>button의 자동 submit 방지용  -->
					<td class="rightTd"><a href="javascript:history.go(-1);"><button class= "btn" type="button">돌아가기</button></a></td>
				</tr>
			</table>
		</form>
	</div>
	<div class="footer">
		<!-- Footer는 Sifoot start -->
		<p class="single-footer" align="center">
			(주)Gaze in Daegu 대구광역시 중구 국채보상로 537 (수동, 5층) / 대표자:조진호 / <br> 대표
			GIt:https://github.com/choqqd/Miniproj.git / 개인정보보호책임자:조진호 <br>
			Copyright © 2021 (주)Gaze in Daegu All Rights Reserved.
		</p>
	</div>
</body>
</html>