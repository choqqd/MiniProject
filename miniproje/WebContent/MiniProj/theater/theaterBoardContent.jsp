<%@page import="TheaterBoardService.TheaterBoardVO"%>
<%@page import="TheaterBoardService.TheaterBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<!-- 내용 뿌려주기 -->
	<div id="showContent">
		<%
		String content = request.getParameter("content");
		TheaterBoardDAO dao = new TheaterBoardDAO();
		TheaterBoardVO vo = new TheaterBoardVO();
		vo = dao.getBoardSelect(content);
		%>
		<table id="contentTable" border="1">
			<tr>
				<th colspan="3">글제목 : <%=vo.getBoardTitle()%></th>
			</tr>
			<tr>
				<th colspan="3">작성자 : <%=vo.getMemberName()%> | 작성일 : <%=vo.getBoardDate()%></th>
			</tr>
			<tr>
				<td colspan="3"><%=vo.getBoardContent()%></td>
			</tr>
			<tr>
				<td><a href="theaterBoard.jsp"><button>목록으로</button></a></td>
				<td><a href="updateContent.jsp?boardNum=<%=vo.getBoardNum() %>">
				<h3><%=vo.getBoardNum() %></h3><button>글수정</button></a></td>
				<td><a href="DeleteAction.jsp?boardNum=<%= vo.getBoardNum() %>"><button>글삭제</button></a></td>
			</tr>
		</table>
	</div>
	<!-- 내용 뿌려주기 끝 -->
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