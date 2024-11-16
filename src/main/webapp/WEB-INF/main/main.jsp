<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>{About_Me}.Main</title>
  <jsp:include page="/include/bs4.jsp"/>
  <link rel="shortcut icon" href="${ctp}/images/favicon/favicon.ico" />
  <style>
  	body {
  		margin: 0 auto;
		  padding: 20px;
		  max-width: 1200px;
		  background-color: #E6E6FA;
  	}
  	
  	/* 메인화면 */
  	.input-group {
  		display: grid;
   		place-items: center;
		}
		#login-group {
			width: 600px;
			margin: 0 auto;
	    text-align: left;
		}
		form {
			width: 100%;
		}		
	</style>
	<script>
		'use strict';
		
		//if(${cAmid} != null) $("#rememberMid").prop("checked", true);
		
		// 아이디저장 체크
		function rememberEmailCheck() {
			let ans = confirm("공용 장소에서 저장하시면 개인정보가 유출될 수 있으니 주의하시기 바랍니다. \n저장하시겠습니까?");
			//alert("let mid = ans    "+ans);
			if(!ans) $("#rememberMid").prop("checked", ans);
			else {
				("#rememberMid").prop("checked", ans);
				loginForm.rememberMid.value = 'on'
			}
		}
		
		// 로그인 체크
		function loginCheck() {
			let aMid = document.getElementById("aMid").value;
			let aPwd = document.getElementById("aPwd").value;
			//alert("let aMid = aMid    "+aMid);
			
			if(aMid == "") {
				alert("아이디를 입력하세요");
				$("#aMid").focus();
			}
			else if(aPwd == "") {
				alert("비밀번호를 입력하세요");
				$("#aPwd").focus();
			}
			else  {
				//location.href="LoginOk.me";
				//loginForm.submit();
				$("#loginForm").submit();
			}
		}
	
	</script>
</head>
<body>
	<!-- header -->
	<div class="header">
		<jsp:include page="/include/hd.jsp"/>
	</div>
	
	<!-- 메인페이지 -->
	<div class="container" >
		<div class="input-group">
		 	<div class="input-group-prepend">
			 	<a href="http://192.168.50.52:9090/javaGroupJ5">
			 		<img src="${ctp}/images/logo/na5.png" alt="어바웃로고">
			 	</a>
			 	<div id="login-group" class="input-group-append">
			 		<form name="loginForm" id="loginForm" method="post" action="LoginOk.me">
						<label for="email">이메일입력</label><br>
						<input type="text" id="aMid" name="aMid" value="${cAmid}" class="form-control mb-2" required autofocus placeholder="아이디를 이메일형식으로 입력하세요" /><br>
						<label for="password">비밀번호입력</label><br>
						<input type="password" id="aPwd" name="aPwd" class="form-control mb-2" required placeholder="비밀번호를 입력하세요"/><br>
						<div class="row">
							<div class="col"><button type="button" onclick="loginCheck()" class="btn btn-success  mr-2" >로그인</button></div>
							<div class="col"><button type="button" onclick="location.href='Join.me'" class="btn btn-primary  mr-4" >회원가입</button></div>
						</div>
						<span><a href="#">아이디찾기버튼/비밀번호찾기버튼</a></span><br>
						<input type="checkbox" id="rememberMid" name="rememberMid" onclick="javascript:rememberEmailCheck()">
						<label for="rememberMid">아이디저장</label>
			 		</form>
			 	</div>
		 	</div>
		</div>
	</div>
	<!-- footer -->
	<div id="footer">
		<jsp:include page="/include/ft.jsp"/>
	</div>
</body>
</html>