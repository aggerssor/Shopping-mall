<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>getProductListByCategory</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	/* document.getElementById('test')--> jQuery('#test') */
	$(document).ready(function()){
		$('#searchBtn').click(function(){
			$('#searchForm').submit();
		});
	});
	
</script>	
</head>
<body>
	<div>
	    <h1>상품목록</h1>
	    <table border="1">
	        <thead>
	            <tr>
	                <th>productCommonNo</th>
	                <th>categoryNo</th>
	                <th>productCommonName</th>
	                <th>productCommonPrice</th>
	                <th>productCommonDescription</th>
	                <th>productCommonDate</th>  
	            </tr>
	        </thead>
	        <tbody>
	            <c:forEach var="ProductCommon" items="${list}">
	                <tr>   
	                    <td>${list.productCommonNo}</td>
	                    <td>${list.categoryNo}</td>
	                    <td>${list.productCommonName}</td>
	                    <td>${list.productCommonPrice}</td>
	                    <td>${list.productCommonDescription}</td>
	                    <td>${list.productCommonDate}</td>
	                </tr>
	            </c:forEach>
	        </tbody>
	    </table>
	    <form id="searchForm" action="/product/getProductListByCategory<%-- ?categoryNo=${categoryNo --%>} method="get">
	    	<input type="hidden" value="${categoryNo}" name="categoryNo">
	    	productName검색어 : <input type="text" type="text" name="searchWord">
	    	<button id="searchBtn" type="button">검색</button>
	    </form>
	    <ul>
	        <c:if test="${currentPage > 1}">
	            <li class="previous"><a href="${pageContext.request.contextPath}/product/getProductListByCategory?currentPage=${currentPage-1}">이전</a></li>
	        </c:if>
	        <c:if test="${currentPage < lastPage}">
	            <li class="next"><a href="${pageContext.request.contextPath}/product/getProductListByCategory?currentPage=${currentPage+1}">다음</a></li>
	        </c:if>
	    </ul>
	</div>
</body>
</html>