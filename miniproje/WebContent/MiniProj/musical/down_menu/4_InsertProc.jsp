<%@page import="java.io.PrintWriter"%>
<%@page import="MusicalBoardService.NoticeDAO"%>
<%@page import="MusicalBoardService.NoticeVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
request.setCharacterEncoding("UTF-8");
NoticeVO vo = new NoticeVO();
NoticeDAO dao = new NoticeDAO();

if (request.getMethod().equals("POST")) {
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	String title = request.getParameter("title");
	String contents = request.getParameter("contents");
	
	vo.setMember_Id(name);
	vo.setNotice_Title(title);
	vo.setNotice_Contents(contents);
	vo.setNotice_Pwd(pwd);
	
	dao.insertNotice(vo);
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('글쓰기 성공')");
	script.println("location.href='theaterBoard.jsp'");
	script.println("</script>");
	
}

%>