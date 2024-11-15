<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>메모수첩myPage.jsp</title>
  <jsp:include page="/include/bs4.jsp"/>
  <jsp:include page="/include/sidebarStyle.jsp"/>
  <style>
  	
	</style>
	<script>
	
	</script>
</head>
<body>
	<!-- Sidebar -->
	<jsp:include page="/include/sidebar.jsp"/>

	<!-- 본문 시작-->
	<div id="main">
		<!-- 헤더 -->
		<div class="w3-container">
			<jsp:include page="/include/hd.jsp"/>
	  </div>
		
		
		<!-- 본문 내용 -->
		<div class="container">
			<!-- 캘린더 -->
			<div>Calendar</div>
			<!-- 최근 메모 출력 -->
			<div>MemoList</div>
		</div>
		
		<!-- footer -->
		<div id="footer">
			<jsp:include page="/include/ft.jsp"/>
		</div>
	</div>
	<!-- 본문 끝 -->
</body>
</html>