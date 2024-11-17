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
  	'use sdivict';
  	
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
		
		/* function fCheck(flag) {
  		myform.flag.value = flag;
  		myform.submit();
		} */
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
        	<input type="text" name="aMid" id="aMid" placeholder="입력하세요" class="form-control" autofocus required />
        	<div class="input-group-append">
	        	<input type="button" name="aMidBtn" value="중복체크" onclick="aMidCheck()" class="btn btn-secondary">
        	</div>
       	</div>
	      
	      <div class="mb-1">
	        <label for="aPwd" class="form-label">비밀번호</label>
	        <div ><input type="password" name="aPwd" id="aPwd" placeholder="입력하세요" class="form-control" required /></div>
	      </div>
	      <!-- 중복체크 -->
	      <div class="mb-1">
	        <label for="aNickName" class="form-label">닉네임</label>
        	<div class="input-group mb-1">
	        	<input type="text" name="aNickName" id="aNickName" placeholder="입력하세요" class="form-control" required />
	        	<div class="input-group-append">
		        	<input type="button" value="닉네임 중복체크" onclick="aNickNameCheck()" class="btn btn-secondary" />
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
	          <input type="radio" name="aAnl" id="NO" value="비동의" class="btn-check" checked /><label for="NO" class="form-label">비동의</label>
	          <input type="radio" name="aAnl" id="YES" value="동의" class="btn-check" /><label for="YES" class="form-label mr-3">동의</label>
	        </span>
	      </div>
	      <div class="mb-1">
	        <label for="agr" class="form-label">가입약관에 동의하십니까?</label>
	        <div>
		        <textarea rows="3" cols="100" id="agrText" name="agrText" readonly>
1.........................................................................	
2.
3.
4.
5.........................................................................	
		        </textarea>
		       </div>
	        <div  class="text-center">
	          <input type="radio" name="agr" id="YES" value="동의" class="btn-check" /><label for="YES" class="form-label mr-3">동의</label>
	          <input type="radio" name="agr" id="NO" value="비동의" class="btn-check" checked /><label for="NO" class="form-label">비동의</label>
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