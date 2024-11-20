<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>메모수첩myPage.jsp</title>
  <link rel="shortcut icon" href="${ctp}/images/favicon/favicon.ico" />
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <jsp:include page="/include/bs4.jsp"/>
  <jsp:include page="/include/sidebarStyle.jsp"/>
  <style>
		#td1,#td8,#td15,#td22,#td29,#td36 {color: red}
		#td7,#td14,#td21,#td28,#td35 {color: blue}
		
		.today {
			background: #E6E6FA;
			color: #333;
			font-weight: bolder;
		}
		
		table tr th {background-color: #E6E6FA;}
		table {margin: 0 auto;}
  </style>
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
    .section-BG {
      border: 4px solid #4F5591;
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
			<c:forEach var="vo" items="${vos}" varStatus="st">
      	<div class="section-BG">
        	<div class="section">
	        	<div>날짜 : ${fn:substring(vo.inDate,0,19)}</div>
        	</div>
        	<div class="section">
	        	<div class="input-group">
	            <div>카테고리 : ${vo.inCtg}</div>
	            <div class="input-group-append">
		          	타이틀 : ${vo.inTitle}
	            </div>
	        	</div>
        	</div>
	        <div class="section">
	        	스코어 : ${vo.inScore}
        	</div>
	        <div class="section">
            <img id="demo" width="150" />
	        </div>
	        <div class="section text-right">
		        <button type="button" name="memoBtn" id="memoBtn" onclick="memoBtnCk()" class="w3-button w3-indigo w3-hover-white  w3-border w3-border-indigo w3-round-xlarge">수정</button>
		        <button type="button" name="memoBtn" id="memoBtn" onclick="memoBtnCk()" class="w3-button w3-indigo w3-hover-white  w3-border w3-border-indigo w3-round-xlarge">삭제</button>
	        </div>
        </div>
      </c:forEach>
        ${vo.aMid}
			--
			
		</div>
		
		<!-- footer -->
		<div id="footer">
			<jsp:include page="/include/ft.jsp"/>
		</div>
	</div>
	<!-- 본문 끝 -->
</body>
</html>