<%@page import="java.io.PrintWriter"%>
<%@page import="ConcertBoardService.ConcertBoardDAO"%>
<%@page import="ConcertBoardService.ConcertBoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	ConcertBoardDAO dao = new ConcertBoardDAO();
	ConcertBoardVO vo = new ConcertBoardVO();
	
	if(request.getMethod().equals("POST")){
		// 파라미터 받아서 저장
		String id = (String) session.getAttribute("id");	// session정보 값 자동 입력.
		String name = (String) session.getAttribute("name");	// session 정보 값 자동 입력.
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		
		// DB에 입력처리
		vo.setMemberId(id);
		vo.setMemberName(name);
		vo.setTitle(title);
		vo.setContents(contents);
		
		dao.insertContents(vo);
		
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("window.alert('게시글이 업로드되었습니다.')");
		script.println("location.href='ConcertBoard.jsp'");
		script.println("</script>");
	}
	
%>