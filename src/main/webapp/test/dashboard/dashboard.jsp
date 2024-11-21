<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*" %>
<%@ page import="common.WeekCalendar" %>
<%
    WeekCalendar calendar = new WeekCalendar();
    String[][] weekData = calendar.createCalendar(2023, 11, 20); // 예시 날짜
%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>.jsp</title>
  <jsp:include page="/include/bs4.jsp"/>
</head>
<body>
  <jsp:include page="/include/header.jsp"/>
  <jsp:include page="/include/nav.jsp"/>
<p><br/></p>
<div class="container">
	<table border="1">
    <tr>
        <th>일</th>
        <th>월</th>
        <th>화</th>
        <th>수</th>
        <th>목</th>
        <th>금</th>
        <th>토</th>
    </tr>
    <% for (int i = 0; i < 7; i++) { %>
        <tr>
            <td><%= weekData[i][0] %></td>
            <td><%= weekData[i][1] %></td>
        </tr>
    <% } %>
</table>
</div>
<p><br/></p>
  <jsp:include page="/include/footer.jsp"/>
</body>
</html>