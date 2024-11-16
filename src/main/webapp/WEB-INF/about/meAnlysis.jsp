<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>MeAnlysis.jsp</title>
  <jsp:include page="/include/bs4.jsp"/>
  <link rel="shortcut icon" href="${ctp}/images/favicon/favicon.ico" />
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
		<!-- 선호도 분류표 -->
		<div>원하는 분류응 선택해주세요</div>
		<!-- 작성 리스트 출력 -->
		<div>분류 하위 목록 선택</div>
		<div>선호도체크</div>
	</div>
	<!-- footer -->
	<div id="footer">
		<jsp:include page="/include/ft.jsp"/>
	</div>
</body>
</html>