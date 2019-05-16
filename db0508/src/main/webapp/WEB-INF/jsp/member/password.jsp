<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>password.jsp</title>
</head>
<body>
	<c:if test="${loginMember != null}">
		<form action = "${pageContext.request.contextPath}/member/password" method = "post">
			<input type = "hidden" name ="memberId" value= "${loginMember.memberId}">
				현재 비밀번호 : <input type = "password" name = "memberPw"><br>
				새 비밀번호 : <input type = "password" name = "newPassword"><br>
				비밀번호 확인 : <input type = "password" name = "newPasswordcheak"><br>
			<input type = "submit" value = "확인">
		</form>
	</c:if>
</body>
</html>