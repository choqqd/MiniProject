<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="TheaterBoardService.TheaterBoardDAO"%>
<%@ page import="TheaterBoardService.TheaterBoardVO" %>

<%

	TheaterBoardDAO dao = new TheaterBoardDAO();
	TheaterBoardVO vo = new TheaterBoardVO();
	
	String num = request.getParameter("boardNum");
	int boardNum = Integer.parseInt(num);
	
	vo.setBoardNum(boardNum);
	
	dao.delBoard(boardNum);
	
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("location.href='theaterBoard.jsp'");
	script.println("</script>");
	
	
	%>
