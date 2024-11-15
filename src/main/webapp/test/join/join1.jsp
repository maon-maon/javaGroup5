<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>회원가입</title>
  <jsp:include page="/include/bs4.jsp"/>
  <style>
  	<jsp:include page="/include/sidebarStyle.jsp"/>
  	
	</style>
</head>
<body>
	<!-- Sidebar -->
	<jsp:include page="/include/hd.jsp"/>

	<!-- 본문 시작-->
	<div id="main">
		<!-- 헤더 -->
		<div class="w3-container">
			<jsp:include page="/include/hd.jsp"/>
	  </div>
		
		<!-- 본문 내용 -->
		<div class="container">
			<h3>당신의 메모수첩을 만들어 보세요</h3>
			<form name="join" method="post" action="JoinOk.me">
				</form>
		</div>
		
		<!-- footer -->
		<div id="footer">
			<jsp:include page="/include/ft.jsp"/>
		</div>
	</div>
	<!-- 본문 끝 -->
  
</body>
</html>