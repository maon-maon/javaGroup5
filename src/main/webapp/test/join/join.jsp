<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>회원가입</title>
  <jsp:include page="/include/bs4.jsp"/>
  <link rel="shortcut icon" href="${ctp}/images/favicon/favicon.ico" />
	<style>
		#sidebar { 
			background-color: #E6E6FA;
			width: 20%;
			display: block;
		}
		#main { margin-left: 20%;}
		
		#back {
			position: fixed;
	  	bottom: 20px;
	  	left: 20px;
		}
		
		#sidebar img {
			margin-left: 15%;
		}
		#sideText {
			padding: 10px;
		}
		@media screen and (max-width: 1200px) {
			#sidebar img {
		    width: 70%;
			}
		}
  </style>
  <script>
  	'use strict';
  	
	  function logIn() {
			let reg = /^[a-zA-Z]*$/;
			let aMid = joinform.aMid.value;
				if (!reg.test(aMid)) {
					alert("아이디를 다시 입력해주세요");
					myform.aMid.focus();
					return false
				}		 
				joinform.submit();
			}
		if("${message}" != null){
			//alert("${message}");
		}
		
		function fCheck(flag) {
  		myform.flag.value = flag;
  		myform.submit();
		}
	</script>



	<style>
		/* Full-width input fields */
		input[type=text], input[type=password] {
		  width: 100%;
		  padding: 15px;
		  margin: 5px 0 22px 0;
		  display: inline-block;
		  border: none;
		  background: #f1f1f1;
		}
		/* Add a background color when the inputs get focus */
		input[type=text]:focus, input[type=password]:focus {
		  background-color: #ddd;
		  outline: none;
		}
		
		/* Set a style for all buttons */
		button {
		  background-color: #04AA6D;
		  color: white;
		  padding: 14px 20px;
		  margin: 8px 0;
		  border: none;
		  cursor: pointer;
		  width: 100%;
		  opacity: 0.9;
		}
		
		button:hover {
		  opacity:1;
		}
		
		/* Extra styles for the cancel button */
		.cancelbtn {
		  padding: 14px 20px;
		  background-color: #f44336;
		}	
		/* Float cancel and signup buttons and add an equal width */
		.cancelbtn, .signupbtn {
		  float: left;
		  width: 50%;
		}
		
		/* Style the horizontal ruler */
		hr {
		  border: 1px solid #f1f1f1;
		  margin-bottom: 25px;
		}
		/* Clear floats */
		.clearfix::after {
		  content: "";
		  clear: both;
		  display: table;
		}
		/* Change styles for cancel button and signup button on extra small screens */
		@media screen and (max-width: 300px) {
		  .cancelbtn, .signupbtn {
		    width: 100%;
		  }
		}
	</style>
	
	
	<style>
		.grid-container {
		  display: grid;
		  grid-template-columns: auto auto auto;
		  padding: 10px;
		}
		/* .grid-item {
		  background-color: rgba(255, 255, 255, 0.8);
		  border: 1px solid rgba(0, 0, 0, 0.8);
		  padding: 20px;
		  font-size: 30px;
		  text-align: center;
		} */
	</style>
	
	
</head>
<body>
	<!-- Sidebar -->
	<div id="sidebar" class="w3-sidebar w3-bar-block  w3-card w3-animate-left" >
		<div>
			<img src="${ctp}/images/logo/na5.png" width="150px" alt="어바웃로고">
			<br/>
			<div id="sideText">
				<p>1. 회원제로 운영되는 개인기록 사이트입니다</p>
				<p>2. 개인 메모내용은 본인만 볼 수 있습니다</p>
				<p>3. 당신의 하루 바로 지금 이 순간을 기록하세요</p>
			</div>
		</div>
		<div id="back">
		  <button onclick="location.href='Main'" class="btn btn-outline-dark">처음으로</button>
		</div>
	</div>
	<!-- Sidebar -->
	
	<!-- 본문 시작-->
	<div id="main">
		<!-- 헤더 -->
		<div class="header">
			<jsp:include page="/include/hd.jsp"/>
	  </div>
		
		<!-- 본문 내용 -->
		<div class="container">
			<h3>당신의 메모수첩을 만들어 보세요</h3>
			<form name="joinform" method="post" action="JoinOk.me">
	      <hr>
	      <p>순서대로 내용을 작성해 주세요</p>
	      <hr>
	      
	      <div class="grid-container">
				  <div class="grid-item">아이디</div>
				  <div class="grid-item">2</div>
				  <div class="grid-item">3</div>
				  <div class="grid-item">비밀번호</div>
				  <div class="grid-item">5</div>
				  <div class="grid-item">6</div>
				  <div class="grid-item">닉네임</div>
				  <div class="grid-item">8</div>
				  <div class="grid-item">9</div>
				  <div class="grid-item">사진</div>
				  <div class="grid-item">11</div>
				  <div class="grid-item">12</div>
				  <div class="grid-item">가입약관</div>
				  <div class="grid-item">9</div>
				  <div class="grid-item">9</div>
				  <div class="grid-item">분석동의</div>
				  <div class="grid-item">9</div>
				  <div class="grid-item">9</div>
				</div>
	      
	      <label for="aMid"><b>아이디</b></label>
	      <div class="input-group">
		      <input type="text" name="aMid" id="aMid" placeholder="이메일형식으로 입력해주세요" autofocus required>
		      <div class="input-group-append">
		      	<input type="button" name="midBtn" value="아이디 중복체크" onclick="idCheck()" class="btn btn-secondary">
		      </div>
	      </div>
	      
	      
	
	      <label for="aPwd"><b>비밀번호</b></label>
	      <input type="password" name="aPwd" id="aPwd" placeholder="비밀번호를 입력해주세요" required>
	
	      <label for="aPwdRe"><b>비밀번호 재확인</b></label>
	      <input type="password" name="aPwdRe" id="aPwdRe" placeholder="비밀번호를 다시 입력해주세요" required>
	      
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