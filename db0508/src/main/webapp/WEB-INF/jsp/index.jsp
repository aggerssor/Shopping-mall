<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
</head>
<body>
	<ul>
		<li>
			<c:if test="${loginMember == null}">
			<a href="${pageContext.request.contextPath}/addMember">회원등록</a>
			<a href="${pageContext.request.contextPath}/member/login">로그인</a>
			</c:if>
			
			<c:if test="${loginMember != null}">
			<a href="/member/logout">로그아웃</a>		
			${loginMember.memberName} 로그인했습니다			
			<a href="${pageContext.request.contextPath}/member/information?memberName=${loginMember.memberName}">개인정보</a>
			</c:if>
		</li>
	</ul>
</body>
</html>