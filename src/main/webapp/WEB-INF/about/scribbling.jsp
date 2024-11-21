<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>끄적이기</title>
  <jsp:include page="/include/bs4.jsp"/>
  <link rel="shortcut icon" href="${ctp}/images/favicon/favicon.ico" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <jsp:include page="/include/bs4.jsp"/>
  <jsp:include page="/include/sidebarStyle.jsp"/>
  <style>
      /* 기본 스타일 설정 */
      body {
          font-family: sans-serif;
      }

      .container {
          width: 80%;
          margin: 0 auto;
      }

      .section {
          border: 1px solid #ccc;
          padding: 10px;
          margin-bottom: 20px;
      }

      .number-buttons {
          display: flex;
          justify-content: space-around;
      }

      .number-button {
          width: 20px;
          height: 20px;
          text-align: center;
          line-height: 20px;
          border: 1px solid #ccc;
      }
  </style>
  <script>
  'use strict';
		let prevSelectedBtnId = null; // 이전에 선택된 버튼의 ID를 저장할 변수
		
		function scBtn(flag) {
	    if (flag) {
        //alert("flag: " + flag);
        // 이전에 선택된 버튼의 스타일 초기화
        if (prevSelectedBtnId) {
        	$("#" + prevSelectedBtnId).css('background-color', 'white');
        }
        // 현재 선택된 버튼의 스타일 변경
        let currentBtnId = "scBtn" + flag;
        $("#" + currentBtnId).css('background-color', '#9D9DEA');
        $("#inScore").val(flag);
        // 현재 선택된 버튼의 ID를 저장
        prevSelectedBtnId = currentBtnId;
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
		function memoBtnCk() {
			//alert("memoBtn: ");
			let ctg = $("#ctg").val();
			let title = $("#title").val();
      let inScore = $("#inScore").val();
			if(ctg == '종류선택') alert("오늘 쪽지의 종류를 선택해주세요");
			else if(title == '') alert("오늘 쪽지의 내용을 적어주세요");
			else if(inScore == '') alert("오늘의 점수를 메겨주세요");
			else memoForm.submit();
		} 
		
		
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
			<div>끄적이기</div>
			<form name="memoForm" id="memoForm" method="post" action="ScribblingOk.me" enctype="multipart/form-data">
      	<div class="section">
        	<div class="section">
	        	<div>지금 ${fn:substring(vo.getaVisitD(),0,19)}</div>
        	</div>
        	<div class="section">
	        	<div class="input-group">
	            <div class="input-group-prepend">
		            <select name="ctg" id="ctg">
			            <option value="종류선택">종류선택</option>
			            <option value="기분은?">기분은?</option>
			            <option value="몸상태는?">몸상태는?</option>
			            <option value="날씨는?">날씨는?</option>
			            <option value="음식은?">음식은?</option>
			            <option value="뮈했어?">뮈했어?</option>
		            </select>
	            </div>
	           <input type="text" name="title" id="title" placeholder="한 줄 끄적여보기" class="form-control">
	        	</div>
        	</div>
	        <div class="section">
	        	<div class="row ml-1" style="width: 100%">
							<button type="button" name="scBtn1" id="scBtn1" onclick="scBtn(1)" value="1" class="col w3-button w3-hover-white w3-border w3-border-orange ">1</button>
							<button type="button" name="scBtn2" id="scBtn2" onclick="scBtn(2)" value="2"  class="col w3-button w3-hover-white w3-border w3-border-amber r">2</button>
							<button type="button" name="scBtn3" id="scBtn3" onclick="scBtn(3)" value="3" class="col w3-button w3-hover-white w3-border w3-border-yellow ">3</button>
							<button type="button" name="scBtn4" id="scBtn4" onclick="scBtn(4)" value="4" class="col w3-button w3-hover-white w3-border w3-border-khaki ">4</button>
							<button type="button" name="scBtn5" id="scBtn5" onclick="scBtn(5)" value="5" class="col w3-button w3-hover-white w3-border w3-border-lime ">5</button>
							<button type="button" name="scBtn6" id="scBtn6" onclick="scBtn(6)" value="6" class="col w3-button w3-hover-white w3-border w3-border-light-green ">6</button>
							<button type="button" name="scBtn7" id="scBtn7" onclick="scBtn(7)" value="7" class="col w3-button w3-hover-white w3-border w3-border-green "><font color="black">7</font></button>
	        	</div>
        	</div>
	        <div class="section">
            <input type="file" name="aPhoto" id="aPhoto" onchange="imgCheck(this)" class="form-control-file">
            <p>크기 2MB이하, 확장자는 jpg, png, jpeg 파일만 업로드 가능합니다.</p>
            <img id="demo" width="150" />
	        </div>
	        <div class="section text-right">
		        <button type="button" name="memoBtn" id="memoBtn" onclick="memoBtnCk()" class="w3-button w3-indigo w3-hover-white  w3-border w3-border-indigo w3-round-xlarge">수첩에 붙이기</button>
	        </div>
        </div>
        <div><input type="hidden" name="inMid" value="${vo.aMid}"></div>
				<div><input type="hidden" name="inScore" id="inScore"></div>
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