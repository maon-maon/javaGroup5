<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<div class="sidenav">
	<div>
		<div class="input-group">
			<div class="input-group-prepend">
				<img src="" alt="어바웃로고">
				<div class="input-group-append"><img src="" alt="프로필이미지"></div>
			</div>
		</div>
		<br/>
		<div><a href="http://192.168.50.52:9090/javaGroup5">||HOME||</a></div>
		<div>
		  <a href="scribbling">끄적이기</a>
		  <a href="MeAnalysis">{나} 메모</a>
		  <a href="scribbling">메모 수첩</a>
		  <a href="#clients">타인의 메모</a>
		  <a href="bookMark">책갈피</a>
		  <a href="memoAnalysis">메모 정리</a>
		</div>
	</div>
	<div>
	  <a href="notice">공지사항</a>
	  <a href="setting">설정</a>
	  <a href="logOut">로그아웃</a>
	</div>
</div>