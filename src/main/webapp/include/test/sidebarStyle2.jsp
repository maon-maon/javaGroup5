<style>
		#sideIcon, #sidebar { background-color: #E6E6FA;}
  </style>
  <script>
		function sideOpen() {
		  document.getElementById("main").style.marginLeft = "20%";
		  document.getElementById("sidebar").style.width = "20%";
		  document.getElementById("sidebar").style.display = "block";
		  document.getElementById("sideFold").style.display = 'none';
		  //document.getElementById("openNav").style.display = 'none';
		  //document.getElementById("sideIcon").style.display = "none";
		}
		function sideClose() {
		  document.getElementById("main").style.marginLeft = "0%";
		  document.getElementById("sidebar").style.display = "none";
		  document.getElementById("sideFold").style.display = "inline";
		  //document.getElementById("openNav").style.display = "inline-block";
		  //document.getElementById("sideIcon").style.display = "inline-block";
		}
	</script>