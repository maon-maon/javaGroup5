<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>memberVerify.jsp</title>
   <link rel="shortcut icon" href="${ctp}/images/favicon/favicon.ico" />
  <jsp:include page="/include/bs4.jsp"/>
  <jsp:include page="/include/sidebarStyle.jsp"/>
  <style>
  	
	</style>
	<script>
	 'use strict'
	 
		function aPwdChangeCheck() {
			let aPwd = aPwdChangeForm.aPwd.value;
			$.ajax({
				type : "post",
				url : "PwdChangeCheck.me",
				data : {aPwd : aPwd},
				success: function(res) {
					if(res != "0") {
						aPwdChangeForm.submit();
					}
					else {
						alert("비밀번호를 다시 확인하여 주세요");
					}
				} ,
				error: function() {
					alert("전송오류");
				} 
			});
		}
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
			<div>회원 정보 수정을 위해 본인이증이 필요합니다.</div>
			<br/>
			<form name="aPwdChangeForm" method="post" action="MemberUpdate.me">
				<label for="aPwd" class="form-label">비밀번호를 입력해주세요</label>
	     	<div class="input-group mb-1">
	        <input type="password" name="aPwd" id="aPwd" placeholder="현재 사용중인 비밀번호를 입력해주세요" style="width: 50%" />
	      	<div class="input-group-append">
	        	<input type="button" name="aMidBtn" value="확인" onclick="aPwdChangeCheck()" class="btn btn-secondary">
	      	</div>
	     	</div>
     	</form>
		</div>
		
		<!-- footer -->
		<div id="footer">
			<jsp:include page="/include/ft.jsp"/>
		</div>
	</div>
	<!-- 본문 끝 -->
</body>
</html>