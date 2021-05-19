<%@page import="java.io.PrintWriter"%>
<%@page import="TheaterBoardService.TheaterBoardDAO"%>
<%@page import="TheaterBoardService.TheaterBoardVO"%>
<%@page import="TheaterBoardService.TheaterVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("UTF-8");
TheaterBoardVO vo = new TheaterBoardVO();
TheaterBoardDAO dao = new TheaterBoardDAO();

if (request.getMethod().equals("POST")) {
	String name = request.getParameter("memberName");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	int hit = 1;
	vo.setMemberName(name);
	vo.setBoardTitle(title);
	vo.setBoardContent(content);
	vo.setBoardHit(hit);

	dao.insertBoard(vo);
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('글쓰기 성공')");
	script.println("location.href='theaterBoard.jsp'");
	script.println("</script>");
}
%>