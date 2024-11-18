<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>메모수첩myPage.jsp</title>
  <link rel="shortcut icon" href="${ctp}/images/favicon/favicon.ico" />
  <jsp:include page="/include/bs4.jsp"/>
  <jsp:include page="/include/sidebarStyle.jsp"/>
  <style>
		.grid-container {
		  display: grid;
		  grid-template-columns: repeat(3, 1fr); /* 3개의 열로 나누고, 각 열의 너비를 동일하게 설정 */
		  grid-gap: 10px; /* 각 셀 사이의 간격 */
		}
			
		.grid-item {
		  border: 1px solid black;
		  padding: 10px;
		}
	</style>
	<script>
	
	</script>
	<style>
		.grid-container {
		  display: grid;
		  grid-template-columns: auto;
		  grid-gap: 10px; /* Gap between items */
		}
		
		.grid-item {
		  padding: 10px;
		  border: 1px solid #ddd; /* Optional border for items */
		}
		
		.radio-container {
		  display: flex;
		  align-items: center; /* Align radio buttons vertically */
		  margin-bottom: 5px; /* Spacing between radio options */
		}
		
		.form-label {
		  margin-left: 5px; /* Spacing between label and radio button */
		}
	</style>
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
			<!-- 회원정보 수정 버튼 -->			
			<!-- 구글드라이브 백업 -->
			<!-- 페이지모드 변경버튼 -->
			<!-- 운영진 문의 -->
			
			<div class="grid-container">
			  <div class="grid-item">
			    <div>페이지 변경모드</div>
	          <input type="radio" name="mode" id="light" value="light" class="btn-check" checked/><label for="light" class="form-label mr-3">밝음</label>
	          <input type="radio" name="mode" id="dark" value="dark" class="btn-check" /><label for="dark" class="form-label">어두움</label>
					<div class="input-group-append">
						<button onclick="#" class="btn btn-dark">변경</button>
					</div>
			  </div>
			  <div class="grid-item">
			    <div>구글드라이브</div>
			    <button class="btn btn-dark">백업</button>
			  </div>
			  <div class="grid-item">
			    <div>회원정보</div>
			    <button class="btn btn-dark" onclick="location.href='MemberVerify.me'">수정</button>
			  </div>
			  <div class="grid-item">
			    <div>운영진</div>
			    <button class="btn btn-dark">문의</button>
			  </div>
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