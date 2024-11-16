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
		
		#sideText {
			padding: 10px;
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
		
		/* Modal Content/Box */
		.modal-content {
		  background-color: #fefefe;
		  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
		  border: 1px solid #888;
		  width: 80%; /* Could be more or less, depending on screen size */
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
		input[type=text], select {
		  width: 100%;
		  padding: 12px 20px;
		  margin: 8px 0;
		  display: inline-block;
		  border: 1px solid #ccc;
		  border-radius: 4px;
		  box-sizing: border-box;
		}
		
		input[type=submit] {
		  width: 100%;
		  background-color: #4CAF50;
		  color: white;
		  padding: 14px 20px;
		  margin: 8px 0;
		  border: none;
		  border-radius: 4px;
		  cursor: pointer;
		}
		
		input[type=submit]:hover {
		  background-color: #45a049;
		}
		
		div {
		  border-radius: 5px;
		  background-color: #f2f2f2;
		  padding: 20px;
		}
		</style>
	
	
	
</head>
<body>
	<!-- Sidebar -->
	<div id="sidebar" class="w3-sidebar w3-bar-block  w3-card w3-animate-left" >
		<div>
			<button class="w3-bar-item w3-button w3-large"  style="text-align: center;">
				<img src="${ctp}/images/logo/na5.png" width="150px" alt="어바웃로고">
			</button>					
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
		<div class="w3-container">
			<jsp:include page="/include/hd.jsp"/>
	  </div>
		
		<!-- 본문 내용 -->
		<div class="container">
			<h3>당신의 메모수첩을 만들어 보세요</h3>
			<form name="joinform" method="post" action="JoinOk.me">
			  <form class="modal-content" action="/action_page.php">
		      <p>순서대로 내용을 작성해 주세요</p>
		      <hr>
		      <label for="email"><b>Email</b></label>
		      <input type="text" placeholder="Enter Email" name="email" required>
		
		      <label for="psw"><b>Password</b></label>
		      <input type="password" placeholder="Enter Password" name="psw" required>
		
		      <label for="psw-repeat"><b>Repeat Password</b></label>
		      <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
		      
		      <label>
		        <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
		      </label>
		
		      <div class="clearfix">
		        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
		        <button type="submit" class="signupbtn">Sign Up</button>
		      </div>
			  </form>
			</form>
			
			
			<div>
			  <form action="/action_page.php">
			    <label for="fname">First Name</label>
			    <input type="text" id="fname" name="firstname" placeholder="Your name..">
			
			    <label for="lname">Last Name</label>
			    <input type="text" id="lname" name="lastname" placeholder="Your last name..">
			
			    <label for="country">Country</label>
			    <select id="country" name="country">
			      <option value="australia">Australia</option>
			      <option value="canada">Canada</option>
			      <option value="usa">USA</option>
			    </select>
			  
			    <input type="submit" value="Submit">
			  </form>
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