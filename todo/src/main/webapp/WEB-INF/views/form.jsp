<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>
<h2 class="text-center">할일 등록</h2>
<form name="form1" method="post" action="<%=request.getContextPath()%>/insert.do">
	<input type="text" name="title" placeholder="제목" required="required">
	<br>
	<textarea rows="5" cols="60" name="description" required="required"placeholder="내용"></textarea>
	<br>
	우선순위 :
	<input type="radio" name="priority" value="1"> High
	<input type="radio" name="priority" value="2"> Medium
	<input type="radio" name="priority" value="3" checked> Low
	<br>
	마감일자 :
	<input type="date" name="target_date" value="<fmt:formatDate value="<%=new java.util.Date() %>" pattern="yyyy-MM-dd"/>">
	<br>
	<input type="submit" value="등록">
	<input type="button" value="목록" onclick="location.href='<%=request.getContextPath()%>/'">
</form>
</body>
</html>