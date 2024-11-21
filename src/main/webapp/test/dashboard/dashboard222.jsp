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
  <title>dashboard.jsp</title>
  <link rel="shortcut icon" href="${ctp}/images/favicon/favicon.ico" />
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
		#main { 
	    min-height: calc(100% - 60px); /* 화면 꽉차게 변경 */
		}
		#footer { /* 하단에 고정 */
		    position: absolute;
		    bottom: 0;
		    width: 100%;
		}
		#sidebar img {
			margin-left: 15%;
		}
		ul {
		  list-style: none; /* 목록에 번호나 마커를 표시하지 않음 */
		  padding: 0;
		  margin-left: 5%;
		}
		
		li {
		  margin-bottom: 10px;
		}
		
		@media screen and (max-width: 1200px) {
			#sidebar img {
		    width: 70%;
			}
		}
  </style>
	<script>
	
	</script>
</head>
<body>
	<!-- Sidebar -->
	<div id="sidebar" class="w3-sidebar w3-bar-block  w3-card w3-animate-left" >
		<div>
			<img src="${ctp}/images/logo/na5.png" width="150px" alt="어바웃로고">
			<br/>
			<ul>
				<li>회원 관리</li>
					<ul class="ml-3">
				  	<li>신규 회원 관리</li>
				    <li>기존 회원 관리</li>
				  </ul>
				<li>데이터 관리</li>
				  <ul class="ml-3">
				  	<li>월간 데이터 분석</li>
				  </ul>
				<li>공지사항 관리</li>
				<li>신고 관리</li>
					<ul class="ml-3">
				    <li>개인 회원 접수</li>
				    <li>타인의 메모 신고</li>
				  </ul>
			</ul>
		</div>
		<div id="back">
		  <button onclick="location.href='MyPage.me'" class="btn btn-outline-dark">처음으로</button>
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
		
		--
		<div class="container">
			<!-- 캘린더 -->
				<div class="text-center">
					<button type="button" onclick="location.href='Calendar.st?yy=${yy-1}&mm=${mm}'" class="w3-button w3-indigo btn-sm" title="이전년도">◁</button>
					<button type="button" onclick="location.href='Calendar.st?yy=${yy}&mm=${mm-1}'" class="w3-button w3-indigo btn-sm" title="이전월">◀</button>
					<font size="5">${yy}년 ${mm+1}월</font>
					<button type="button" onclick="location.href='Calendar.st?yy=${yy}&mm=${mm+1}'" class="w3-button w3-indigo btn-sm" title="다음월">▶</button>
					<button type="button" onclick="location.href='Calendar.st?yy=${yy+1}&mm=${mm}'" class="w3-button w3-indigo btn-sm" title="다음년도">▷</button>
				</div>
				<div style="margin-left: 15%">
					<button type="button" onclick="location.href='MyPage.me'" class="w3-button w3-indigo btn-sm" title="오늘날짜">오늘</button>
				</div>
				<div class="text-center">
					<table class="table table-bordered" style="height: 40px; width: 70%">
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
							<!-- 날짜 출력 -->
							<c:forEach begin="1" end="${startWeek - 1}">
								<td>&nbsp;</td>
							</c:forEach>
							<c:set var="cell" value="${startWeek}" /> <!-- 셀의 시작값을 담아서 줄바꾸기에 사용 -->
							<c:forEach begin="1" end="${lastDay}" varStatus="st">
								<c:set var="todaySw" value="${toYear==yy && toMonth==mm && toDay==st.count ? 1 : 0}"/>
								<td id="td${cell}" ${todaySw==1 ? 'class=today' : ''}>${st.count}</td>
								<c:if test="${cell % 7 == 0}"></tr><tr></c:if>
								<c:set var="cell" value="${cell + 1}" />
							</c:forEach>
						</tr>
					</table>	
				</div>
				
			<!-- 최근 메모 출력 -->
			<div>MemoList</div>
			--
		--
		
			<div>신규 등록 회원 수: </div>
			<div>문의/신고 접수 건수
				<div>개인회원접수 : </div>
				<div>타인의 메모 신고 : </div>
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