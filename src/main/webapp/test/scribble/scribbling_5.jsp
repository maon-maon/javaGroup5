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
			--
			<div class="row ml-1" style="width: 100%">
				<button type="button" name="scBtn1" id="scBtn1" onclick="scBtn(1)" value="1" class="col w3-button w3-hover-white w3-border w3-border-orange w3-orange ">1</button>
				<button type="button" name="scBtn2" id="scBtn2" onclick="scBtn(2)" value="2"  class="col w3-button w3-hover-white w3-border w3-border-amber ">2</button>
				<button type="button" name="scBtn3" id="scBtn3" onclick="scBtn(3)" value="3" class="col w3-button w3-hover-white w3-border w3-border-yellow ">3</button>
				<button type="button" name="scBtn4" id="scBtn4" onclick="scBtn(4)" value="4" class="col w3-button w3-hover-white w3-border w3-border-khaki ">4</button>
				<button type="button" name="scBtn5" id="scBtn5" onclick="scBtn(5)" value="5" class="col w3-button w3-hover-white w3-border w3-border-lime ">5</button>
				<button type="button" name="scBtn6" id="scBtn6" onclick="scBtn(6)" value="6" class="col w3-button w3-hover-white w3-border w3-border-light-green ">6</button>
				<button type="button" name="scBtn7" id="scBtn7" onclick="scBtn(7)" value="7" class="col w3-button w3-hover-white w3-border w3-border-green "><font color="black">7</font></button>
    	</div>
			--
			--
			<div class="row ml-1" style="width: 100%">
				<button type="button" name="scBtn1" id="scBtn1" onclick="scBtn(1)" value="1" class="col w3-button w3-hover-white w3-border w3-border-orange ">1</button>
				<button type="button" name="scBtn2" id="scBtn2" onclick="scBtn(2)" value="2"  class="col w3-button w3-hover-white w3-border w3-border-amber  w3-amber">2</button>
				<button type="button" name="scBtn3" id="scBtn3" onclick="scBtn(3)" value="3" class="col w3-button w3-hover-white w3-border w3-border-yellow ">3</button>
				<button type="button" name="scBtn4" id="scBtn4" onclick="scBtn(4)" value="4" class="col w3-button w3-hover-white w3-border w3-border-khaki ">4</button>
				<button type="button" name="scBtn5" id="scBtn5" onclick="scBtn(5)" value="5" class="col w3-button w3-hover-white w3-border w3-border-lime ">5</button>
				<button type="button" name="scBtn6" id="scBtn6" onclick="scBtn(6)" value="6" class="col w3-button w3-hover-white w3-border w3-border-light-green ">6</button>
				<button type="button" name="scBtn7" id="scBtn7" onclick="scBtn(7)" value="7" class="col w3-button w3-hover-white w3-border w3-border-green "><font color="black">7</font></button>
    	</div>
			--
			--
			<div class="row ml-1" style="width: 100%">
				<button type="button" name="scBtn1" id="scBtn1" onclick="scBtn(1)" value="1" class="col w3-button w3-hover-white w3-border w3-border-orange ">1</button>
				<button type="button" name="scBtn2" id="scBtn2" onclick="scBtn(2)" value="2"  class="col w3-button w3-hover-white w3-border w3-border-amber ">2</button>
				<button type="button" name="scBtn3" id="scBtn3" onclick="scBtn(3)" value="3" class="col w3-button w3-hover-white w3-border w3-border-yellow w3-yellow ">3</button>
				<button type="button" name="scBtn4" id="scBtn4" onclick="scBtn(4)" value="4" class="col w3-button w3-hover-white w3-border w3-border-khaki ">4</button>
				<button type="button" name="scBtn5" id="scBtn5" onclick="scBtn(5)" value="5" class="col w3-button w3-hover-white w3-border w3-border-lime ">5</button>
				<button type="button" name="scBtn6" id="scBtn6" onclick="scBtn(6)" value="6" class="col w3-button w3-hover-white w3-border w3-border-light-green ">6</button>
				<button type="button" name="scBtn7" id="scBtn7" onclick="scBtn(7)" value="7" class="col w3-button w3-hover-white w3-border w3-border-green "><font color="black">7</font></button>
    	</div>
			--
			--
			<div class="row ml-1" style="width: 100%">
				<button type="button" name="scBtn1" id="scBtn1" onclick="scBtn(1)" value="1" class="col w3-button w3-hover-white w3-border w3-border-orange ">1</button>
				<button type="button" name="scBtn2" id="scBtn2" onclick="scBtn(2)" value="2"  class="col w3-button w3-hover-white w3-border w3-border-amber ">2</button>
				<button type="button" name="scBtn3" id="scBtn3" onclick="scBtn(3)" value="3" class="col w3-button w3-hover-white w3-border w3-border-yellow ">3</button>
				<button type="button" name="scBtn4" id="scBtn4" onclick="scBtn(4)" value="4" class="col w3-button w3-hover-white w3-border w3-border-khaki w3-khaki ">4</button>
				<button type="button" name="scBtn5" id="scBtn5" onclick="scBtn(5)" value="5" class="col w3-button w3-hover-white w3-border w3-border-lime ">5</button>
				<button type="button" name="scBtn6" id="scBtn6" onclick="scBtn(6)" value="6" class="col w3-button w3-hover-white w3-border w3-border-light-green ">6</button>
				<button type="button" name="scBtn7" id="scBtn7" onclick="scBtn(7)" value="7" class="col w3-button w3-hover-white w3-border w3-border-green "><font color="black">7</font></button>
    	</div>
			--
			--
			<div class="row ml-1" style="width: 100%">
				<button type="button" name="scBtn1" id="scBtn1" onclick="scBtn(1)" value="1" class="col w3-button w3-hover-white w3-border w3-border-orange ">1</button>
				<button type="button" name="scBtn2" id="scBtn2" onclick="scBtn(2)" value="2"  class="col w3-button w3-hover-white w3-border w3-border-amber ">2</button>
				<button type="button" name="scBtn3" id="scBtn3" onclick="scBtn(3)" value="3" class="col w3-button w3-hover-white w3-border w3-border-yellow ">3</button>
				<button type="button" name="scBtn4" id="scBtn4" onclick="scBtn(4)" value="4" class="col w3-button w3-hover-white w3-border w3-border-khaki ">4</button>
				<button type="button" name="scBtn5" id="scBtn5" onclick="scBtn(5)" value="5" class="col w3-button w3-hover-white w3-border w3-border-lime w3-lime ">5</button>
				<button type="button" name="scBtn6" id="scBtn6" onclick="scBtn(6)" value="6" class="col w3-button w3-hover-white w3-border w3-border-light-green ">6</button>
				<button type="button" name="scBtn7" id="scBtn7" onclick="scBtn(7)" value="7" class="col w3-button w3-hover-white w3-border w3-border-green "><font color="black">7</font></button>
    	</div>
			--
			--
			<div class="row ml-1" style="width: 100%">
				<button type="button" name="scBtn1" id="scBtn1" onclick="scBtn(1)" value="1" class="col w3-button w3-hover-white w3-border w3-border-orange ">1</button>
				<button type="button" name="scBtn2" id="scBtn2" onclick="scBtn(2)" value="2"  class="col w3-button w3-hover-white w3-border w3-border-amber">2</button>
				<button type="button" name="scBtn3" id="scBtn3" onclick="scBtn(3)" value="3" class="col w3-button w3-hover-white w3-border w3-border-yellow ">3</button>
				<button type="button" name="scBtn4" id="scBtn4" onclick="scBtn(4)" value="4" class="col w3-button w3-hover-white w3-border w3-border-khaki ">4</button>
				<button type="button" name="scBtn5" id="scBtn5" onclick="scBtn(5)" value="5" class="col w3-button w3-hover-white w3-border w3-border-lime ">5</button>
				<button type="button" name="scBtn6" id="scBtn6" onclick="scBtn(6)" value="6" class="col w3-button w3-hover-white w3-border w3-border-light-green w3-light-green ">6</button>
				<button type="button" name="scBtn7" id="scBtn7" onclick="scBtn(7)" value="7" class="col w3-button w3-hover-white w3-border w3-border-green "><font color="black">7</font></button>
    	</div>
			--
			--
			<div class="row ml-1" style="width: 100%">
				<button type="button" name="scBtn1" id="scBtn1" onclick="scBtn(1)" value="1" class="col w3-button w3-hover-white w3-border w3-border-orange ">1</button>
				<button type="button" name="scBtn2" id="scBtn2" onclick="scBtn(2)" value="2"  class="col w3-button w3-hover-white w3-border w3-border-amber ">2</button>
				<button type="button" name="scBtn3" id="scBtn3" onclick="scBtn(3)" value="3" class="col w3-button w3-hover-white w3-border w3-border-yellow ">3</button>
				<button type="button" name="scBtn4" id="scBtn4" onclick="scBtn(4)" value="4" class="col w3-button w3-hover-white w3-border w3-border-khaki ">4</button>
				<button type="button" name="scBtn5" id="scBtn5" onclick="scBtn(5)" value="5" class="col w3-button w3-hover-white w3-border w3-border-lime ">5</button>
				<button type="button" name="scBtn6" id="scBtn6" onclick="scBtn(6)" value="6" class="col w3-button w3-hover-white w3-border w3-border-light-green ">6</button>
				<button type="button" name="scBtn7" id="scBtn7" onclick="scBtn(7)" value="7" class="col w3-button w3-hover-white w3-border w3-border-green w3-green"><font color="black">7</font></button>
    	</div>
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