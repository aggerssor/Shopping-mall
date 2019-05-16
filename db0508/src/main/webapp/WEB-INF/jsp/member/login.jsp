<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
</head>
<body>
	<h1>memberLogin</h1>
	<form action = "${pageContext.request.contextPath}/member/login" method = "post" >
		<table border = '1'>
			<tr>
				<th>ID</th>
				<td><input type = "text" name = "memberId"></td>
			</tr>
			<tr>
				<th>PW</th>
				<td><input type = "password" name = "memberPw"></td>
			</tr>
			<tr>
				<th>확인</th>
				<td><input type = "submit" value="로그인"></td>
			</tr>
		</table>
	</form>
</body>
</html>