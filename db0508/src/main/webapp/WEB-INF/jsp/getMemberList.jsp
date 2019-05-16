<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getMemberList.jsp</title>
</head>
<body>
	<h1>회원 목록</h1>
	<table border="1">
			<tr>
				<th>memberNo</th>
				<th>memberId</th>
				<th>memberName</th>
			</tr>
		<c:forEach var="member" items="${memberList}">
			<tr>
				<td>${member.memberNo}</td>
				<td>${member.memberId}</td>
				<td>${member.memberName}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>