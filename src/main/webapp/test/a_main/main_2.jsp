<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>{About_Me}.Main</title>
  <jsp:include page="/include/bs4.jsp"/>
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
		#loginForm {
			width: 600px;
			margin: 0 auto;
	    text-align: left;
		}
		form {
			width: 100%;
		}		
		
  	
  	/* 사이드바 */
		.sidenav {
		  height: 100%;
		  width: 160px;
		  position: fixed;
		  top: 0;
		  left: 0;
		  background-color: #F3F3F3;
		  overflow-x: hidden;
		  padding-top: 20px;
		}
		.sidenav a {
		  padding: 6px 8px 6px 16px;
		  text-decoration: none;
		  font-size: 25px;
		  color: #818181;
		  display: block;
		}
		.sidenav a:hover {
		  color: #f1f1f1;
		}
		
	
		@media screen and (max-height: 450px) {
		  .sidenav {padding-top: 15px;}
		  .sidenav a {font-size: 18px;}
		}
	</style>
	<script>
		'use strict';
		
		// 아이디저장 체크
		function rememberEmailCheck() {
			let ans = confirm("공용 장소에서 저장하시면 개인정보가 유출될 수 있으니 주의하시기 바랍니다. \n저장하시겠습니까?");
			alert("let mid = ans    "+ans);
			if(!ans) $("#rememberMid").prop("checked", ans);
			else $("#rememberMid").prop("checked", ans);
		}
		
		// 로그인 체크
		function loginCheck() {
			let mid = document.getElementById("mid").value;
			//alert("let mid = mid    "+mid);
			
			if(mid == "") alert("아이디를 입력하세요"); 
			else  {
				location.href="Login.me";
				//loginForm.submit();
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
			 	<div id="loginForm" class="input-group-append">
			 		<form name="loginForm" method="post" action="Login.me">
						<label for="email">이메일입력</label><br>
						<input type="text" id="mid" name="mid" class="form-control mb-2" required autofocus placeholder="아이디를 이메일형식으로 입력하세요" /><br>
						<label for="password">비밀번호입력</label><br>
						<input type="password" id="pwd" name="pwd" class="form-control mb-2" required placeholder="비밀번호를 입력하세요"/><br>
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