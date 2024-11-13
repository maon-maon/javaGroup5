<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>bookMark.jsp</title>
  <jsp:include page="/include/bs4.jsp"/>
</head>
<body>
  <!-- header -->
	<div class="header">
		<jsp:include page="/include/hd.jsp"/>
	</div>
	<!-- 사이드바 -->
	<jsp:include page="/include/sidebar.jsp"/>
	<!-- 본문 내용 -->
	<div class="container">
		
		<!-- 책갈피 모아보기 -->
		<div>책갈피</div>
	</div>
	<!-- footer -->
	<div id="footer">
		<jsp:include page="/include/ft.jsp"/>
	</div>
</body>
</html>