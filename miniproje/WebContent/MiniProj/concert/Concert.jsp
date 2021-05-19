<%@page import="ConcertBoardService.ConcertBoardDAO"%>
<%@page import="java.util.List"%>
<%@page import="ConcertBoardService.ConcertBoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="">
<head>

<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Gaze in daegu</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="js/jquery-1.11.2.min.js"></script>
<script src="js/jquery.bpopup-0.10.0.min.js"></script>
<script src="js/pop.js"></script>
	
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
<link rel="stylesheet" href="css.css">
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
						<div></div>
					</div>
					<div class="col-md-8 hidden-sm hidden-xs">
						<div class="main-menu pull-right">
							<nav>
								<ul>
									<li><a href="../index.html">home</a></li>
									<li><a href="Concert.html">콘서트</a></li>
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
		
		
										
<!-- 실시간 검색 순위 -->
															
						  <div class="center-align relative">
						    <div id="search-ranking">
						      <p class="subtitle">실시간 검색 순위</p>
						      <div>
						        <span id="rank-number">1</span>
						        <span id="rank-title">미스터트롯</span>
						      </div>
						      <ul>
						        <li>
						          <span class="rank-number">1</span>
						          <span class="rank-title">미스터트롯</span>
						        </li>
						        <li>
						          <span class="rank-number">2</span>
						          <span class="rank-title">싱어게인</span>
						        </li>
						        <li>
						          <span class="rank-number">3</span>
						          <span class="rank-title">이문세</span>
						        </li>
						        <li>
						          <span class="rank-number">4</span>
						          <span class="rank-title">양준일</span>
						        </li>
						        <li>
						          <span class="rank-number">5</span>
						          <span class="rank-title">청춘페스티벌</span>
						        </li>
						        <li>
						          <span class="rank-number">6</span>
						          <span class="rank-title">정승환</span>
						        </li>
						        <li>
						          <span class="rank-number">7</span>
						          <span class="rank-title">정동하||소향</span>
						        </li>
						        <li>
						          <span class="rank-number">8</span>
						          <span class="rank-title">VOS</span>
						        </li>
						        <li>
						          <span class="rank-number">9</span>
						          <span class="rank-title">옥상달빛</span>
						        </li>
						        <li>
						          <span class="rank-number">10</span>
						          <span class="rank-title">데이브레이크</span>
						        </li>
						      </ul>
						    </div>
						  </div>
						
<!-- 실시간 검색 순위 끝 -->
						
		<!-- Main-Header End -->
	</header>
	<!-- HEADER-AREA END -->
<body>
	<!-- body Start -->

	<div class="bobox">

		<!-- Top 공연 포스터 div -->
		<div class="top">
			<div class="postbox">
					
				<h2>Best Concert In this Month</h2>
				
				<ul>
			 	
						<li>
							<div>								
						 	<img id="my-button" alt="num1" src="img/con1.png">
							<iframe id="element_to_pop_up" width="640" height="360" src="https://www.youtube.com/embed/7j2KMMadI8M" title="YouTube video player"></iframe>
							</div>
							<strong>싱어게인 Top10 콘서트</strong> 
							<span class="small">2021.06.05 ~</span>
								
						</li>
			
				
						<li>
							<div >  
							<img id="my-button2" alt="num2" src="../img/index/con2.gif">
							
							<iframe id="element_to_pop_up2" width="640" height="360" src="https://www.youtube.com/embed/4KYvPLGJlSY" title="YouTube video player"></iframe>
							</div>
						 	
				
							<strong>10CM | 치즈 콘서트</strong> 
							<span class="small">2021.06.25 ~</span>
		
						</li>
				

				
						<li>
							<div>
						 	<img id="my-button3" alt="num3" src="../img/index/con3.gif">
							
							<iframe  id="element_to_pop_up3" width="640" height="360" src="https://www.youtube.com/embed/_Rp3FKVEhcg" title="YouTube video player"></iframe>
							</div>
							<strong>에일리 단독 콘서트</strong> 
							<span class="small">2021.06.05 ~</span>
	
						</li>
				
						
						<li>
						
							<div >
						 	<img id="my-button4" alt="num4" src="img/con4.png">
							
							<iframe id="element_to_pop_up4" width="640" height="360" src="https://www.youtube.com/embed/k82wvbObl2k" title="YouTube video player"></iframe>
							</div>
							<strong>장윤정 라이브 콘서트</strong> 
							<span class="small">2021.06.26 ~</span>
	
						</li>
				

						</ul>
			</div>
	</div>

<!-- Top 공연 포스터 div End -->

<!-- 왼쪽 콘서트 장르 -->
		
		<div class="blank">
			 blank 
		</div>
<!-- 왼쪽 콘서트 장르 End -->

<!-- 중간 콘서트 소개 영상 -->
	<div class="show">
		<div class="showbox">
			<img class="small_poster" src="img/con1.png">
			<div>
				$.ajax 사용해서 각 이미지에 button 주고 클릭시 동영상 재생과 함께 
		 		아래의 정보 함께 뜨도록 코드 짜기
					<ul>
								<li>공연명 : 싱어게인 Top 10 콘서트
									</li>
								<li>공연기간 : 2021.06.05 ~
									</li>
								<li>출연진 : 이미미,이미미,김미미, ...
									</li>
								<li>기대 평점 : ★★★★★ (5.0) 
									
					</ul>			
				<button class="button"><img src="img/bookBtn.jpg"></button>
			</div>		
		</div>	
	</div>
<!-- 중간 콘서트 소개 영상 End-->

	

<!-- 아래쪽 게시판 -->

	<div class="board" align="center">
	<%
		ConcertBoardDAO dao = new ConcertBoardDAO();
		List<ConcertBoardVO> list = dao.getBoarderList();
		
		request.setAttribute("list", list);
	%>
		<table class="mainTbl">
		<caption><a href="ConcertBoard.jsp"><h4>Concert Review</h4></a></caption>
			<tr class = "titleTr">
				<th>no.</th><th>작성자</th><th>제목</th><th>등록일</th><th>조회수</th>
			</tr>
			<tr>
			<%
				if(list.size() == 0){
			%>
					<tr>
						<td class= "emptyBoard" colspan="6">아직 게시글이 등록되지 않았습니다. 첫 게시글을 남겨보세요!</td>
					</tr>
				<%
					} else {
						for(int i = 0; i < 5; i++){
				%>
					<tr>
						<td width="5%"><%= list.get(i).getBoardnum() %></td>
						<td width="15%"><%= list.get(i).getMemberName() %></td>
						<td width="50%"><a href = "CboardContents.jsp?title=<%= list.get(i).getTitle() %>"><%= list.get(i).getTitle() %></a></td>
						<td width="20%"><%= list.get(i).getUploadDate() %></td>
						<td width="10%"><%= list.get(i).getHit() %></td>
						</tr>
				<%
						}
					}
				%>
		</table>
	</div>
<!-- 아래쪽 게시판 End -->

<!-- 오른쪽 아래 공연 랭킹 정보-->
				<div class="rank">
				
					
					
					
					
					
					<div class="subject"><span>Weekly Rank</span></div>
					
						


								<!--  <a href="" class="playBtn" onclick="movieLayer">
										<img alt=""></a>-->

								
								db에서 가져오는 형태로 새로 해야됨.
								doget으로 테이블형태로 가져오던지 아래와 같은 형태로 받아와서
								클릭하면 포스터 변화 
								<ol id="">
									<li>
									<a href="" onclick="" class=selected >싱어게인 콘서트</a>

										</li>
										<li>
									<a href="" onclick="" class="" >10cm||치즈</a>

										</li>
											<li>
									<a href="" onclick="" class="" >에일리 콘서트</a>

										</li>
											<li>
									<a href="" onclick="" class="">장윤정 콘서트</a>

										</li>
								</ol>	

														
</div>
			
				
<!-- 오른쪽 아래 공연 랭킹 정보 End -->

<!-- To top BTN -->
				<span class=topbtn onclick="window.scrollTo(0,0);">
				<img	src="img/topbtn.png"></span>
<!-- To top BTN -->

<!-- Footer start -->
		<div class="foot">
				<div class="foott">
		
						<p class="single-foott" align="center">
								(주)Gaze in Daegu 대구광역시 중구 국채보상로 537 (수동, 5층) / 대표자:조진호 / <br> 대표
								GIt:https://github.com/choqqd/Miniproj.git / 개인정보보호책임자:조진호 <br>
								Copyright © 2021 (주)Gaze in Daegu All Rights Reserved.
						</p>
				</div>
	<!-- Footer end -->
		</div>

</div>
</body>
</html>




