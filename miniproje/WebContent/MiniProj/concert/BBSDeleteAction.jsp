<%@page import="java.io.PrintWriter"%>
<%@page import="ConcertBoardService.ConcertBoardVO"%>
<%@page import="ConcertBoardService.ConcertBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% 
	ConcertBoardDAO dao = new ConcertBoardDAO();
	ConcertBoardVO vo = new ConcertBoardVO();
	
	String bNum = request.getParameter("boardNum");
	int boardNum = Integer.parseInt(bNum);
	
	vo.setBoardnum(boardNum);
	
	dao.delContents(boardNum);
	
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("location.href='ConcertBoard.jsp'");
	script.println("</script>");
%>
