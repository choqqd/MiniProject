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
								<li><a href="#">?????? <span><i class="sp-gear"></i></span></a>
									<ul class="submenu">
										<li><a href="login.jsp">
										<%
											if(session.getAttribute("mem")==null){
												%>?????????</a><%
											}else{
												%><a href = "logCheck.jsp">????????????<%
											}
										%></a></li>
										<li><a href="#">??? ??????</a></li>
										<li><a href="#">????????????</a></li>
										<li><a href="#">????????????</a></li>
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
									<li><a href="index.jsp">home</a></li>
									<li><a href="concert/Concert.html">?????????</a></li>
									<li><a href="musical/Musical.jsp">?????????</a></li>
									<li><a href="theater/Theater.jsp">??????</a></li>
									<li><a href="">?????????</a></li>
									<li><a href="">?????????</a></li>
									<li><a href="">?????????/??????</a></li>
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
			<h2> ?????????</h2>
		</div>
		<div class="loginWap">
			<form action="logCheck.jsp" method="POST">
				<input class="login" type="text" name="userId" placeholder="?????????(ID)??? ????????? ?????????."><br>
				<input class="login" type="password" name="userPwd" placeholder="????????????(password)??? ????????? ?????????."><br>
				<input type="submit" value="?????????">
			</form>
			<form action="logInsert.jsp" method="post">
			<input type="submit" value="????????????">
			</form>
		</div>
	</div>





	<div class="footer">
		<!-- Footer??? Sifoot start -->
		<p class="single-footer" align="center">
			(???)Gaze in Daegu ??????????????? ?????? ??????????????? 537 (??????, 5???) / ?????????: ???????????? ????????? / <br> ??????
			GIt:https://github.com/choqqd/Miniproj.git / ???????????????????????????: ???????????? ????????? <br>
			Copyright ?? 2021 (???)Gaze in Daegu All Rights Reserved.
		</p>
	</div>
</body>

</html>