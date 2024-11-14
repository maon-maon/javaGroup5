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
  <style>
		#openNav { background-color: #E6E6FA;}
  </style>
</head>
<body>
  
  
  <div class="w3-sidebar w3-bar-block w3-light-grey w3-card" style="width:25%">
	  <a href="#" class="w3-bar-item w3-button">Link 1</a>
	  <a href="#" class="w3-bar-item w3-button">Link 2</a>
	  <a href="#" class="w3-bar-item w3-button">Link 3</a>
	  <a href="#" class="w3-bar-item w3-button">Link 4</a>
	  <a href="#" class="w3-bar-item w3-button">Link 5</a>
	</div>
	
	<div style="margin-left:25%">
	
	<header class="w3-container">
		<jsp:include page="/include/hd.jsp"/>
	</header>
	
	
	
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
	
	
	<script>
		function w3_open() {
		  document.getElementById("main").style.marginLeft = "25%";
		  document.getElementById("mySidebar").style.width = "25%";
		  document.getElementById("mySidebar").style.display = "block";
		  document.getElementById("openNav").style.display = 'none';
		}
		function w3_close() {
		  document.getElementById("main").style.marginLeft = "0%";
		  document.getElementById("mySidebar").style.display = "none";
		  document.getElementById("openNav").style.display = "inline-block";
		}
	</script>
	
</body>
</html>