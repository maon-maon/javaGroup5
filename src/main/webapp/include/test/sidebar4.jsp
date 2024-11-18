<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
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
		  <a href="#" class="w3-bar-item w3-button"><i class="material-icons" style="font-size:36px" title="{나}메모">library_books</i></a> 
		  <a href="#" class="w3-bar-item w3-button"><i class="fa fa-book" style="font-size:36px" title="메모수첩"></i></a>
		  <a href="#" class="w3-bar-item w3-button"><i class="material-icons" style="font-size:36px" title="타인의 메모">comment</i></a> 
		  <a href="#" class="w3-bar-item w3-button"><i class="material-icons" style="font-size:36px" title="책갈피">bookmark_border</i></a> 
		  <a href="#" class="w3-bar-item w3-button"><i class="material-icons" style="font-size:36px" title="메모 정리">data_usage</i></a> 
		  <a href="#" class="w3-bar-item w3-button"><i class="material-icons" style="font-size:36px" title="공지사항">notifications_none</i></a> 
		  <!-- <a href="#" class="w3-bar-item w3-button"><i class="material-icons" style="font-size:36px" title="설정">settings</i></a> -->
		  <button type="button" onclick="location.href='Settings.me'" style="border: none; padding-left: 15px;"><i class="material-icons" style="font-size:36px" title="설정">settings</i></button>
		  <a href="#" class="w3-bar-item w3-button"><i class="fa fa-sign-out" style="font-size:36px" title="로그아웃"></i></a> 
		<div id="back">
		  <button onclick="location.href='Main'" class="btn btn-outline-dark">처음으로</button>
		</div>
		</div>
	</div>