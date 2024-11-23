<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>bookMark.jsp</title>
  <link rel="shortcut icon" href="${ctp}/images/favicon/favicon.ico" />
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <jsp:include page="/include/bs4.jsp"/>
  <jsp:include page="/include/sidebarStyle.jsp"/>
  <jsp:include page="/include/weekSchedule.jsp"/>
  <jsp:include page="/include/mainContent.jsp"/>
	<script>
	'use strict';
	// 책갈피 처리
	function bookmarkBtn(inIdx) {
		$.ajax({
			type : "post",
			url : "Bookmarking.me" ,
			data : {inIdx : inIdx},
			success : function(res) {
				if(res != "0") {
					alert("책갈피를 끼웠습니다.");
					location.reload();
				}
				else {
					alert("페이지를 놓쳤어요. 다시 책갈피를 끼워주세요");
				}
			} ,
			error: function() {
				alert("전송오류");
			}
		});
	}
	//공개처리
	function memoOpenBtn(inIdx) {
		$.ajax({
			type : "post",
			url : "OpenMemo.me" ,
			data : {inIdx : inIdx},
			success : function(res) {
				if(res != "0") {
					alert("빈 공간에 쪽지가 붙었어요.");
					location.reload();
				}
				else {
					alert("쪽지가 떨어졌어요. 다시 붙여주세요.");
				}
			} ,
			error: function() {
				alert("전송오류");
			}
		});
	}
	//삭제처리
	function deleteBtn(inIdx) {
		$.ajax({
			type : "post",
			url : "DeleteMemo.me" ,
			data : {inIdx : inIdx},
			success : function(res) {
				if(res != "0") {
					alert("쪽지를 지웠어요.");
					location.reload();
				}
				else {
					alert("쪽지가 아직 남아있어요. 다시 지워주세요.");
				}
			} ,
			error: function() {
				alert("전송오류");
			}
		});
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
			<!-- 주간캘린더 -->
			<div class="text-center">
				<table>
					<tr >
						<th style="width: 14%; vertical-align: middle; color: #f00;">일</th>
						<th style="width: 14%; vertical-align: middle">월</th>
						<th style="width: 14%; vertical-align: middle">화</th>
						<th style="width: 14%; vertical-align: middle">수</th>
						<th style="width: 14%; vertical-align: middle">목</th>
						<th style="width: 14%; vertical-align: middle">금</th>
						<th style="width: 14%; vertical-align: middle; color: #00f;">토</th>
					</tr>
					<tr>
						<td style="width: 14%; vertical-align: middle; <c:if test="${today == dd}">background-color: #E6E6FA;</c:if> color: #f00;">${dd}</td>
						<td style="width: 14%; vertical-align: middle; <c:if test="${today == dd+1}">background-color: #E6E6FA;</c:if>" >${dd+1}</td>
						<td style="width: 14%; vertical-align: middle; <c:if test="${today == dd+2}">background-color: #E6E6FA;</c:if>" >${dd+2}</td>
						<td style="width: 14%; vertical-align: middle; <c:if test="${today == dd+3}">background-color: #E6E6FA;</c:if>" >${dd+3}</td>
						<td style="width: 14%; vertical-align: middle; <c:if test="${today == dd+4}">background-color: #E6E6FA;</c:if>" >${dd+4}</td>
						<td style="width: 14%; vertical-align: middle; <c:if test="${today == dd+5}">background-color: #E6E6FA;</c:if>" >${dd+5}</td>
						<td style="width: 14%; vertical-align: middle; <c:if test="${today == dd+6}">background-color: #E6E6FA; </c:if>  color: #00f;">${dd+6}</td>
					</tr>
				</table>	
			</div>
			<h4 class="text-center">책갈피가 꽂힌 메모</h4>
			<!-- 최근 메모 출력 -->
			<c:forEach var="vo" items="${vos}" varStatus="st">
      	<div class="section-BG">
        	<div class="section">
	        	<div class="section">
	        		<span class="row mb-2">
	        			<button class="w3-button w3-white w3-hover-white w3-border w3-border-indigo w3-block col-4">날짜</button>
	        		 	<button class="w3-button w3-white w3-hover-white w3-border w3-border-indigo w3-block col">${fn:substring(vo.inDate,0,19)}</button>
	        		</span>
	        		<span class="row mb-2">
	        			<button class="w3-button w3-white w3-hover-white w3-border w3-border-indigo w3-block col-4">카테고리</button>
	        		 	<button class="w3-button w3-white w3-hover-white w3-border w3-border-indigo w3-block col">${vo.inCtg}</button>
	        		</span>
	        		<span class="row">
	        			<button class="w3-button w3-white w3-hover-white w3-border w3-border-indigo w3-block col-4">타이틀</button>
	        		 	<button class="w3-button w3-white w3-hover-white w3-border w3-border-indigo w3-block col">${vo.inTitle}</button>
	        		</span>
	        	</div>
		        <div class="section_sc">
		        	<%-- 스코어 : ${vo.inScore} --%>
        			<button class="w3-button w3-white w3-hover-white w3-border w3-border-indigo w3-block">
			        	<div id="sc" class="text-center">
				        	<c:if test="${vo.inScore == 1}"><img src="${ctp}/images/sc/sc1.png"></c:if>
				        	<c:if test="${vo.inScore == 2}"><img src="${ctp}/images/sc/sc2.png"></c:if>
				        	<c:if test="${vo.inScore == 3}"><img src="${ctp}/images/sc/sc3.png"></c:if>
				        	<c:if test="${vo.inScore == 4}"><img src="${ctp}/images/sc/sc4.png"></c:if>
				        	<c:if test="${vo.inScore == 5}"><img src="${ctp}/images/sc/sc5.png"></c:if>
				        	<c:if test="${vo.inScore == 6}"><img src="${ctp}/images/sc/sc6.png"></c:if>
				        	<c:if test="${vo.inScore == 7}"><img src="${ctp}/images/sc/sc7.png"></c:if>
			        	</div>
        			</button>
	        	</div>
        	</div>
	        <div class="section">
	        	<div class="row">
			        <div class="col">
								<c:set var="fNameArr" value="${fn:split(vo.inPhoto,'.')}" />
								<c:set var="extName" value="${fn:toLowerCase(fNameArr[fn:length(fNameArr)-1])}" /> <!-- 확장자 구하기 -->
								<c:if test="${extName == 'jpg' || extName == 'gif' || extName == 'png'}">
									<img  src="${ctp}/images/imgData/${vo.inPhoto}" width="150px" />
								</c:if>
			        </div>
			        <div class="text-right mr-2">
				        <button type="button" name="bookmark" id="bookmark" onclick="bookmarkBtn(${vo.inIdx})" class="w3-button w3-brown w3-hover-white  w3-border w3-border-indigo w3-round-xlarge" >책갈피</button>
				        <button type="button" name="memoOpen" id="memoOpen" onclick="memoOpenBtn(${vo.inIdx})" class="w3-button w3-green w3-hover-white  w3-border w3-border-indigo w3-round-xlarge" >쪽지공개</button>
				        <button type="button" name="modify" id="modify" onclick="modifyBtn()" class="w3-button w3-indigo w3-hover-white  w3-border w3-border-indigo w3-round-xlarge" >수정</button>
				        <button type="button" name="delete" id="delete" onclick="deleteBtn(${vo.inIdx})" class="w3-button w3-deep-purple w3-hover-white  w3-border w3-border-indigo w3-round-xlarge">삭제</button>
			        </div>
	        	</div>
	        </div>
        </div>
      </c:forEach>
		</div>
		
		<!-- footer -->
		<div id="footer">
			<jsp:include page="/include/ft.jsp"/>
		</div>
	</div>
	<!-- 본문 끝 -->
</body>
</html>