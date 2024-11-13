<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>main_11.jsp</title>
  <jsp:include page="/include/bs4.jsp"/>
  <style>
	html, body {
		height: 100%;
	}
	
	body {
		display: grid;
		width: 85%;
		grid-template-rows : 10% 80% 10%; /* 헤더, 컨테이너, 푸터 높이 설정 */
		grid-template-areas:
        "header header"
        "main main"
        "footer footer";
		
		margin: 0 auto;
		font-family: sans-serif;
	}
	
	
	#footer {
		grid-area: footer;
    display: flex;
    justify-content: center;
    align-items: center;
    width: 100%;
	}
	
	.container {
		display: grid;
		grid-area: main;
		grid-template-columns: 1fr 3fr;
    border: 1px solid #000;
    padding: 20px;
	}	
	

	
	#main-container {
	}
	
	#logo {
    text-align: center; /* 로고 가운데 정렬 */
    margin-bottom: 20px;
	}
	
	#login-form {
		width: 50%;
		margin: 0 auto;
    text-align: left;
	}
	
	#login-form input[type="text"],
	#login-form input[type="password"] {
    width: 100%;
    margin-bottom: 10px;
    padding: 5px;
    box-sizing: border-box;
	}
	
	#login-form button {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    box-sizing: border-box;
	}
	
	#signup-button {
    width: 100%;
    padding: 10px;
    box-sizing: border-box;
	}
</style> 
</head>
<body>
	
		<jsp:include page="/include/header.jsp"/>
	
	
	<div id="container" class="container">
		<div id="nav">
			네비바 위치
		</div>
		<div id="login-form">
			<div id="logo">로고위치</div>
			<form name="loginForm" action="#">
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
	<div id="footer">
		<jsp:include page="/include/footer.jsp"/>
	</div>
</body>
</html>