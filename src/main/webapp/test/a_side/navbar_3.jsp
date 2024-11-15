<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <title>부트스트랩 세로형 네비게이션 바</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
  <style>
    .sidebar {
      position: fixed;
      top: 0;
      left: 0;
      height: 85vh;
      width: 150px;
      background-color: #f0f0f0;
      overflow-y: auto;
      transition: width 0.3s ease-in-out;
    }
    .sidebar.collapsed {
      width: 50px;
    }
  </style>
  <script>
    const sidebar = document.getElementById('sidebar');
    const sidebarToggle = document.getElementById('sidebarToggle');

    sidebarToggle.addEventListener ('click', () => {
      sidebar.classList.toggle('collapsed');
    });
  </script>
</head>
<body>

  <nav id="sidebar" class="sidebar navbar-dark bg-dark">
    <button id="sidebarToggle" class="btn btn-dark">☰</button>
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link active" href="#">홈</a> </li>
      <li class="nav-item">
        <a class="nav-link" href="#">링크 9</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">링크 1</a>
      </li>
      </ul>
  </nav>

  <div class="container-fluid">
    <h1>메인 콘텐츠</h1>
    <p>세로형 네비게이션 바를 사용한 예시입니다.</p>
  </div>

  
</body>
</html>