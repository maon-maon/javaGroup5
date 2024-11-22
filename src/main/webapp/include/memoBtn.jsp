<script>
	'use strict';
	// 책갈피 처리
	function bookmarkBtn(inIdx) {
		$.ajax({
			type : "post",
			url : "Bookmarking.me" ,
			data : {inIdx : inIdx},
			success : function(res) {
				if(res != "0") {
					alert("책갈피를 끼웠습니다.");
					location.reload();
				}
				else {
					alert("페이지를 놓쳤어요. 다시 책갈피를 끼워주세요");
				}
			} ,
			error: function() {
				alert("전송오류");
			}
		});
	}
	//공개처리
	function memoOpenBtn(inIdx) {
		$.ajax({
			type : "post",
			url : "OpenMemo.me" ,
			data : {inIdx : inIdx},
			success : function(res) {
				if(res != "0") {
					alert("빈 공간에 쪽지가 붙었어요.");
					location.reload();
				}
				else {
					alert("쪽지가 떨어졌어요. 다시 붙여주세요.");
				}
			} ,
			error: function() {
				alert("전송오류");
			}
		});
	}
	//삭제처리
	function deleteBtn(inIdx) {
		$.ajax({
			type : "post",
			url : "DeleteMemo.me" ,
			data : {inIdx : inIdx},
			success : function(res) {
				if(res != "0") {
					alert("쪽지를 지웠어요.");
					location.reload();
				}
				else {
					alert("쪽지가 아직 남아있어요. 다시 지워주세요.");
				}
			} ,
			error: function() {
				alert("전송오류");
			}
		});
	}
</script>