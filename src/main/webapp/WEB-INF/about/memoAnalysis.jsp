<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>memoAnalysis.jsp</title>
  <link rel="shortcut icon" href="${ctp}/images/favicon/favicon.ico" />
  <link rel="stylesheet" href="style.css">
  <jsp:include page="/include/bs4.jsp"/>
  <jsp:include page="/include/sidebarStyle.jsp"/>
  <style>
  	.container {
    width: 80%;
    margin: 0 auto;
		}
		
		.section {
		    border: 1px solid #ccc;
		    padding: 20px;
		    margin-bottom: 20px;
		}
		html, body {
		    height: 100%;
		    margin: 0;
		}
		#main {
		    min-height: calc(100% - 60px); /* footer 높이를 고려하여 조절 */
		}
		
		#footer {
		    position: absolute;
		    bottom: 0;
		    width: 100%;
		}
	</style>
	<script>
	
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
			--
			<div class="container">
        <div class="section">
            <label for="profile">프로필 이미지</label>
            <input type="file" id="profile">
        </div>
        <div class="section">
            <label for="info1">정보 입력 1</label>
            <input type="text" id="info1">
            <label for="info2">정보 입력 2</label>
            <input type="text" id="info2">
            <label for="info3">정보 입력 3</label>
            <input type="text" id="info3">
        </div>
        <div class="section">
            <label for="info4">정보 입력 4</label>
            <input type="text" id="info4">
            <label for="info5">정보 입력 5</label>
            <input type="text" id="info5">
        </div>
    </div>
			--
		</div>
		
		<!-- footer -->
		<div id="footer">
			<jsp:include page="/include/ft.jsp"/>
		</div>
	</div>
	<!-- 본문 끝 -->
</body>
</html>