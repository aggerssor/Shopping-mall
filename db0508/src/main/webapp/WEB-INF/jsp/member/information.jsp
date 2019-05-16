<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>information.jsp</title>

</head>
<body>
	<h1>member information</h1>
		<a href = "${pageContext.request.contextPath}/member/password">비밀번호 수정</a>
		<a href = "${pageContext.request.contextPath}/member/removeMember">회원탈퇴</a>
	<table border="1">
		<tr>
			<th>member_no :</th>
			<td>${memberInformation.memberNo}</td>
		</tr>
		<tr>
			<th>member_id :</th>
			<td>${memberInformation.memberId}</td>
		</tr>
		<tr>
			<th>member_name :</th>
			<td>${memberInformation.memberName}</td>
		</tr>
		<tr>
			<th>수정하기:</th>
			<td><a href = "${pageContext.request.contextPath}/member/modifyMember">수정</a></td>
		</tr>
		<tr>
			<th>취소:</th>
			<td><a href = "${pageContext.request.contextPath}/">돌아가기</a></td>
		</tr>
</body>
</html>