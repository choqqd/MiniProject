<%@page import="java.util.function.Function"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
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

<script>
function check() {
	if(!document.writeform.name.value) {
		alert("작성자를 입력하시오")
		return false;
	}
	if(!document.writeform.title.value) {
		alert("제목을 입력하시오")
		return false;
	}
	if(!document.writeform.contents.value) {
		alert("내용을 입력하시오")
		return false;
	}
	if(!document.writeform.password.value) {
		alert("비밀번호를 입력하시오")
		return false;
	}
	
}
</script>
<%
	int num=0, ref=1, re_step=0, re_level=0;
	try {
		if(request.getParameter("num") != null) {
			num = Integer.parseInt(request.getParameter("num"));
			ref = Integer.parseInt(request.getParameter("ref"));
			re_step = Integer.parseInt(request.getParameter("re_step"));
			re_level = Integer.parseInt(request.getParameter("re_level"));
		}
	} catch (Exception e){
		e.printStackTrace();
	}
%>
<br><br>
<h1 align="center">Write</h1>
<form method="post" name="writeform" action="writePro.jsp" onsubmit="return check()">
	<table width=80% border="3" bordercolor="lightgray" align="center">
		<tr height="30">
			<td width=15% align="center"> Writer </td>
			<td>&nbsp;<input type="text" size="20" name="writer"></td>
		</tr>
		<tr height="30">
			<td width=15% align="center"> Title </td>
			<td>&nbsp;<input type="text" size="50" name="title"></td>
		</tr>
		<tr height="30">
			<td width=15% align="center"> Content </td>
			<td>&nbsp;<textarea name="contents" style="width:98%; height:500px; border:1; overflow:visible; text-overflow: ellipsis;"></textarea></td>
		</tr>
		<tr height="30">
			<td width=15% align="center"> password </td>
			<td>&nbsp;<input type="password" size="20" name="pwd"></td>
		</tr>
		<tr height="40">
			<td colspan=2 align="center">
				<input type="submit" value="Save">&nbsp;&nbsp;
				<input type="reset" value="Reset">&nbsp;&nbsp;
				<input type="button" value="Go Back" onClick="window.location='4_QnA.jsp'" />
			</td>
		</tr>		
	</table>
</form>
<br><br>

</body>
</html>