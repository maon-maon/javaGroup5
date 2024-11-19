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
          padding: 20px;
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
			<form name="memoForm" method="post" action="">
				<div></div>
			</form>
			
			---
			<div class="container">
        <div class="section">
            <label for="category">종류 선택</label>
            <select name="category" id="category">
                <option value="농축산물">농축산물</option>
                <option value="가공식품">가공식품</option>
                </select>
            <label for="product">리뷰 제목</label>
            <input type="text" id="product" name="product">
        </div>
        <div class="section">
            <div class="number-buttons">
                <div class="number-button">1</div>
                <div class="number-button">2</div>
                <div class="number-button">3</div>
                <div class="number-button">4</div>
                <div class="number-button">5</div>
                <div class="number-button">6</div>
                <div class="number-button">7</div>
            </div>
        </div>
        <div class="section">
            <textarea placeholder="피드백을 작성해주세요"></textarea>
        </div>
        <button>작성완료</button>
    	</div>
			---
			
			
		</div>
		
		<!-- footer -->
		<div id="footer">
			<jsp:include page="/include/ft.jsp"/>
		</div>
	</div>
	<!-- 본문 끝 -->
</body>
</html>