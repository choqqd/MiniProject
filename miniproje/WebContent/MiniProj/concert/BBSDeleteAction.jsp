<%@page import="java.io.PrintWriter"%>
<%@page import="ConcertBoardService.ConcertBoardVO"%>
<%@page import="ConcertBoardService.ConcertBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% 
	//로그인 정보 받아오기
	String id = null;
	if(session.getAttribute("id") != null){
		id = (String) session.getAttribute("id");
	}
	// 로그인이 되지 않았다면
	if(id == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("window.alert('로그인이 필요합니다!')");
		script.println("location.href='../login.jsp'");
		script.println("</script>");
	}
	
	// 게시글 번호를 받아왔는지 확인
	int boardNum = 0;
	if(request.getParameter("boardNum") != null){
		boardNum = Integer.parseInt(request.getParameter("boardNum"));
	}
	if(boardNum == 0){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("window.alert('유효하지 않은 글입니다.')");
		script.println("history.go(-1)"); // 뒤로 가기
		script.println("</script>");
	}
	
	String mId = request.getParameter("memberId");
	
	if(id.equals(mId)){

		ConcertBoardDAO dao = new ConcertBoardDAO();
		ConcertBoardVO vo = new ConcertBoardVO();
		
		vo.setBoardnum(boardNum);
		
		dao.delContents(boardNum);
		
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href='ConcertBoard.jsp'");
		script.println("</script>");
	} else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("window.alert('삭제권한이 없습니다.')");
		script.println("history.go(-1)");
		script.println("</script>");
	}
%>
