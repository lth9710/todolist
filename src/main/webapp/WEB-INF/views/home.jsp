<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>ToDoList</title>
</head>
<body>
<h1>
	해야할일 리스트
	<input type="button" value="일정등록" onclick="location.href='http://localhost:8080/list/register'"  >
</h1>

<%-- <c:forEach items="${lists }" var="dto">

</c:forEach>
 --%>
</body>
</html>
