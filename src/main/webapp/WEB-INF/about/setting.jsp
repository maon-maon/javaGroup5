<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>설정</title>
  <link rel="shortcut icon" href="${ctp}/images/favicon/favicon.ico" />
  <jsp:include page="/include/bs4.jsp"/>
  <jsp:include page="/include/sidebarStyle.jsp"/>
	<style>
		.grid-container {
		  display: grid;
		  grid-template-columns: auto;
		  grid-gap: 10px; 
		  padding-top: 10%;
		}
		.grid-item {
		  padding: 10px;
		  border: 1px solid #ddd; 
		}
		
		.radio-container {
		  display: flex;
		  align-items: center; 
		  margin-bottom: 5px; 
		}
		.form-label {
		  margin-left: 5px;
		}
	</style>
	<script>
		'use strict';
		
		function complaintCheck() {
			if(!$("input[type=radio][name=cpCtg]:checked").is(':checked')) {
				alert("문의 유형을 선택해주세요");
				return false;
			}
			let cpCtg = complaintForm.cpCtg.value;
			alert("cpCtg   " +cpCtg);
			if(cpCtg == '탈퇴신청') {
				if($("#complaintTxt").val().trim() == "") {
					alert("자세한 내용을 기입해 주세요");
					complaintForm.complaintTxt.focus();
					return false;
				}
			}
			let cpContent = complaintForm.complaintTxt.value;
			
			let query = {
				cpCtg : cpCtg,
				cpContent : cpContent,
				cpMid : '${sAmid}'
			}
			console.log("query",query);
			
			$.ajax({
				type : "post",
				url : "UserComplaintOk.me",
				data : query,
				success : function (res) {
					if(res != '0') {
						alert("문의사항을 쪽지함에 넣었습니다");
						location.reload();
					}
					else {
						alert("쪽지함이 망가져서 쪽지가 분실되었어요. 다시 적어주세요.");
					}
				} ,
				error : function () {
					alert("전송오류");
				}
			});
		}
		
		function googleDriveBackup() {
			alert("연동된 구글 계정 드라이브에 백업되었습니다.");
		}
		function pageModeBtn() {
			alert("변경되었습니다.");
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
			<div class="grid-container">
			  <div class="grid-item">
			    <div>페이지 변경모드</div>
	          <input type="radio" name="mode" id="light" value="light" class="btn-check" checked/><label for="light" class="form-label mr-3">밝음</label>
	          <input type="radio" name="mode" id="dark" value="dark" class="btn-check" /><label for="dark" class="form-label">어두움</label>
					<div class="input-group-append">
						<button onclick="pageModeBtn()" class="btn btn-dark">변경</button>
					</div>
			  </div>
			  <div class="grid-item">
			    <div>구글드라이브</div>
			    <button onclick="googleDriveBackup()"class="btn btn-dark" >백업</button>
			  </div>
			  <div class="grid-item">
			    <div>회원정보</div>
			    <button onclick="location.href='MemberVerify.me'" class="btn btn-dark" >수정</button>
			  </div>
			  <div class="grid-item">
			    <div>운영진</div>
			    <button data-toggle="modal" data-target="#complaintModal" class="btn btn-dark">문의</button>
			  </div>
			  <c:if test="${vo.aLevel == 0}">
				  <div class="grid-item">
				    <div>관리페이지</div>
				    <button onclick="location.href='Dashboard.me'" class="btn btn-dark">접속</button>
				  </div>
			  </c:if>
			</div>		
		</div>
		
		<!-- The Modal 시작 -->
	  <div class="modal" id="complaintModal">
	    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
	      <div class="modal-content">
	      
	        <!-- Modal Header -->
	        <div class="modal-header">
	          <h3 class="modal-title">운영진 문의 메모장입니다</h3>
	          <button type="button" class="close" data-dismiss="modal">×</button>
	        </div>
	        
	        <!-- Modal body -->
	        <div class="modal-body">
	        	<b>문의하실 유형의 버튼을 누르신후 내용을 기입해주세요</b>
	        	<hr/>
	        	<form name="complaintForm">
		        	<div>
						    <input type="radio" name="cpCtg" id="cpCtg1" value="개인정보수정" />
						    <label for="cpCtg1">개인정보수정</label>
						    <input type="radio" name="cpCtg" id="cpCtg2" value="작성메모문의" />
						    <label for="cpCtg2">작성메모문의</label>
						    <input type="radio" name="cpCtg" id="cpCtg3" value="이벤트문의" />
						    <label for="cpCtg3">이벤트문의</label>
						    <input type="radio" name="cpCtg" id="cpCtg4" value="분석데이터" />
						    <label for="cpCtg4">분석데이터</label>
						    <br>
						    <input type="radio" name="cpCtg" id="cpCtg5" value="탈퇴신청" />
						    <label for="cpCtg5">탈퇴신청</label>
						    <input type="radio" name="cpCtg" id="cpCtg6" value="기타" />
						    <label for="cpCtg6">기타</label>
							</div>
							<hr/>
		      		<div>
		      			<p>자세한 내용을 기입해 주세요</p>
			          <textarea rows="5" id="complaintTxt" name="complaintTxt" class="form-control"></textarea>
		      		</div>
		        	<hr/>
							<input type="button" value="확인" onclick="complaintCheck()" class="w3-button w3-white w3-hover-blue-grey w3-border w3-border-black w3-round-large form-control" />								        	
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