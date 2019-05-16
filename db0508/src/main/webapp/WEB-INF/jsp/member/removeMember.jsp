<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>removeMember.jsp</title>
</head>
<body>
	
	<form action = "/member/removeMember" method ="post">
	<input type = "hidden" name = "memberId" value="${loginMember.memberId}">
	비밀번호 확인 : <input type = "password" name = "memberPw">
	<input type = "submit" value = "탈퇴">
	</form>
</body>
</html>