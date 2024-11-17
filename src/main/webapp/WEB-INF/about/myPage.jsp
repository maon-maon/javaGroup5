<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>메모수첩myPage.jsp</title>
  <jsp:include page="/include/bs4.jsp"/>
  <link rel="shortcut icon" href="${ctp}/images/favicon/favicon.ico" />
  <style>
		#sideFold, #sidebar { background-color: #E6E6FA;}
		
		#main { margin-left: 7%;}
		#back {
			position: fixed;
	  	bottom: 20px;
	  	left: 20px;
		}
  </style>
  <script>
		function sideOpen() {
		  document.getElementById("main").style.marginLeft = "20%";
		  document.getElementById("sidebar").style.width = "20%";
		  document.getElementById("sidebar").style.display = "block";
		  document.getElementById("sideIcon").style.display = 'none';
		}
		function sideClose() {
		  document.getElementById("main").style.marginLeft = "7%";
		  document.getElementById("sidebar").style.display = "none";
		  document.getElementById("sideFold").style.width = "7%";
		  document.getElementById("sideIcon").style.display = "inline";
		}
	</script>
	
  
</head>
<body>
	<!-- Sidebar -->
	<div id="sidebar" class="w3-sidebar w3-bar-block  w3-card w3-animate-left" style="display:none;" >
		<div>
			<div class="input-group">
				<div class="input-group-prepend">
					<button class="w3-bar-item w3-button w3-large" onclick="sideClose()">
						<img src="${ctp}/images/logo/na5.png" width="100px" alt="어바웃로고">
					</button>
					<div class="input-group-append"><img src="" alt="프로필이미지"></div>
				</div>
			</div>
			<br/>
			<div>
			  <a class="w3-bar-item w3-button" href="scribbling">끄적이기</a>
			  <a class="w3-bar-item w3-button" href="MeAnalysis">{나} 메모</a>
			  <a class="w3-bar-item w3-button" href="scribbling">메모 수첩</a>
			  <a class="w3-bar-item w3-button" href="#clients">타인의 메모</a>
			  <a class="w3-bar-item w3-button" href="bookMark">책갈피</a>
			  <a class="w3-bar-item w3-button" href="memoAnalysis">메모 정리</a>
			</div>
		</div>
		<div>
		  <a class="w3-bar-item w3-button" href="notice">공지사항</a>
		  <a class="w3-bar-item w3-button" href="setting">설정</a>
		  <a class="w3-bar-item w3-button" href="logOut">로그아웃</a>
		</div>
		<div id="back">
		  <button onclick="location.href='Main'" class="btn btn-outline-dark">처음으로</button>
		</div>
	</div>
	<div id="sideIcon">
	  <div id="sideFold" class="w3-sidebar w3-bar-block w3-xxlarge" style="width: 7%">
	  <button id="openNav" class="w3-button w3-xlarge" onclick="sideOpen()">&#9776;</button>
		  <a href="#" class="w3-bar-item w3-button"><i class="fa fa-pencil-square-o" style="font-size:36px" title="끄적이기"></i></a> 
		  <a href="#" class="w3-bar-item w3-button"><i class="fa fa-search"></i></a> 
		  <a href="#" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i></a> 
		  <a href="#" class="w3-bar-item w3-button"><i class="fa fa-globe"></i></a>
		  <a href="#" class="w3-bar-item w3-button"><i class="fa fa-trash"></i></a> 
		<div id="back">
		  <button onclick="location.href='Main'" class="btn btn-outline-dark">처음으로</button>
		</div>
		</div>
	</div>
		
	<!-- 본문 시작-->
	<div id="main">
		<!-- 헤더 -->
		<div class="header">
			<jsp:include page="/include/hd.jsp"/>
	  </div>
		
		<!-- 본문 내용 -->
		<div class="container">
			<!-- 캘린더 -->
			<div>Calendar</div>
			<!-- 최근 메모 출력 -->
			<div>MemoList</div>
		</div>
		
		<!-- footer -->
		<div id="footer">
			<jsp:include page="/include/ft.jsp"/>
		</div>
	</div>
	<!-- 본문 끝 -->
</body>
</html>