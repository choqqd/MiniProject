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
	
	vo = dao.login(userid, userPwd);
	if(vo!=null&&vo.getMember_Id().equals(userid)){
		request.setAttribute("mem", vo);
		RequestDispatcher rd = request.getRequestDispatcher("index.html");
		rd.forward(request,response);
	}else{
		RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		rd.forward(request,response);
	}
%>
</body>
</html>