
<%@page import="projectVO.ShowVO"%>
<%@page import="MusicalBoardService.InfoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<link rel="stylesheet" href="../../css/bootstrap.min.css">
<!-- flaticon css -->
<link rel="stylesheet" href="../../css/shopick-icon.css">
<!-- style css -->
<link rel="stylesheet" href="../../css/style.css">
<!-- main css -->
<link rel="stylesheet" href="../main.css">
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
					<img class="im" src="../musical_Img/banner1.JPG" alt="">
				</div>
				<div>
					<img class="im" src="../musical_Img/banner2.JPG" alt="">
				</div>
				<div>
					<img class="im" src="../musical_Img/banner3.JPG" alt="">
				</div>
			</div>
		</section>

		<!-- 메뉴 START -->
		<div class='submenu'>
			<ul>
				<li><a href="1_Reservation.jsp">예매</a></li>
				<li><a href="2_Info.jsp">공연정보</a></li>
				<li><a href="3_Review.jsp">관람후기</a></li>
				<li><a href="4_QnA.jsp">Q&A</a></li>
			</ul>
		</div>
		<!-- 메뉴 END -->
		<jsp:useBean id="dao" class="MusicalBoardService.InfoDAO"></jsp:useBean>
		<jsp:useBean id="svo" class="MusicalBoardService.InfoVO"></jsp:useBean>

		<%
		String show_code = request.getParameter("show_code");
		svo = dao.getshow(show_code);
		%>
s

		<form action="../../../deleteServlet" method="post">
			공연코드 : <input type="text" name="show_code" readonly
				value="<%=svo.getShow_Code()%>"><br> 제목 : <input
				type="text" name="Show_Name" readonly
				value="<%=svo.getShow_Name()%>"><br> 시작일 : <input
				type="text" name="Show_Startday" readonly
				value="<%=svo.getShow_Startday()%>"><br> 종료일 : <input
				type="text" name="Show_Endday" readonly
				value="<%=svo.getShow_Endday()%>"><br> 출연진 : <input
				type="text" name="Show_Info_Casting" readonly
				value="<%=svo.getShow_Info_Casting()%>"><br> 연령 : <input
				type="text" name="Show_Info_Age" readonly
				value="<%=svo.getShow_Info_Age()%>"><br> 공연장 : <input
				type="text" name="Concert_Hall_Name" readonly
				value="<%=svo.getConcert_Hall_Name()%>"><br> 주소 : <input
				type="text" name="Concert_Hall_Address" readonly
				value="<%=svo.getConcert_Hall_Address()%>"><br> 전화번호 :
			<input type="text" name="Concert_Hall_Tel" readonly
				value="<%=svo.getConcert_Hall_Tel()%>"><br> <input
				type="submit" value="삭제"> <input type="button" value="수정"
				onClick="window.location='2_Info_Update.jsp'" /> <input
				type="button" value="뒤로가기" onClick="window.location='2_Info.jsp'" />
		</form>
</body>
</html>