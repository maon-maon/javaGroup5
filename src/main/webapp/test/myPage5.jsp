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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
		#sideIcon, #sidebar { background-color: #E6E6FA;}
  </style>
  <script>
		function sideOpen() {
		  document.getElementById("main").style.marginLeft = "25%";
		  document.getElementById("sidebar").style.width = "25%";
		  document.getElementById("sidebar").style.display = "block";
		  document.getElementById("openNav").style.display = 'none';
		  document.getElementById("sideIcon").style.display = "none";
		}
		function sideClose() {
		  document.getElementById("main").style.marginLeft = "0%";
		  document.getElementById("sidebar").style.display = "none";
		  document.getElementById("openNav").style.display = "inline-block";
		  document.getElementById("sideIcon").style.display = "inline-block";
		}
	</script>
	
  
</head>
<body>
  
	
	
	<!-- Sidebar -->
	<div id="sidebar" class="w3-sidebar w3-bar-block  w3-card w3-animate-left" style="display:none;" >
	  <button class="w3-bar-item w3-button w3-large" onclick="sideClose()">Close &times;</button>
	  <a href="#" class="w3-bar-item w3-button">Link 1</a>
	  <a href="#" class="w3-bar-item w3-button">Link 2</a>
	  <a href="#" class="w3-bar-item w3-button">Link 3</a>
	</div>

	<div id="main">
	
	<div id="sideFold">
	  <div id="sideIcon" class="w3-sidebar w3-bar-block w3-xxlarge" style="width:70px">
	  <button id="openNav" class="w3-button w3-xlarge" onclick="sideOpen()">&#9776;</button>
		  <a href="#" class="w3-bar-item w3-button"><i class="fa fa-home"></i></a> 
		  <a href="#" class="w3-bar-item w3-button"><i class="fa fa-search"></i></a> 
		  <a href="#" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i></a> 
		  <a href="#" class="w3-bar-item w3-button"><i class="fa fa-globe"></i></a>
		  <a href="#" class="w3-bar-item w3-button"><i class="fa fa-trash"></i></a> 
		</div>
	  <div class="w3-container">
			<jsp:include page="/include/hd.jsp"/>
	  </div>
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
	
</body>
</html>