	<style>
		#sidebar { 
			background-color: #E6E6FA;
			width: 20%;
			display: block;
		}
		#main { margin-left: 20%;}
		
		#back {
			position: fixed;
	  	bottom: 20px;
	  	left: 20px;
		}
		#main { 
	    min-height: calc(100% - 60px); /* 화면 꽉차게 변경 */
		}
		#footer { /* 하단에 고정 */
		    bottom: 0;
		    width: 100%;
		}
		#sidebar img {
			margin-left: 15%;
		}
		ul {
		  list-style: none; /* 목록에 번호나 마커를 표시하지 않음 */
		  padding: 0;
		  margin-left: 5%;
		}
		
		li {
		  margin-bottom: 10px;
		}
		
		@media screen and (max-width: 1200px) {
			#sidebar img {
		    width: 70%;
			}
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