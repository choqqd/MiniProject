<%@page import="MusicalBoardServlce.NoticeDAO"%>
<%@page import="java.util.List"%>
<%@page import="MusicalBoardServlce.NoticeVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<!-- slider ��ũ -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script>
	//�����̴� ��ũ��Ʈ �κ�
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
<link rel="stylesheet" href="../Musical_dam.css">
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
								<li><a href="#">���� <span><i class="sp-gear"></i></span></a>
									<ul class="submenu">
										<li><a href="#">�α���</a></li>
										<li><a href="#">�� ����</a></li>
										<li><a href="#">���ɸ��</a></li>
										<li><a href="#">�α׾ƿ�</a></li>
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
									<li><a href="">�ܼ�Ʈ</a></li>
									<li><a href="">������</a></li>
									<li><a href="">����</a></li>
									<li><a href="">�Խ���</a></li>
									<li><a href="">������</a></li>
									<li><a href="">�̺�Ʈ/����</a></li>
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

		<!-- �޴� START -->
		<div class='submenu'>
			<ul>
				<li><a href="1_Reservation.html">����</a></li>
				<li><a href="2_Info.jsp">��������</a></li>
				<li><a href="3_Review.html">�����ı�</a></li>
				<li><a href="4_QnA.jsp">Q&A</a></li>
			</ul>
		</div>
		<!-- �޴� END -->
	<br><br>
	<h1 align="center">QnA!!!</h1> <br>

	<table width=80% border="3" align="center" bordercolor="lightgray">
		<tr height="50">
			<td align="center">No</td>
			<td align="center">Title</td>
			<td align="center">Writer</td>
			<td align="center">Date</td>
			<td align="center">View</td>
		</tr>
		
		<%
			//List list = null;
			//int num = 0;
			//for(int i=0; i<list.size(); i++) {
			//	NoticeVO vo = (NoticeVO)list.get(i);
			//}
		%>
		
		<tr height="30">
			<td align="center" width="50"></td>
			<td align="center" width="300"></td>
			<td align="center" width="50"></td>
			<td align="center" width="70"></td>
			<td align="center" width="30"></td>		
		</tr>
	</table> <br>
		<table width=90%>
		<tr><td align="right">
			<input type="button" value="Write" button style="width: 55pt; height: 25pt;" 
			onClick="window.location='4_WriteForm.jsp'" />
		</td></tr>		
	</table> <br> <br>

</body>
</html>