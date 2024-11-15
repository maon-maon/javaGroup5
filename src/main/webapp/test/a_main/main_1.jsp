<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>main_1.jsp</title>
  <jsp:include page="/include/bs4.jsp"/>
  <style>
  	body {
		  display: grid;
		  grid-template-rows: auto;
		  grid-template-columns: 1fr 3fr;
		  grid-template-areas:
		    "header header"
		    "left main"
		    "footer footer";
		  margin: 0 auto;
		  width: 85%;
		  height: 100%;
		}
		
		#header {
		  grid-area: header;
		  height: 100px;
		  background-color: #E4E5E6;
		}
		#footer {
		  grid-area: footer;
		  background-color: #F7EBE7;
		}
  	
  	.container {
		  background-color: #E6E6FA;
  	}
  	
		#main {
		  grid-area: main;
		  display: flex; /* 메인 영역 내에 flexbox 레이아웃 적용 */
		  justify-content: space-between; /* 메뉴바와 로고 사이에 간격 설정 */
		}
		
  	.container > div {
  		border: 1px solid black;
		  padding: 20px;
		  text-align: center;
  	}
  	
  </style>
</head>
<body>
<div id="header"><jsp:include page="/include/header.jsp"/></div>
<div class="container">
	<div id="left">메뉴바</div>
</div>
<div class="container">
  <div id="main">로고</div>
</div>
<div id="footer"><jsp:include page="/include/footer.jsp"/></div>
</body>
</html>