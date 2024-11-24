	<style>
		#sideFold, #sidebar { background-color: #E6E6FA;}
		
		#sidebar { display: none;}
		
		#main { 
			margin-left: 7%;
			padding-top: 10px;
		}
		#back {
			position: fixed;
	  	bottom: 20px;
	  	left: 20px;
		}
		
		#main { 
	    min-height: calc(100% - 60px); /* 화면 꽉차게 변경 */
		}
		#footer { /* 하단에 고정 */
			position: fixed ;
	    bottom: 0;
	    width: 100%;
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