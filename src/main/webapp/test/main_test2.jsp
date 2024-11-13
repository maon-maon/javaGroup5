<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>웹사이트 레이아웃</title>
  <jsp:include page="/include/bs4.jsp"/>
  <style>
      body {
          display: flex;
          justify-content: center;
          align-items: center;
          height: 100vh;
          margin: 0;
          font-family: Arial, sans-serif;
      }
      .main-container {
          width: 800px;
          height: 600px;
          border: 1px solid black;
          display: flex;
          flex-direction: column;
          align-items: center;
          padding: 20px;
      }
      .logo {
          width: 100%;
          height: 100px;
          border: 1px solid black;
          display: flex;
          justify-content: center;
          align-items: center;
          margin-bottom: 20px;
      }
      .login-container {
          width: 100%;
          border: 1px solid black;
          padding: 20px;
      }
      .social-login {
          width: 100%;
          height: 50px;
          border: 1px solid black;
          margin-bottom: 20px;
      }
      .login-form {
          display: flex;
          flex-direction: column;
      }
      .login-form input {
          margin-bottom: 10px;
          padding: 10px;
          font-size: 14px;
      }
      .login-buttons {
          display: flex;
          justify-content: space-between;
      }
      .register-button {
          width: 100%;
          height: 50px;
          border: 1px solid black;
          display: flex;
          justify-content: center;
          align-items: center;
          margin-top: 20px;
      }
  </style>
</head>
<body>
	<jsp:include page="/include/header.jsp"/>
  <div class="main-container">
    <div class="logo">로고위치</div>
    <div class="login-container">
      <div class="social-login">구글 연동<br>카카오 연동<br>네이버 연동</div>
      <div class="login-form">
        <input type="email" placeholder="이메일 입력">
        <input type="password" placeholder="비밀번호 입력">
      </div>
      <div class="login-buttons">
        <button>아이디찾기</button>
        <button>비밀번호찾기</button>
        <button>아이디저장체크박스</button>
      </div>
    </div>
    <div class="register-button">회원가입버튼</div>
  </div>
  <jsp:include page="/include/footer.jsp"/>
</body>
</html>