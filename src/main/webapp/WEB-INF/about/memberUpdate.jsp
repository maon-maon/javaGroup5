<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>memberUpdate.jsp</title>
  <link rel="shortcut icon" href="${ctp}/images/favicon/favicon.ico" />
  <jsp:include page="/include/bs4.jsp"/>
  <jsp:include page="/include/sidebarStyle.jsp"/>
  <style>
  	
	</style>
	<script>
	'use strict';
		let aNickNameBtnSw = 0;
		let aPwdBtnSw = 0;

		// 닉네임 중복체크 확인
	  function aNickNameCheck() {
		  let aNickName = document.getElementById("aNickName").value;

		  if(aNickName.trim() == "") {
				alert("닉네임을 입력하세요.");
				updateForm.aNickName.focus();
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
				  	aNickNameBtnSw++;
					}
				} ,
				error: function() {
					alert("전송오류");
				} 
	  	});
		}
		
		//비밀번호 변경하기
		function aPwdChangeCheck() {
			let aPwd1 = updateForm.aPwd1.value;
			let aPwd2 = updateForm.aPwd2.value;

			if(aPwd1 != aPwd2) {
				alert("변경하려는 비밀번호를 동일하게 입력해 주세요");
				updateForm.aPwd.focus();
			}
			else {

				$.ajax({
					type : "post",
					url : "PwdVerifyCheck.me",
					data : {aPwd : aPwd1},
					success: function(res) {
						if(res != "0") {
							alert("이전과 동일한 번호로 변경할 수 없습니다.");
						}
						else {
							alert("비밀번호를 확인하였습니다.");
							updateForm.aPwd.value = aPwd1;
							aPwdBtnSw++;
						}
					}, 
					error: function() {
						alert("전송오류");
					} 
				});
			}
		}
		
		// 파일 업로드
		function imgCheck(input) {
			if(input.files && input.files[0]) {
				let reader = new FileReader();
				document.getElementById("demo").src = "";
				
				reader.onload = function(e) {
					// 파일 크기 검사 
					if(input.files[0].size > 1024*1024*2) {
						alert("2MB 이하의 파일을 업로드해주세요.");
						aPhoto.value = "";
						return false;
					}
					//파일 유형검사
					let extMime = ['image/jpg','image/png','image/jpeg'];
					if(!extMime.includes(input.files[0].type)) {
						alert("jpg,png,jpeg 파일만 업로드 가능합니다.");
						aPhoto.value = "";
						return false;
					}
					//document.getElementById("demo").src = e.target.result;
					$('#demo').attr('src', e.target.result);
				};
				reader.readAsDataURL(input.files[0]);
			}
			else $('#demo').attr("src", "");
		}
		
		// 폼 전송전 처리
		function submitCheck() {
			let aPwd2 = $('#aPwd2').val();
			let aNickName = $('#aNickName').val();
			if(aPwd2 != "" && aPwdBtnSw == 0) alert("비밀번호 확인 버튼을 눌러주세요.");
			else if(aNickName != "" && aNickNameBtnSw == 0) alert("닉네임 확인 버튼을 눌러주세요.");
			else updateForm.submit();
		}
		
		//로딩 후 적용
		/* $(document).ready(function() {
			let chck = '${cRememberMid}';
			//alert("chck   " + chck);
			if (chck === "true") {
		    $('#rememberMid').prop('checked', true);
			}
		}); */
	</script>
</head>
<body>
	<!-- Sidebar -->
	<jsp:include page="/include/sidebar.jsp"/>

	<!-- 본문 시작-->
	<div id="main">
		<!-- 헤더 -->
		<div class="header">
			<jsp:include page="/include/hd.jsp"/>
	  </div>
		
		<!-- 본문 내용 -->
		<div class="container">
			<h3></h3>
			<form name="updateForm" method="post" action="MemberUpdateOk.me" enctype="multipart/form-data">
	      <hr>
	      <p>모든 정보 수정 후 반드시 수정하기 버튼을 눌러주세요. 버튼을 누르지 않으면 수정되지 않습니다.</p>
	      <p>정보 수정에 문제가 있으면 운영진에게 문의주시기 바랍니다.</p>
	      <hr>
	      
        <label for="aMid" class="form-label">아이디</label>
       	<div class=" input-group mb-1">
        	<input type="text" name="aMid" id="aMid" placeholder="${sAmid}" class="form-control"  readonly/>
       	</div>
	      
	      <label for="aPwd" class="form-label">비밀번호</label>
	      <input type="password" name="aPwd1" id="aPwd1" placeholder="변경하실 비밀번호를 입력해주세요" class="form-control" />
       	<div class=" input-group mb-1">
	        <input type="password" name="aPwd2" id="aPwd2" placeholder="다시 한 번 동일한 비밀번호를 입력해주세요"  class="form-control" />
        	<div class="input-group-append">
	        	<input type="button" name="aPwdBtn" id="aPwdBtn" value="번호확인" onclick="aPwdChangeCheck()" class="btn btn-secondary">
        	</div>
       	</div>
	      <!-- 중복체크 -->
	      <div class="mb-1">
	        <label for="aNickName" class="form-label">닉네임</label>
        	<div class="input-group mb-1">
	        	<input type="text" name="aNickName" id="aNickName" placeholder="${vo.aNickName}님 변경하실 닉네임을 입력하세요" class="form-control" />
	        	<div class="input-group-append">
		        	<input type="button" value="중복확인" onclick="aNickNameCheck()" class="btn btn-secondary" />
	        	</div>
        	</div>
	      </div>
	      
	      <div class="mb-3">
	        <label for="aPhoto" class="form-label">사진</label>
	        <div>
	        	<input type="file" name="aPhoto" id="aPhoto" onchange="imgCheck(this)" class="form-control-file border" />
	        	<p>크기 2MB이하, 확장자는 jpg, png, jpeg 파일만 업로드 가능합니다.</p>
	        	<img id="demo" width="150" />
	        </div>
	      </div>
	      <div class="mb-1">
	        <label for="aAnl" class="form-label">본 사이트에서 제공하는 분석서비스를 이용하시겠습니까?</label>
	        <div  class="text-center">
	          <input type="radio" name="aAnl" id="aAnlNO" value="비동의" class="btn-check" <c:if test="${vo.aAnl == '비동의'}">checked</c:if> /><label for="aAnlNO" class="form-label">비동의</label>
	          <input type="radio" name="aAnl" id="aAnlYES" value="동의" class="btn-check" <c:if test="${vo.aAnl == '동의'}">checked</c:if>/><label for="aAnlYES" class="form-label mr-3">동의</label>
	        </div>
	      </div>
	      <div class="text-right">
	      	<button type="button" onclick="submitCheck()" class="btn btn-dark">수정하기</button>
	      </div>
	      <div><input type="hidden" name="aMid" value="${vo.aMid}"></div>
	      <div><input type="hidden" name="aPwd"></div>
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