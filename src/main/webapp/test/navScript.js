// myScript.js 파일

const toggleButton = document.getElementById('sidebarToggle');
const sidebar = document.getElementById('sidebar');

toggleButton.addEventListener('click', () => {
  sidebar.classList.toggle('collapsed');
});