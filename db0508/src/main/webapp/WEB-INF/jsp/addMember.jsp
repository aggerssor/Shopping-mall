<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addMember.jsp</title>
</head>
<body>
	<h1>회원 등록 화면</h1>
	<form action="${pageContext.request.contextPath}/addMember" method="post">
		<table>
			<tr>
				<td>번호: </td>
				<td><input type="text" name="memberNo"></td>
			</tr>
			<tr>
				<td>아이디 : </td>
				<td><input type="text" name="memberId"></td>
			</tr>
			<tr>
				<td>비밀번호 : </td>
				<td><input type="password" name="memberPw"></td>
			</tr>
			<tr>
				<td>이름 : </td>
				<td><input type="text" name="memberName"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="확인"></td>
			</tr>
		</table>
	</form>
</body>
</html>