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
  <title>관리자보드</title>
  <link rel="shortcut icon" href="${ctp}/images/favicon/favicon.ico" />
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <jsp:include page="/include/bs4.jsp"/>
  <jsp:include page="/include/sidebarStyle_ad.jsp"/>
  <style>
  	body {
      font-family: sans-serif;
    }
    .container {
      width: 100%;
      margin: 0 auto;
    }
    .container table {
    	margin: 0 auto;
     	width: 80%;
     	height: 250px;
    }
    table tr th {background-color: #E6E6FA;}
    
		#td1,#td8,#td15,#td22,#td29,#td36 {color: red}
		#td7,#td14,#td21,#td28,#td35 {color: blue}
		
		.today {
			background: #E6E6FA;
			color: #333;
			font-weight: bolder;
		}
  </style>
  <script>

	</script>
</head>
<body>
	<!-- Sidebar -->
	<jsp:include page="/include/sidebar_ad.jsp"/>
		
	<!-- 본문 시작-->
	<div id="main">
		<!-- 헤더 -->
		<div class="header">
			<jsp:include page="/include/hd.jsp"/>
	  </div>
		
		<!-- 본문 내용 -->
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
				<button type="button" onclick="location.href='Dashboard.me'" class="w3-button w3-indigo btn-sm" title="오늘날짜">오늘</button>
			</div>
			<div class="text-center">
				<table class="table table-bordered">
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
			<br/>
			<div>신규 등록 회원 수: </div>
			<div>신고 접수 건수
			<div>회원 문의 건수 : </div>
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