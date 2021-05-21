<%@page import="Common.LoginOutDAO"%>
<%@page import="projectVO.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<%
	String userid = request.getParameter("userId");
	String userPwd = request.getParameter("userPwd");
	
	MemberVO vo = new MemberVO();
	LoginOutDAO dao = new LoginOutDAO();
	
	if(request.getMethod().equals("POST")){
		vo = dao.login(userid, userPwd);
		if(vo.getMember_Id()!=null && vo.getMember_Pwd()!=null && vo.getMember_Id().equals(userid) && vo.getMember_Pwd().equals(userPwd)){
			session.setAttribute("id", vo.getMember_Id());
			session.setAttribute("name", vo.getMember_Name());
			session.setAttribute("email", vo.getMember_Email());
			session.setAttribute("address", vo.getMember_Address());
			session.setAttribute("tel", vo.getMember_Tel());
			session.setAttribute("pass", vo.getMember_Pwd());
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request,response);
		}else{
		
		}
	//get방식- 로그아웃
	}else{
		session.invalidate();
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request,response);
	}
%>
</body>
</html>