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
	</div>
	<div id="sideFold">
	  <div id="sideIcon" class="w3-sidebar w3-bar-block w3-xxlarge" style="width:70px">
	  <button id="openNav" class="w3-button w3-xlarge" onclick="sideOpen()">&#9776;</button>
		  <a href="#" class="w3-bar-item w3-button"><i class="fa fa-pencil-square-o" style="font-size:36px" title="끄적이기"></i></a> 
		  <a href="#" class="w3-bar-item w3-button"><i class="fa fa-search"></i></a> 
		  <a href="#" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i></a> 
		  <a href="#" class="w3-bar-item w3-button"><i class="fa fa-globe"></i></a>
		  <a href="#" class="w3-bar-item w3-button"><i class="fa fa-trash"></i></a> 
		</div>
	</div>