<%@page import="java.util.List"%>
<%@page import="projectVO.ShowVO"%>
<%@page import="MusicalBoardServlce.MusicalDAO"%>
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
		MusicalDAO dao = new MusicalDAO();
		ShowVO vo= new ShowVO();
		
		List<ShowVO> list = dao.getMusicalList();
	%>

<table>
<caption><button>공연등록</button></caption>
		<% 
		for(int i =0; i < list.size(); i++) {
		%><tr>
		<td><img width='200' src='../musical_Img/mama.jfif'></td>
		<td ><%= list.get(i).getShow_Name()%></td>
		<td><%= list.get(i).getShow_Startday()%></td>
		<td>~</td>
		<td><%= list.get(i).getShow_Endday()%></td>
		</tr><%	
		}
	%>
</table>

</body>
</html>