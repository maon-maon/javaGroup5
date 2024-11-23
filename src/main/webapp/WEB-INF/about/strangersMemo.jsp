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
  <title>strangersMemo.jsp</title>
  <link rel="shortcut icon" href="${ctp}/images/favicon/favicon.ico" />
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <jsp:include page="/include/bs4.jsp"/>
  <jsp:include page="/include/sidebarStyle.jsp"/>
  <jsp:include page="/include/weekSchedule.jsp"/>
  <jsp:include page="/include/mainContent.jsp"/>
  <script>
  'use strict';

  	function reportBtn() {
			let idx = $("#reportNum").val();

			if(!$("input[type=radio][name=report]:checked").is(':checked')) {
				alert("문의 유형을 선택해주세요");
				return false;
			}
			let cpCtg = reportForm.report.value;
			
			if(cpCtg == '기타') {
				if($("#reportTxt").val().trim() == "") {
					alert("자세한 내용을 기입해 주세요");
					reportForm.reportTxt.focus();
					return false;
				}
			}
			let cpContent = reportForm.reportTxt.value;
			
			let query = {
				cpCtg : cpCtg,
				cpContent : cpContent,
				cpMid : '${sAmid}',
				cpMemoIdx : idx
			}

			 $.ajax({
				type : "post",
				url : "ReportComplaintOk.me",
				data : query,
				success : function (res) {
					if(res != '0') {
						alert("신고되었습니다.");
						location.reload();
					}
					else {
						alert("신고처리 실패하였습니다.");
					}
				} ,
				error : function () {
					alert("전송오류");
				}
			});
		} 
  	
  	//모달 호출
  	function reportModalBtn(idx) {
			$("#reportNum").val(idx);
			$("#reportModal").modal('show');
		}
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
			<!-- 주간캘린더 -->
				<div class="text-center">
					<table>
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
							<td style="width: 14%; vertical-align: middle; <c:if test="${today == dd}">background-color: #E6E6FA;</c:if> color: #f00;">${dd}</td>
							<td style="width: 14%; vertical-align: middle; <c:if test="${today == dd+1}">background-color: #E6E6FA;</c:if>" >${dd+1}</td>
							<td style="width: 14%; vertical-align: middle; <c:if test="${today == dd+2}">background-color: #E6E6FA;</c:if>" >${dd+2}</td>
							<td style="width: 14%; vertical-align: middle; <c:if test="${today == dd+3}">background-color: #E6E6FA;</c:if>" >${dd+3}</td>
							<td style="width: 14%; vertical-align: middle; <c:if test="${today == dd+4}">background-color: #E6E6FA;</c:if>" >${dd+4}</td>
							<td style="width: 14%; vertical-align: middle; <c:if test="${today == dd+5}">background-color: #E6E6FA;</c:if>" >${dd+5}</td>
							<td style="width: 14%; vertical-align: middle; <c:if test="${today == dd+6}">background-color: #E6E6FA; </c:if>  color: #00f;">${dd+6}</td>
						</tr>
					</table>	
				</div>
			<h4 class="text-center">누군가 붙여놓은 쪽지들</h4>
			<!-- 최근 메모 출력 -->
			<c:forEach var="vo" items="${vos}" varStatus="st">
				<c:if test="${vo.inCpCnt < 5}">
	      	<div class="section-BG">
	        	<div class="section">
		      		<!-- -- -->
		        	<div class="section">
		        		<span class="row mb-2">
		        			<button class="w3-button w3-white w3-hover-white w3-border w3-border-indigo w3-block col-4">날짜</button>
		        		 	<button class="w3-button w3-white w3-hover-white w3-border w3-border-indigo w3-block col">${fn:substring(vo.inDate,0,19)}</button>
		        		</span>
		        		<span class="row mb-2">
		        			<button class="w3-button w3-white w3-hover-white w3-border w3-border-indigo w3-block col-4">카테고리</button>
		        		 	<button class="w3-button w3-white w3-hover-white w3-border w3-border-indigo w3-block col">${vo.inCtg}</button>
		        		</span>
		        		<span class="row">
		        			<button class="w3-button w3-white w3-hover-white w3-border w3-border-indigo w3-block col-4">타이틀</button>
		        		 	<button class="w3-button w3-white w3-hover-white w3-border w3-border-indigo w3-block col">${vo.inTitle}</button>
		        		</span>
		        	</div>
			        <div class="section_sc">
			        	<%-- 스코어 : ${vo.inScore} --%>
	        			<button class="w3-button w3-white w3-hover-white w3-border w3-border-indigo w3-block">
				        	<div id="sc" class="text-center">
					        	<c:if test="${vo.inScore == 1}"><img src="${ctp}/images/sc/sc1.png"></c:if>
					        	<c:if test="${vo.inScore == 2}"><img src="${ctp}/images/sc/sc2.png"></c:if>
					        	<c:if test="${vo.inScore == 3}"><img src="${ctp}/images/sc/sc3.png"></c:if>
					        	<c:if test="${vo.inScore == 4}"><img src="${ctp}/images/sc/sc4.png"></c:if>
					        	<c:if test="${vo.inScore == 5}"><img src="${ctp}/images/sc/sc5.png"></c:if>
					        	<c:if test="${vo.inScore == 6}"><img src="${ctp}/images/sc/sc6.png"></c:if>
					        	<c:if test="${vo.inScore == 7}"><img src="${ctp}/images/sc/sc7.png"></c:if>
				        	</div>
	        			</button>
		        	</div>
	        	</div>
		        <div class="section">
		        	<div class="row">
				        <div class="col">
									<c:set var="fNameArr" value="${fn:split(vo.inPhoto,'.')}" />
									<c:set var="extName" value="${fn:toLowerCase(fNameArr[fn:length(fNameArr)-1])}" /> <!-- 확장자 구하기 -->
									<c:if test="${extName == 'jpg' || extName == 'gif' || extName == 'png'}">
										<img  src="${ctp}/images/imgData/${vo.inPhoto}" width="150px" />
									</c:if>
				        </div>
				        <div class="text-right col">
					        <button type="button" onclick="reportModalBtn(${vo.inIdx})" class="w3-button w3-hover-white "><i class="material-icons">more_vert</i></button>
				        </div>
		        	</div>
		        </div>
	        </div>
				</c:if>
      </c:forEach>
		</div>
		<div id="reportNum"></div>
    <!-- The Modal 시작 -->
	  <div class="modal" id="reportModal">
	    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
	      <div class="modal-content">
	        <!-- Modal Header -->
	        <div class="modal-header">
	          <h3 class="modal-title">신고할 내용을 선택해주세요</h3>
	          <button type="button" class="close" data-dismiss="modal">×</button>
	        </div>
	        <!-- Modal body -->
	        <div class="modal-body">
	        	<b>신고하실 유형의 버튼을 누르신후 내용을 기입해주세요</b>
	        	<hr/>
	        	<form name="reportForm">
	        		<div><input type="radio" name="report" id="report1" value="광고,홍보,영리목적"/> 광고,홍보,영리목적</div>
		          <div><input type="radio" name="report" id="report2" value="욕설,비방,차별,혐오"/> 설,비방,차별,혐오</div>
		          <div><input type="radio" name="report" id="report3" value="불법정보"/> 불법정보</div>
		          <div><input type="radio" name="report" id="report4" value="음란,청소년유해"/> 음란,청소년유해</div>
		          <div><input type="radio" name="report" id="report5" value="개인정보노출,유포,거래"/> 개인정보노출,유포,거래</div>
		          <div><input type="radio" name="report" id="report6" value="도배,스팸"/> 도배,스팸</div>
		          <div><input type="radio" name="report" id="report7" value="기타"/> 기타(기타를 선택하신 경우 자세한 내용을 기입해 주세요)</div>
		      		<div>
			          <textarea rows="3" id="reportTxt" name="reportTxt" class="form-control" ></textarea>
		      		</div>
		        	<hr/>
							<input type="button" value="확인" onclick="reportBtn()" class="w3-button w3-white w3-hover-blue-grey w3-border w3-border-black w3-round-large form-control" />								        	
	        	</form>
	        </div>
	        
	        <!-- Modal footer -->
	        <div class="modal-footer">
	          <button type="button" class="w3-button w3-hover-red w3-border w3-border-red w3-round-large" data-dismiss="modal">Close</button>
	        </div>
		    </div>
	    </div>
	  </div>
		<!-- The Modal 끝 -->
		
		
		<!-- footer -->
		<div id="footer">
			<jsp:include page="/include/ft.jsp"/>
		</div>
	</div>
	<!-- 본문 끝 -->
</body>
</html>