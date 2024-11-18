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
  <style>
  	.agrtext {
	    height: 150px;
	    border: 1px solid black;
	    background-color: white;
	    white-space: pre-line;
	    overflow-y: scroll;
	    margin: 0 auto 20px;
		}
  </style>
  <script>
  	'use strict';
  	let aMidbtn = 0;
  	let aPwdbtn = 0;
  	
  	// 아이디/비밀번호/닉네임 정규식
  	
		
		// 아이디 중복체크 확인
	  function aMidCheck() {
	  	let aMid = document.getElementById("aMid").value;

	  	if(aMid.trim() == "") {
				alert("아이디를 입력하세요.");
				joinform.aMid.focus();
				return false;
		  }
	  	
	  	$.ajax({
				type : "post",
				url : "JoinBtnCheck.me",
				data : {aMid : aMid},
				success: function(res) {
					if(res != "0") {
						alert("이미 사용중인 아이디입니다. \n본인 계정이라면 아이디찾기를 이용해주세요.");
					}
					else {
						alert("사용 가능한 아이디입니다.");
						aMidbtn = 1;
					}
				} ,
				error: function() {
					alert("전송오류");
				} 
	  	});
		}
		// 닉네임 중복체크 확인
	  function aNickNameCheck() {
		  let aNickName = document.getElementById("aNickName").value;

		  if(aNickName.trim() == "") {
				alert("닉네임을 입력하세요.");
				joinform.aNickName.focus();
				return false;
		  }
	  	
	  	$.ajax({
				type : "post",
				url : "JoinBtnCheck.me",
				data : {aNickName : aNickName},
				success: function(res) {
					if(res != "0") {
						alert("이미 사용중인 닉네임입니다. \n다른 닉네임을 사용해주세요.");
					}
					else {
						alert("사용 가능한 닉네임입니다.");
						aPwdbtn = 1;
					}
				} ,
				error: function() {
					alert("전송오류");
				} 
	  	});
		}
		
		//회원가입버튼
		function joinCheck() {
			let agr = joinform.agr.value;
			let aPwd1 = joinform.aPwd1.value;
			let aPwd2 = joinform.aPwd2.value;
			if(aMidbtn == 0) alert("아이디 중복확인 버튼을 눌러주세요")
			else if(aPwdbtn == 0) alert("닉네임 중복확인 버튼을 눌러주세요")
			else if(aPwd1 == aPwd2) alert("비밀번호를 입력해주세요")
			else if(agr == 'agrNO') alert("가입약관 동의시 가입됩니다")
			else {
				alert("가입이 완료되었습니다");
				joinform.submit();
			}
		}
	</script>

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
	      
        <label for="aMid" class="form-label">아이디</label>
       	<div class=" input-group mb-1">
        	<input type="text" name="aMid" id="aMid" placeholder="사용할 아이디를 이메일 형식으로 입력하세요" class="form-control" autofocus required />
        	<div class="input-group-append">
	        	<input type="button" name="aMidBtn" value="중복확인" onclick="aMidCheck()" class="btn btn-secondary">
        	</div>
       	</div>
	      
	      <div class="mb-1">
	        <!-- <label for="aPwd" class="form-label">비밀번호</label>
	        <div ><input type="password" name="aPwd" id="aPwd" placeholder="비밀번호를 입력하세요" class="form-control" required /></div>
					-- -->
		      <label for="aPwd1" class="form-label">비밀번호</label>
		      <input type="password" name="aPwd1" id="aPwd1" placeholder="비밀번호를 입력해주세요" class="form-control" />
	       	<div class=" input-group mb-1">
		        <input type="password" name="aPwd2" id="aPwd2" placeholder="다시 한 번 동일한 비밀번호를 입력해주세요" class="form-control" />
	       	</div>
	      </div>
	      
	      <!-- 중복체크 -->
	      <div class="mb-1">
	        <label for="aNickName" class="form-label">닉네임</label>
        	<div class="input-group mb-1">
	        	<input type="text" name="aNickName" id="aNickName" placeholder="입력하세요" class="form-control" required />
	        	<div class="input-group-append">
		        	<input type="button" value="중복확인" onclick="aNickNameCheck()" class="btn btn-secondary" />
	        	</div>
        	</div>
	      </div>
	      
	      <div class="mb-3">
	        <label for="aPhoto" class="form-label">사진</label>
	        <div ><input type="file" name="aPhoto" id="aPhoto" class="form-control-file border" /></div>
	      </div>
	      <div class="mb-1">
	        <label for="aAnl" class="form-label">본 사이트에서 제공하는 분석서비스를 이용하시겠습니까?</label>
	        <span  class="text-center">
	          <input type="radio" name="aAnl" id="aAnlNO" value="비동의" class="btn-check" checked /><label for="aAnlNO" class="form-label">비동의</label>
	          <input type="radio" name="aAnl" id="aAnlYES" value="동의" class="btn-check" /><label for="aAnlYES" class="form-label mr-3">동의</label>
	        </span>
	      </div>
	      <div class="mb-1">
	        <div class="agrtext">
						1............................................................................................................................
						2.
						3.
						4.
						5.........................................................................
		      </div>
	        <label for="agr" class="form-label">가입약관에 동의하십니까?</label>
	        <div  class="text-center">
	          <input type="radio" name="agr" id="agrYES" value="agrYES" class="btn-check" /><label for="agrYES" class="form-label mr-3">동의</label>
	          <input type="radio" name="agr" id="agrNO" value="agrNO" class="btn-check" checked /><label for="agrNO" class="form-label">비동의</label>
	        </div>
	      </div>
	    <div class="text-right">
		    <input type="button" value="회원가입" onclick="joinCheck()" class="btn btn-success mb-2" />
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