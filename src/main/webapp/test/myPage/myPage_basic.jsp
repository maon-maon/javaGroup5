<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>메모수첩myPage.jsp</title>
  <jsp:include page="/include/bs4.jsp"/>
</head>
<body>
  <!-- header -->
	<div class="header">
		<jsp:include page="/include/hd.jsp"/>
	</div>
	<!-- 사이드바 -->
	<aside class="side-bar">
  <section class="side-bar__icon-box">
    <section class="side-bar__icon-1">
      <div></div>
      <div></div>
      <div></div>
    </section>
  </section>
  <ul>
    <li>
      <a href="#"><i class="fa-solid fa-cat"></i> menu1</a>
      <ul>
        <li><a href="#">text1</a></li>
        <li><a href="#">text2</a></li>
        <li><a href="#">text3</a></li>
        <li><a href="#">text4</a></li>
      </ul>
    </li>
    <li>
      <a href="#">menu2</a>
      <ul>
        <li><a href="#">text1</a></li>
        <li><a href="#">text2</a></li>
        <li><a href="#">text3</a></li>
        <li><a href="#">text4</a></li>
      </ul>
    </li>
    <li>
      <a href="#">menu3</a>
      <ul>
        <li><a href="#">text1</a></li>
        <li><a href="#">text2</a></li>
        <li><a href="#">text3</a></li>
        <li><a href="#">text4</a></li>
      </ul>
    </li>
    <li>
      <a href="#">menu4</a>
      <ul>
        <li><a href="#">text1</a></li>
        <li><a href="#">text2</a></li>
        <li><a href="#">text3</a></li>
        <li><a href="#">text4</a></li>
      </ul>
    </li>
  </ul>
</aside>

	</div>
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