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
  	.container {
		  margin-left: 160px; 
		}
		#loginForm {
			width: 50%;
			margin: 0 auto;
	    text-align: left;
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
</head>
<body>
	<!-- header -->
	<div class="header">
		<jsp:include page="/include/hd.jsp"/>
	</div>
	<!-- 사이드바 -->
	<div class="sidenav">
		<div>
			<div class="input-group">
				<div class="input-group-prepend">
					<img src="" alt="어바웃로고">
					<div class="input-group-append"><img src="" alt="프로필이미지"></div>
				</div>
			</div>
			<br/>
			<br/>
			<div>
			  <a href="#about">새 메모</a>
			  <a href="#about">{나} 메모</a>
			  <a href="#services">메모 수첩</a>
			  <a href="#clients">타인의 메모</a>
			  <a href="#contact">책갈피</a>
			  <a href="#contact">메모 정리</a>
			</div>
		</div>
			<br/>
			<br/>
			<br/>
			<br/>
		<div>
		  <a href="#contact">공지사항</a>
		  <a href="#contact">설정</a>
		  <a href="#contact">로그아웃</a>
		</div>
	</div>
	<!-- 메인페이지 -->
	<div class="container">
	 	<div><img src="" alt="어바웃로고"></div>
	 	<br>
	 	<div id="loginForm">
	 		<form name="loginForm" action="post">
				<label for="email">이메일입력</label><br>
				<input type="text" id="email" name="email"><br>
				<label for="password">비밀번호입력</label><br>
				<input type="password" id="password" name="password"><br>
				<button type="button">로그인버튼</button><br>
				<span>아이디찾기버튼/비밀번호찾기버튼</span><br>
				<input type="checkbox" id="remember-me" name="remember-me">
				<label for="remember-me">아이디저장체크박스</label>
				<button id="signup-button">회원가입버튼</button>
	 		</form>
	 	</div>
	</div>
	<!-- footer -->
	<div id="footer">
		<jsp:include page="/include/ft.jsp"/>
	</div>
</body>
</html>