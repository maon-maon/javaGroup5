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
		body, ul, li {
		 margin: 0;
		 padding: 0;
		 list-style: none;
		}
		ul a {
			color: inherit;
			text-decoration: none;
		}
		.sidebar ul ul {
			display: none;
		}
		body {
  		margin: 0 auto;
  		height: 5000px;
		  background-color: #E6E6FA;
  	}
  	:root {
		  --side-bar-width: 270px;
		  --side-bar-height: 90vh;
		}
		.sidebar {
			position: fixed;
			background-color: black;
			width: var(--side-bar-width);
			min-height: var(--side-bar-height);
			margin-top: calc((100vh - var(--side-bar-height))/2)
		}
		.sidebar ul li a {
			display: block;
			color: white;
			padding: 20px, 50px, 20px, 0;
		}
  
  </style>
</head>
<body>
  <!-- header -->
	<div class="header">
		<jsp:include page="/include/hd.jsp"/>
	</div>
	<!-- 사이드바 -->
	<aside class="sidebar">
	  <section class="side-bar__icon-box">
	    <section class="side-bar__icon-1">
	      <div></div>
	      <div></div>
	      <div></div>
	    </section>
	  </section>
	  <ul>
	    <li>
	      <a href="#"><i class="fa-solid fa-cat">끄적이기</i></a>
	    </li>
	    <li>
	      <a href="#">나에 대하여</a>
	    </li>
	    <li>
	      <a href="#">메모수첩</a>
	      <ul>
	        <li><a href="#">전체보기</a></li>
	        <li><a href="#">분류별</a></li>
	        <li><a href="#">날짜별</a></li>
	        <li><a href="#">공개한것</a></li>
	        <li><a href="#">사진보기</a></li>
	      </ul>
	    </li>
	    <li>
	      <a href="#">타인의메모</a>
	    </li>
	  </ul>
	</aside>
	<!-- 사이드바 -->
	
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