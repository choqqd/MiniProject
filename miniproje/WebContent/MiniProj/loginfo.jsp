<%@page import="Common.LoginOutDAO"%>
<%@page import="projectVO.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String userid = request.getParameter("userId");
	String userPwd = request.getParameter("userPwd");
	
	MemberVO vo = new MemberVO();
	LoginOutDAO dao = new LoginOutDAO();
	
	dao.login(userid, userPwd);
%>
</body>
</html>