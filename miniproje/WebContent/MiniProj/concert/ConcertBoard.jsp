<%@page import="java.util.ArrayList"%>
<%@page import="ConcertBoardService.ConcertBoardDAO"%>
<%@page import="java.util.List"%>
<%@page import="ConcertBoardService.ConcertBoardVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="utf-8">
	<title>Gaze In Daegu :: Concert 게시판</title>
	
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
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
		<!-- section AREA START -->
		<div class = "wrap">
			
				<%
					ConcertBoardDAO dao = new ConcertBoardDAO();
					List<ConcertBoardVO> list = dao.getBoarderList() ;
					
					request.setAttribute("list", list);
				%>
				
				<div align= "center">
					<table class= "boardTbl">
					<caption><h2>Concert 게시판</h2></caption>
						<tr class = "titleTr">
							<th>no.</th><th>이름</th><th>제목</th><th>등록일</th><th>조회수</th>
						</tr>
					<%
						if(list.size() == 0){
					%>
						<tr>
							<td class= "emptyBoard" colspan="6">아직 게시글이 등록되지 않았습니다. 첫 게시글을 남겨보세요!</td>
						</tr>
					<%
						} else {
							for(int i = 0; i < list.size(); i++){
					%>
						<tr>
							<td width="5%"><%= list.get(i).getBoardnum() %></td>
							<td width="15%"><%= list.get(i).getMemberName() %></td>
							<td width="60%"><a href = "CboardContents.jsp?title=<%= list.get(i).getTitle() %>"><%= list.get(i).getTitle() %></a></td>
							<td width="15%"><%= list.get(i).getUploadDate() %></td>
							<td width="5%"><%= list.get(i).getHit() %></td>
							</tr>
					<%
							}
						}
					%>
						<tr>
							<td class= "bottomTd" colspan="6"><button class = "btn" type = "button" onclick ="a.href='uploadContents.jsp'">글쓰기</button></td>
						</tr>
					</table>
				</div>
			
		</div>
		<!-- section AREA END -->
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