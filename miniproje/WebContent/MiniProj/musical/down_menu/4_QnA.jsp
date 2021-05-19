<%@page import="MusicalBoardServlce.NoticeDAO"%>
<%@page import="java.util.List"%>
<%@page import="MusicalBoardServlce.NoticeVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<br><br>
	<h1 align="center">QnA!!!</h1> <br>

	<table width=80% border="3" align="center" bordercolor="lightgray">
		<tr height="50">
			<td align="center">No</td>
			<td align="center">Title</td>
			<td align="center">Writer</td>
			<td align="center">Date</td>
			<td align="center">View</td>
		</tr>
		
		<%
			//List list = null;
			//int num = 0;
			//for(int i=0; i<list.size(); i++) {
			//	NoticeVO vo = (NoticeVO)list.get(i);
			//}
		%>
		
		<tr height="30">
			<td align="center" width="50"></td>
			<td align="center" width="300"></td>
			<td align="center" width="50"></td>
			<td align="center" width="70"></td>
			<td align="center" width="30"></td>		
		</tr>
	</table> <br>
		<table width=90%>
		<tr><td align="right">
			<input type="button" value="Write" button style="width: 55pt; height: 25pt;" 
			onClick="window.location='4_WriteForm.jsp'" />
		</td></tr>		
	</table>

</body>
</html>