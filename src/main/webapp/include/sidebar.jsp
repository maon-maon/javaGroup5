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
				<button type="button" onclick="location.href='Scribbling.me'" class="w3-bar-item w3-button"><i class="fa fa-pencil-square-o" style="font-size:36px" title="끄적이기"></i>끄적이기</button>
			  <button type="button" onclick="location.href='MeAnalysis.me'" class="w3-bar-item w3-button"><i class="material-icons" style="font-size:36px" title="{나}메모">library_books</i>{나}메모</button>
			  <button type="button" onclick="location.href='MyPage.me'" class="w3-bar-item w3-button"><i class="fa fa-book" style="font-size:36px" title="메모수첩"></i>메모수첩</button>
			  <a class="w3-bar-item w3-button" href="#clients">타인의 메모</a>
			  <a class="w3-bar-item w3-button" href="bookMark">책갈피</a>
			  <button type="button" onclick="location.href='MemoAnalysis.me'" class="w3-bar-item w3-button"><i class="fa fa-pie-chart" style="font-size:36px" title="메모정리"></i>메모정리</button>
			</div>
		</div>
		<div>
		  <a class="w3-bar-item w3-button" href="notice">공지사항</a>
		  <button type="button" onclick="location.href='Settings.me'" class="w3-bar-item w3-button" style="border: none; padding-left: 15px;"><i class="material-icons" style="font-size:36px" title="설정">settings</i>설정</button>
		  <button type="button" onclick="location.href='LogOut.me'" class="w3-bar-item w3-button"><i class="fa fa-sign-out" style="font-size:36px" title="로그아웃"></i>로그아웃</button>
		</div>
		<div id="back">
		  <button onclick="location.href='Main'" class="btn btn-outline-dark">처음으로</button>
		</div>
	</div>
	<div id="sideIcon">
	  <div id="sideFold" class="w3-sidebar w3-bar-block w3-xxlarge" style="width: 7%">
	  	<button id="openNav" class="w3-button w3-xlarge" onclick="sideOpen()"><i class="fa fa-navicon" style="font-size:36px"></i></button>
		  <button type="button" onclick="location.href='Scribbling.me'" class="w3-bar-item w3-button"><i class="fa fa-pencil-square-o" style="font-size:36px" title="끄적이기"></i></button>
		  <button type="button" onclick="location.href='MeAnalysis.me'" class="w3-bar-item w3-button"><i class="material-icons" style="font-size:36px" title="{나}메모">library_books</i></button>
		  <button type="button" onclick="location.href='MyPage.me'" class="w3-bar-item w3-button"><i class="fa fa-book" style="font-size:36px" title="메모수첩"></i></button>
		  <a href="#" class="w3-bar-item w3-button"><i class="material-icons" style="font-size:36px">import_contacts</i></a> 
		  <a href="#" class="w3-bar-item w3-button"><i class="material-icons" style="font-size:36px">collections_bookmark</i></a> 
		  <button type="button" onclick="location.href='MemoAnalysis.me'" class="w3-bar-item w3-button"><i class="fa fa-pie-chart" style="font-size:36px" title="메모정리"></i></button>
		  <a href="#" class="w3-bar-item w3-button"><i class="fa fa-bell" style="font-size:36px" title="공지사항"></i></a> 
		  <!-- <a href="#" class="w3-bar-item w3-button"><i class="material-icons" style="font-size:36px" title="설정">settings</i></a> -->
		  <button type="button" onclick="location.href='Settings.me'" class="w3-bar-item w3-button"><i class="material-icons" style="font-size:36px" title="설정">settings</i></button>
		  <button type="button" onclick="location.href='LogOut.me'" class="w3-bar-item w3-button"><i class="fa fa-sign-out" style="font-size:36px" title="로그아웃"></i></button> 
		<div id="back">
		  <button onclick="location.href='Main'" class="btn btn-outline-dark">처음으로</button>
		</div>
		</div>
	</div>