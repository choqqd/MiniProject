<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Gaze In Daegu :: 게시글 조회</title>
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
										<li><a href="../login.jsp">로그인</a></li>
										<li><a href="#">내 정보</a></li>
										<li><a href="#">관심목록</a></li>
										<li><a href="../logCheck.jsp">로그아웃</a></li>
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
			//로그인 정보 받아오기
			String id = null;
			if(session.getAttribute("id") != null){
				id = (String) session.getAttribute("id");
			}
			
			String title = request.getParameter("title");
			int boardNum = Integer.parseInt(request.getParameter("boardNum"));
			
			dao.updateHitCount(boardNum);	// 조회수 카운트
			vo = dao.selecetContents(title);
			
			String contents = vo.getContents();	// DB에서 글 내용을 받아옴.
			contents = contents.replace("\r\n","<br>");	// 그냥 뿌려주면 개행 처리가 안 되어있기 때문에 replace로 개행을 알려주면
														// 화면에 뿌려줄 때 개행까지 갓--벽하게 나옴.
			
	
		%>
		<table class = 'contentsTbl' align = 'center'>
		<caption><h2>Concert Board</h2></caption>
			<tr>
				<th class= "cTitle" colspan="6"><%=vo.getTitle() %></th>
			</tr>
			<tr>
				<td width="5%">no. <%= vo.getBoardnum() %></td>
				<td width="5%">작성자</td>
				<td width="10%" class= "leftTd"><%= vo.getMemberName() %></td>
				<td width="70%" class="bottomTd"><%= vo.getUploadDate() %></td>
				<td width="5%">조회수</td>
				<td width="5%"><%= vo.getHit() %></td>
			</tr>
			<tr>
				<td class= "content" colspan="6"><%= contents %></td>
			</tr>
			<tr>
				<td><a href ="ConcertBoard.jsp"><button class="btn">목록가기</button></a></td>
				<td><a href="CBContentsEdit.jsp?boardNum=<%= vo.getBoardnum() %>&memberId=<%= vo.getMemberId() %>&memberName=<%= vo.getMemberName()%>&title=<%= vo.getTitle() %>&contents=<%= vo.getContents() %>">
					<button class="btn">글수정</button></a></td>
				<td colspan="4" class="delBtnTd"><a href="BBSDeleteAction.jsp?boardNum=<%= vo.getBoardnum() %>&memberId=<%= vo.getMemberId()%>"><button class="btn">글삭제</button></a></td>
			</tr>
		</table>
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