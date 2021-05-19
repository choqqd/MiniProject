<%@page import="java.io.PrintWriter"%>
<%@page import="ConcertBoardService.ConcertBoardDAO"%>
<%@page import="ConcertBoardService.ConcertBoardVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
    request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Gaze In Daegu :: Edit</title>
</head>
<body>
	<%
		ConcertBoardDAO dao = new ConcertBoardDAO();
		ConcertBoardVO vo = new ConcertBoardVO();
		
		if(request.getMethod().equals("POST")){
			String bNum = request.getParameter("boardNum");
			int boardNum = Integer.parseInt(bNum);
			String name = request.getParameter("name");
			String title = request.getParameter("title");
			String contents = request.getParameter("contents");
			
			// DB에 입력
			vo.setMemberName(name);
			vo.setTitle(title);
			vo.setContents(contents);
			vo.setBoardnum(boardNum);
			
			dao.editContents(vo);
			
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href='ConcertBoard.jsp'");
			script.println("</script>");
		}
		
	%>
</body>
</html>