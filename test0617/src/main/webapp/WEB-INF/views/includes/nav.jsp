<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300,400,500,700,900&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/nav.css">
</head>
<body>

	<nav>
		<h1></h1>
		<ul>
			<li>COOKIT소개</li>
			<li>COOKIT메뉴</li>
			<li>리뷰</li>
			<li>이벤트</li>
			<li>MY쿡킷</li>
		</ul>
		<ul>
		<c:choose>
		<c:when test="${adminCode==1 }">
			<li><a href="#"><span>장바구니</span></a></li>
		</c:when>
		<c:otherwise>
			<li><a href="#"><span>관리자페이지</span></a></li>
		</c:otherwise>
		</c:choose>
		</ul>

	</nav>

</body>
</html>