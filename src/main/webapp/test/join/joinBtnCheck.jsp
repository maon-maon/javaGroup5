<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>joinBtnCheck.jsp</title>
  <jsp:include page="/include/bs4.jsp"/>
</head>
<body>
<p><br/></p>
<div class="container">
	<h3>아이디 검색결과</h3>
	<hr/>
	<div id="demo"></div>
	<hr/>
	<p><input type="button" value="창닫기" onclick="winClose()"/></p>
</div>
<p><br/></p>
</html>