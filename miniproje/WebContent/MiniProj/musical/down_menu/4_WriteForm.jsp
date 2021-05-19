<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
function check() {
	if(!document.writform.writer.value) {
		alert("작성자를 입력하시오");
		return false;
	}
	if(!document.writform.subject.value) {
		alert("제목을 입력하시오");
		return false;
	}
	if(!document.writform.content.value) {
		alert("내용을 입력하시오");
		return false;
	}
	if(!document.writform.password.value) {
		alert("비밀번호를 입력하시오");
		return false;
	}
}
</script>
</head>
<body>
<%
//int num=0, ... 입력예정!
//try {
//	if(request.getParameter("num")!=null) {
//		num = Integer.parseInt(request.getParameter());
//		num = Integer.parseInt(request.getParameter());
//		num = Integer.parseInt(request.getParameter());
//		num = Integer.parseInt(request.getParameter());
//	}
//}
%>
<br><br>
<h1 align="center">Write</h1>
<form method="post" name="writeform" action="writePro.jsp" onsubmit="return check()">
	<input type="hidden" name="name" value="<%%>">
	<input type="hidden" name="title" value="<%%>">
	<input type="hidden" name="contents" value="<%%>">
	<input type="hidden" name="password" value="<%%>">

	<table width=80% border="3" bordercolor="lightgray" align="center">
		<tr height="30">
			<td width=15% align="center"> Writer </td>
			<td>&nbsp;<input type="text" size="20" name="writer"></td>
		</tr>
		<tr height="30">
			<td width=15% align="center"> Title </td>
			<td>&nbsp;<input type="text" size="50" name="title"></td>
		</tr>
		<tr height="30">
			<td width=15% align="center"> Content </td>
			<td>&nbsp;<textarea name="contents" rows="30" cols="112"></textarea></td>
		</tr>
		<tr height="30">
			<td width=15% align="center"> password </td>
			<td>&nbsp;<input type="password" size="20" name="pwd"></td>
		</tr>
		<tr height="40">
			<td colspan=2 align="center">
				<input type="submit" value="Save">&nbsp;&nbsp;
				<input type="reset" value="Reset">&nbsp;&nbsp;
				<input type="button" value="Go Back" onClick="window.location='4_QnA.jsp'" />
			</td>
		</tr>
	</table>
</form>


</body>
</html>