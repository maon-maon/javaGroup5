<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>{About_Me}.Main</title>
  <jsp:include page="/include/bs4.jsp"/>
  <jsp:include page="/include/sidebarStyle.jsp"/>
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
		#main { 
	    min-height: calc(100% - 60px); /* 화면 꽉차게 변경 */
		}
		#footer { /* 하단에 고정 */
			position: absolute;
	    bottom: 0;
	    width: 100%;
	   	right:90px;
		}
	</style>
	<script>
		'use strict';
		
		//로그인시 적용
		$(document).ready(function() {
			let chck = '${cRememberMid}';
			if (chck === "true") {
		    $('#rememberMid').prop('checked', true);
			}
		});
		
		// 아이디저장 체크
		function rememberEmailCheck() {
			let ans = confirm("공용 장소에서 저장하시면 개인정보가 유출될 수 있으니 주의하시기 바랍니다. \n저장하시겠습니까?");
			//alert("let mid = ans    "+ans);
			let $rememberMid = $('#rememberMid');
			if(!ans) $rememberMid.prop("checked", ans);
			else {
				$rememberMid.prop("checked", ans);
				loginForm.rememberMid.value = 'ture'
			}
		}
		
		// 로그인 체크
		function loginCheck() {
			let aMid = document.getElementById("aMid").value;
			let aPwd = document.getElementById("aPwd").value;
			
			if(aMid == "") {
				alert("아이디를 입력하세요");
				$("#aMid").focus();
			}
			else if(aPwd == "") {
				alert("비밀번호를 입력하세요");
				$("#aPwd").focus();
			}
			else  {
				$("#loginForm").submit();
			}
		}
	
		
		// 아이디/비밀번호 찾기
		function findMidPwdBtn() {
			
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
						<div class="w3-bar mb-2">
							<button type="button" onclick="loginCheck()" class="w3-bar-item w3-blue" style="width:50%">로그인</button>
							<button type="button" onclick="location.href='Join.me'" class="w3-bar-item w3-teal" style="width:50%">회원가입</button>
						</div>
						<div class="mb-2">
							<input type="checkbox" id="rememberMid" name="rememberMid"  onclick="javascript:rememberEmailCheck()">
							<label for="rememberMid">아이디저장</label>
						</div>
						<div>
							<button type="button" name="findMidPwd" id="findMidPwd" onclick="location.href='FindMidPwd.me'" class="w3-button w3-border w3-border-indigo w3-padding-small">아이디찾기버튼/비밀번호찾기</button>						
						</div>
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