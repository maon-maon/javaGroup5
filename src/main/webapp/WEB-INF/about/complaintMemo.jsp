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
  <title>complaintMemo.jsp</title>
  <link rel="shortcut icon" href="${ctp}/images/favicon/favicon.ico" />
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <jsp:include page="/include/bs4.jsp"/>
  <jsp:include page="/include/sidebarStyle_ad.jsp"/>
  <style>
		
  </style>
  <style>
    /* 기본 스타일 설정 */
    body {
      font-family: sans-serif;
    }
    .container {
      margin: 0 auto;
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
			<div>문의 사항 목록</div>
			<table class="table tqble-hover text-center">
				<tr class="w3-indigo">
					<th>번호</th>
					<th>신고항목</th>
					<th>신고내용</th>
					<th>신고글번호</th>
					<th>신고글내용</th>
					<th>문의/신고일</th>
					<th>누적신고</th>
					<th>신고회원</th>
				</tr>
				<c:set var="curScrStartNo" value="${curScrStartNo}"/>
				<c:forEach var="vo" items="${vos}" varStatus="st">
					<tr>
						<td>${curScrStartNo}</td>
						<td>${vo.cpCtg}</td>
						<td>${vo.cpContent}</td>
						<td>${vo.cpMemoIdx}</td>
						<td>${vo.cpMemoTitle}</td>
						<td>${vo.cpDate}</td>
						<td>${vo.cpCnt}</td>
						<td>${vo.cpMid}</td>
					</tr>
				<c:set var="curScrStartNo" value="${curScrStartNo-1}"/>
				</c:forEach>
				<tr><td colspan="8" class="m-0 p-0"></td></tr>
			</table>
			<div></div>
		</div>
		
		<!-- 페이징처리 -->
		<div class="text-center">
			<ul class="pagination justify-content-center">
		  <c:if test="${pag > 1}"><li class="page-item"><a class="page-link text-secondary" href="ComplaintMemo.me?pageSize=${pageSize}&pag=1">첫페이지</a></li></c:if>
		  <c:if test="${curBlock > 0}"><li class="page-item"><a class="page-link text-secondary" href="ComplaintMemo.me?pageSize=${pageSize}&pag=${(curBlock-1)*blockSize +3}">이전블록</a></li></c:if>
		  <c:forEach var="i" begin="${(curBlock*blockSize)+1}" end="${(curBlock*blockSize)+blockSize}" varStatus="st">
		    <c:if test="${i <= totPage && i == pag}"><li class="page-item active"><a class="page-link bg-dark border-secondary" href="ComplaintMemo.me?pageSize=${pageSize}&pag=${i}"><font color="white"><b>${i}</b></font></a></li></c:if>
		    <c:if test="${i <= totPage && i != pag}"><li class="page-item"><a class="page-link text-secondary" href="ComplaintMemo.me?pageSize=${pageSize}&pag=${i}">${i}</a></li></c:if>
		  </c:forEach>
		 	<c:if test="${curBlock < lastBlock}"><li class="page-item"><a class="page-link text-secondary" href="ComplaintMemo.me?pageSize=${pageSize}&pag=${(curBlock+1)*blockSize +1}">다음블록</a></li></c:if>
		 	<c:if test="${pag < totPage}"><li class="page-item"><a class="page-link text-secondary" href="ComplaintMemo.me?pageSize=${pageSize}&pag=${totPage}">마지막페이지</a></li></c:if>
		  </ul>
		</div>
		<!-- 블럭페이지 끝 -->
		
		<!-- footer -->
		<div id="footer">
			<jsp:include page="/include/ft.jsp"/>
		</div>
	</div>
	<!-- 본문 끝 -->
</body>
</html>