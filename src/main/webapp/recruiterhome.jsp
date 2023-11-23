<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>TalentForge Recruiter Home</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css'><link rel="stylesheet" href="/css/style.css">

</head>
<body>
<nav>
  <div class="wrapper">
    <div class="logo"><p style="color: white; font-size: 24px;"> <a href="recruiterhome"> 𝑻𝒂𝒍𝒆𝒏𝒕𝑭𝒐𝒓𝒈𝒆</a> <img src="/images/search.png" width="30px" height="30" /></p>
</div>
    <input type="radio" name="slider" id="menu-btn">
    <input type="radio" name="slider" id="close-btn">
    <ul class="nav-links">
      <label for="close-btn" class="btn close-btn"><i class="fas fa-times"></i></label>
      <li><a href="recruiterhome">Home</a></li>
      <li><a href="postajob">Post a Job</a></li>
      <li>
        <a href="" class="desktop-item">Actions</a>
        <input type="checkbox" id="showDrop">
        <label for="showDrop" class="mobile-item">Dropdown Menu</label>
        <ul class="drop-menu">
          <li><a href="recruiterviewjobs">VIEW ALL JOBS</a></li>
          <li><a href="viewalljobapplications">JOB APPLICATIONS</a></li>
        
        </ul>
      </li>
      
      <li><a href="companylogin">Logout</a></li>
    </ul>
    <label for="menu-btn" class="btn menu-btn"><i class="fas fa-bars"></i></label>
  </div>
</nav>

<div class="body-text">
  <div class="title">Welcome <h1><img src='displaycompanyimage?id=${rid}' alt="Company Logo" height="90px" width="180px"></h1></div>
  <div class="sub-title">using only HTML & CSS</div>
</div>
<!-- partial -->
  
</body>
</html>
    