	<style>
		#sideFold, #sidebar { background-color: #E6E6FA;}
		
		#sidebar { display: none;}
		
		#main { margin-left: 7%;}
		
		#back {
			position: fixed;
	  	bottom: 20px;
	  	left: 20px;
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