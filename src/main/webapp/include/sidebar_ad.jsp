<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!-- Sidebar -->
	<div id="sidebar" class="w3-sidebar w3-bar-block  w3-card " >
		<div>
			<img src="${ctp}/images/logo/na5.png" width="150px" alt="어바웃로고">
			<br/>
			<ul>
				<li><button type="button" onclick="location.href='.me'" class="w3-bar-item w3-button">회원 관리</button></li>
					<ul>
				  	<li><button type="button" onclick="location.href='.me'" class="w3-bar-item w3-button">신규 회원 관리</button></li>
				    <li><button type="button" onclick="location.href='.me'" class="w3-bar-item w3-button">기존 회원 관리</button></li>
				  </ul>
				<li><button type="button" onclick="location.href='.me'" class="w3-bar-item w3-button">데이터 관리</button></li>
					<ul>
				  	<li><button type="button" onclick="location.href='.me'" class="w3-bar-item w3-button">월간 데이터 분석</button></li>
				  </ul>
				<li><button type="button" onclick="location.href='NoticeUpdate.me'" class="w3-bar-item w3-button">공지사항 관리</button></li>
				<li><button type="button" onclick="location.href='ComplaintList.me'" class="w3-bar-item w3-button">신고 관리</button></li>
					<ul>
				    <li><button type="button" onclick="location.href='ComplaintUser.me'" class="w3-bar-item w3-button">회원 문의 내역</button></li>
				    <li><button type="button" onclick="location.href='ComplaintMemo.me'" class="w3-bar-item w3-button">타인의 메모 신고</button></li>
				  </ul>
			</ul>
		</div>
		<div id="back">
		  <button onclick="location.href='Dashboard.me'" class="btn btn-outline-dark">관리자 메인</button><br>
		  <button onclick="location.href='Home.me'" class="btn btn-outline-dark">처음으로</button>
		</div>
	</div>
	<!-- Sidebar -->