<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>메모수첩myPage.jsp</title>
  <link rel="shortcut icon" href="${ctp}/images/favicon/favicon.ico" />
  <jsp:include page="/include/bs4.jsp"/>
  <jsp:include page="/include/sidebarStyle.jsp"/>
	<style>
		.grid-container {
		  display: grid;
		  grid-template-columns: auto;
		  grid-gap: 10px; /* Gap between items */
		}
		
		.grid-item {
		  padding: 10px;
		  border: 1px solid #ddd; /* Optional border for items */
		}
		
		.radio-container {
		  display: flex;
		  align-items: center; /* Align radio buttons vertically */
		  margin-bottom: 5px; /* Spacing between radio options */
		}
		
		.form-label {
		  margin-left: 5px; /* Spacing between label and radio button */
		}
	</style>
	<script>
		'use strict';
		
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
			<!-- 회원정보 수정 버튼 -->			
			<!-- 구글드라이브 백업 -->
			<!-- 페이지모드 변경버튼 -->
			<!-- 운영진 문의 -->
			
			<div class="grid-container">
			  <div class="grid-item">
			    <div>페이지 변경모드</div>
	          <input type="radio" name="mode" id="light" value="light" class="btn-check" checked/><label for="light" class="form-label mr-3">밝음</label>
	          <input type="radio" name="mode" id="dark" value="dark" class="btn-check" /><label for="dark" class="form-label">어두움</label>
					<div class="input-group-append">
						<button onclick="#" class="btn btn-dark">변경</button>
					</div>
			  </div>
			  <div class="grid-item">
			    <div>구글드라이브</div>
			    <button class="btn btn-dark">백업</button>
			  </div>
			  <div class="grid-item">
			    <div>회원정보</div>
			    <button class="btn btn-dark" onclick="location.href='MemberVerify.me'">수정</button>
			  </div>
			  <div class="grid-item">
			    <div>운영진</div>
			    <button data-toggle="modal" data-target="#myModal" class="btn btn-dark">문의</button>
			  </div>
			</div>		
		</div>
		
		<!-- The Modal 시작 -->
	  <div class="modal" id="myModal">
	    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
	      <div class="modal-content">
	      
	        <!-- Modal Header -->
	        <div class="modal-header">
	          <h3 class="modal-title">운영진 문의 메모장입니다</h3>
	          <button type="button" class="close" data-dismiss="modal">×</button>
	        </div>
	        
	        <!-- Modal body -->
	        <div class="modal-body">
	        	<b>문의사항을 알려주세요</b>
	        	<hr/>
	        	<form name="modalForm">
		        	<div>
						    <input type="radio" name="claim" id="claim1" value="개인정보수정" />
						    <label for="claim1">개인정보수정</label>
						    <input type="radio" name="claim" id="claim2" value="작성메모문의" />
						    <label for="claim2">작성메모문의</label>
						    <input type="radio" name="name" id="claim3" value="이벤트문의" />
						    <label for="claim3">이벤트문의</label>
						    <input type="radio" name="claim" id="claim4" value="분석데이터" />
						    <label for="claim4">분석데이터</label>
						    <br>
						    <input type="radio" name="claim" id="claim7" value="기타" />
						    <label for="claim4">기타</label>
							</div>
							<hr/>
		      		<div>
			          <textarea rows="5" id="claimTxt" class="form-control" >자세한 내용을 기입해 주세요</textarea>
		      		</div>
		        	<hr/>
							<input type="button" value="확인" onclick="claimCheck()" class="w3-button w3-white w3-hover-blue-grey w3-border w3-border-black w3-round-large form-control" />								        	
	        	</form>
	        </div>
	        
	        <!-- Modal footer -->
	        <div class="modal-footer">
	          <button type="button" class="w3-button w3-hover-red w3-border w3-border-red w3-round-large" data-dismiss="modal">Close</button>
	        </div>
		    </div>
	    </div>
	  </div>
		<!-- The Modal 끝 -->
		
		
		
		
		<!-- footer -->
		<div id="footer">
			<jsp:include page="/include/ft.jsp"/>
		</div>
	</div>
	<!-- 본문 끝 -->
</body>
</html>