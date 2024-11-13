<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="http://localhost:9090/${ctp}/images/favicon/myicon.ico" />
  <title> { Aobut_Me } </title>
	<style>
    html, body {
      height: 100%;
      margin: 0;
      padding: 0;
    }
    body {
      display: grid;
      grid-template-columns: 1fr 2fr; /* 좌측 콘테이너, 우측 콘테이너 비율 조정 */
      grid-gap: 10px; /* 콘테이너 간 간격 */
      padding: 10px 100px; /* 전체 패딩 */
      font-family: sans-serif;
    }

    .container {
      border: 1px solid #000;
      padding: 20px;
    }

    #left-container {
         /* 필요에 따라 스타일 추가 */
    }

    #main-container {

    }

    #logo {
      text-align: center; /* 로고 가운데 정렬 */
      margin-bottom: 20px;
    }

    #login-form {
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
  <div id="left-container" class="container">
      <!-- 좌측 콘테이너 내용 추가 -->
      
  </div>
  <div id="main-container" class="container">
    <!-- 메인 콘테이너 내용 추가 -->
    <div id="logo">로고위치</div>
    <div id="login-form">
      <label for="email">이메일입력</label><br>
      <input type="text" id="email" name="email"><br>
      <label for="password">비밀번호입력</label><br>
      <input type="password" id="password" name="password"><br>
      <button type="button">로그인버튼</button><br>
      <span>아이디찾기버튼/비밀번호찾기버튼</span><br>
      <input type="checkbox" id="remember-me" name="remember-me">
      <label for="remember-me">아이디저장체크박스</label>
    </div>
    <button id="signup-button">회원가입버튼</button>
  </div>
<p><br/></p>
  <jsp:include page="/include/footer.jsp"/>
</body>
</html>