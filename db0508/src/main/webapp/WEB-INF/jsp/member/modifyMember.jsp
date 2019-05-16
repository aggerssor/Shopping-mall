<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- bootstrap을 사용하기 위한 CDN주소 -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
 
<!-- jquery를 사용하기위한 CDN주소 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<title>MEMBER MODIFY FORM(spring mvc + mybatis 방식)</title>
</head>
<body>
	<form action = "/member/modifyMember" method = "post">
	<table border ='1'>
		<tr> 
			<th>member_id :</th>
			<td><input type = "text" name = "memberId" value = "${MEMBER.memberId}" readonly ="readonly"></td>
		</tr>
		<tr> 
			<th>member_name :</th>
			<td><input type = "text" name = "memberName" value ="${MEMBER.memberName}"></td>
		</tr>
		<tr> 
			<th>수정하기</th>
			<td><input type = "submit" value ="수정하기"></td>
		</tr>
		<tr> 
			<th>되돌아가기</th>
			<td><a href = "${pageContext.request.contextPath}/">되돌아가기</a></td>
		</tr>
	</table>
	</form>
</body>
</html>