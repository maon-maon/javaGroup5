<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>findMidPwd.jsp</title>
  <link rel="shortcut icon" href="${ctp}/images/favicon/favicon.ico" />
  <jsp:include page="/include/bs4.jsp"/>
  <jsp:include page="/include/sidebarStyle.jsp"/>
  <style>
  	
	</style>
	<script>
	'use strict';
	
		function alarm() {
			alert("본인인증에 성공하셨습니다. \n가입하신 아이디는 ㅁㅁ**@na*******입니다");
			location.href="main"
		}
	</script>
</head>
<body>
	<!-- Sidebar -->
	<jsp:include page="/include/sidebar.jsp"/>

	<!-- 본문 시작-->
	<div id="main">
		<!-- 헤더 -->
		<div class="header">
			<jsp:include page="/include/hd.jsp"/>
	  </div>
		
		
		<!-- 본문 내용 -->
		<div class="container">
			<div>아이디/비밀번호를 찾기 위해 본인인증이 필요합니다..</div>
			<br/>
			<div class="text-center">
				<button type="button" onclick="alarm()"><img alt="본인인증 이미지" src="${ctp}/images/imgData/data1.png"></button>
			</div>
		</div>
		
		<!-- footer -->
		<div id="footer">
			<jsp:include page="/include/ft.jsp"/>
		</div>
	</div>
	<!-- 본문 끝 -->
</body>
</html>