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
<div>
  <jsp:include page="/include/header.jsp"/>
</div>
  <jsp:include page="/include/sidebar.jsp"/>

<div class="container">



	<h3>당신의 메모수첩을 만들어 보세요</h3>
	<form name="join" method="post" action="">
	
	</form>
</div>
<p><br/></p>
  <jsp:include page="/include/footer.jsp"/>
</body>
</html>