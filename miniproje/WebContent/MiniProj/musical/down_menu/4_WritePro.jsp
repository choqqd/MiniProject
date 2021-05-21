<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="MusicalBoardService.NoticeDAO" %>
<%@ page import="java.sql.Timestamp" %>

<jsp:useBean id="vo" class="MusicalBoardService.NoticeVO">
	<jsp:setProperty name="vo" property="*" />
</jsp:useBean>
