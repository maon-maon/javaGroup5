<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>끄적이기</title>
  <jsp:include page="/include/bs4.jsp"/>
  <link rel="shortcut icon" href="${ctp}/images/favicon/favicon.ico" />
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
      
      /* 별점에 스타일 설정하기 */
		  #memoForm fieldset {
				direction: rtl;
				font-size: 1.5em;
			}
		  #memoForm fieldset div div{
				padding: 5px 5px;
				margin: 0 auto;
				border: 1px solid #e6e6fa;
			}
		  #memoForm input[type=radio] {
				/* display: none; */
			}
		  #memoForm label {
				font-size: 1.6em;
				color: blue; /* x,y,크기,컬러 */
			}
		  #memoForm label:hover {
				color:  black;
				background-color: blue;
			}
		  /* #memoForm input[type=radio]:checked ~ label { /* 라디오버튼 체크
				text-shadow: 0 0 0 black;
			} */
		 /* #memoForm input[type=radio]:checked {
			  background-color: black;
			} */
			 #memoForm label input[type=radio]:checked   {
			  background-color: black; 
			} 
			
  </style>
  <script>
  	'use strict';
		
	function reviewCheck() {
		let scrNum = reviewForm.scrNum.value;
		let review = reviewForm.review.value;
		
		if(scrNum == "") {
			alert("별점을 선택하세요");
		}
		/* else if (review.trim() == "") {
			alert("리뷰를 작성하세요");
			reviewForm.review.focus();
		} */
		
		alert("별점 :"+scrNum);
		
		
		/* $.ajax({
			type : "post",
			url : "",
			data : { : },
			success : function () {
				
			},
			error: function () {
				
			}
		}); */
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
			<form name="memoForm" id="memoForm" method="post" action="">
				---
      	<div class="section">
        	<div class="section">
	        	<div>날짜${vo.getaVisitD()}</div>
        	</div>
        	<div class="section">
	        	<div class="input-group">
	            <select name="ctg" id="ctg">
		            <option value="종류선택">종류선택</option>
		            <option value="기분은?">기분은?</option>
		            <option value="몸상태는?">몸상태는?</option>
		            <option value="날씨는?">날씨는?</option>
		            <option value="음식은?">음식은?</option>
		            <option value="뮈했어?">뮈했어?</option>
	            </select>
	            <div class="input-group-append">
		            <input type="text" id="title" name="title" placeholder="한 줄 끄적여보기" class="form-control">
	            </div>
	        	</div>
        	</div>
	        <div class="section">
						<fieldset style="border: 0px">
							<div class="text-center row">
								<label class="col" for="scrNum1"><input type="radio" name="scrNum" value="7" id="scrNum1">7</label>
								<label class="col" for="scrNum2"><input type="radio" name="scrNum" value="6" id="scrNum2">6</label>
								<label class="col" for="scrNum3"><input type="radio" name="scrNum" value="5" id="scrNum3">5</label>
								<label class="col" for="scrNum4"><input type="radio" name="scrNum" value="4" id="scrNum4">4</label>
								<label class="col" for="scrNum5"><input type="radio" name="scrNum" value="3" id="scrNum5">3</label>
								<label class="col" for="scrNum6"><input type="radio" name="scrNum" value="2" id="scrNum6">2</label>
								<label class="col" for="scrNum7"><input type="radio" name="scrNum" value="1" id="scrNum7">1</label>	
								<!-- <div class="col"><input type="radio" name="scrNum" value="7" id="scrNum1"><label for="scrNum1">7</label></div>
								<div class="col"><input type="radio" name="scrNum" value="6" id="scrNum2"><label for="scrNum2">6</label></div>
								<div class="col"><input type="radio" name="scrNum" value="5" id="scrNum3"><label for="scrNum3">5</label></div>
								<div class="col"><input type="radio" name="scrNum" value="4" id="scrNum4"><label for="scrNum4">4</label></div>
								<div class="col"><input type="radio" name="scrNum" value="3" id="scrNum5"><label for="scrNum5">3</label></div>
								<div class="col"><input type="radio" name="scrNum" value="2" id="scrNum6"><label for="scrNum6">2</label></div>
								<div class="col"><input type="radio" name="scrNum" value="1" id="scrNum7"><label for="scrNum7">1</label></div> -->
							</div>
						</fieldset>
        	</div>
	        <div class="section">
            <input type="file" name="fName" id="fName" class="form-control">
	        </div>
	        <div class="section">
		        <button type="button" name="memoBtn" id="memoBtn" onclick="memoBtn()" class="w3-button w3-black w3-hover-indigo w3-round-xlarge">수첩에 붙이기</button>
	        </div>
        </div>
			---
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