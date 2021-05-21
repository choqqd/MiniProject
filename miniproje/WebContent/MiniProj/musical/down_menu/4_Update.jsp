<%@page import="java.io.PrintWriter"%>
<%@page import="MusicalBoardService.NoticeVO"%>
<%@page import="MusicalBoardService.NoticeDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<%
	request.setCharacterEncoding("utf-8");
	NoticeDAO dao = new NoticeDAO();
	NoticeVO vo = new NoticeVO();

	if(request.getMethod().equals("POST")) {
		String id = (String) session.getAttribute("id");
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		
		vo.setMember_Id(id);
		vo.setNotice_Title(title);
		vo.setNotice_Contents(contents);
		
		dao.insertNotice(vo);	
		
	}
	
	
%>