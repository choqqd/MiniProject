<%@page import="projectVO.LocationVO"%>
<%@page import="Common.LoginOutDAO"%>
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
		.infoshow{
			width: 800px;
			margin: 50px auto;
			background: white;
		}
		h2{
		text-align: center;
		display: block;
		font-weight: bold;
		}
		th{
		width: 200px;
		height: 50px;
		text-align: center;
		}
		td{
		height: 50px;
		padding-left: 20px; 
		}
		.inpu{
			background: -internal-light-dark(rgb(255, 255, 255), rgb(59, 59, 59));
  			border: 1px solid #d4d4d4;
  			border-radius: 3px;
  			width: 300px;
		}
		.pwbtn{
			ackground: -internal-light-dark(rgb(255, 255, 255), rgb(59, 59, 59));
  			border: 1px solid #d4d4d4;
  			border-radius: 3px;
  			float: right;
  			margin-right: 20px;
		}
	</style>
	<title>내 정보 | Gaze in daegu</title>

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
	<div class = "infoshow">
	<%
	String add = (String)session.getAttribute("address");
	LoginOutDAO dao = new LoginOutDAO();
	LocationVO vo = new LocationVO();
	vo = dao.getlocation(add);
	%>
	
		<h2>내 정 보</h2>
		<table border ="1" class="myinfo" width=100%>
			<tr>
				<th>아이디</th><td colspan="2"><%out.print(session.getAttribute("id")); %></td>
			</tr>
			<tr>
				<th>이름</th><td colspan="2"><%out.print(session.getAttribute("name")); %></td>
			</tr>
			<form action="#" method="post">
				<tr>
					<th rowspan="3">비밀번호</th><td> 현재 비밀번호</td>
					<td> <input type="password" name="inpass" class="inpu"></td>
				</tr>
				<tr>
					<td>새 비밀번호</td>
					<td><input type="password" name="newpass" class="inpu"></td>
				</tr>
				<tr>
					<td>새 비밀번호 확인</td>
					<td><input type="password" name="newpass1" class="inpu">
					<input type="submit" value="비밀번호 변경" class="pwbtn"></td>
				</tr>
			</form>
			<form actiom = "#" method="post">
				<tr>
					<th>이메일</th><td colspan="2"><input type="text" class = "inpu" value="<%=session.getAttribute("email") %>"></td>
				</tr>
				<tr>
					<th>주소</th><td colspan="2"><%out.print(vo.getLocation()); %></td>
				</tr>
				<tr>
					<th>전화번호</th><td colspan="2"><%out.print(session.getAttribute("tel")); %></td>
				</tr>
		</table>
		</form>
	</div>
</body>
</html>