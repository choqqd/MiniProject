<%@page import="java.io.PrintWriter"%>
<%@page import="TheaterBoardService.TheaterBoardVO"%>
<%@page import="TheaterBoardService.TheaterBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	TheaterBoardDAO dao = new TheaterBoardDAO();
	TheaterBoardVO vo = new TheaterBoardVO();

	String number = request.getParameter("boardNum");
	String title = request.getParameter("Title");
	String content = request.getParameter("Content");
	
	
	vo.setBoardNum(Integer.parseInt(number));
	vo.setBoardContent(content);
	vo.setBoardTitle(title);
	dao.updateBoard(vo);

	PrintWriter pw = response.getWriter();
	pw.print("<script>");
	pw.println("location.href='theaterBoard.jsp'");
	pw.println("</script>");
%>