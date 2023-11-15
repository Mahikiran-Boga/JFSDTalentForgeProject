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
        <a href="#" class="desktop-item">Dropdown Menu</a>
        <input type="checkbox" id="showDrop">
        <label for="showDrop" class="mobile-item">Dropdown Menu</label>
        <ul class="drop-menu">
          <li><a href="recruiterviewjobs">view jobs</a></li>
          <li><a href="#">Drop menu 2</a></li>
          <li><a href="#">Drop menu 3</a></li>
          <li><a href="#">Drop menu 4</a></li>
        </ul>
      </li>
      <li>
        <a href="#" class="desktop-item">Mega Menu</a>
        <input type="checkbox" id="showMega">
        <label for="showMega" class="mobile-item">Mega Menu</label>
        <div class="mega-box">
          <div class="content">
            <div class="row">
              <img src="https://fadzrinmadu.github.io/hosted-assets/responsive-mega-menu-and-dropdown-menu-using-only-html-and-css/img.jpg" alt="">
            </div>
            <div class="row">
              <header>Design Services</header>
              <ul class="mega-links">
                <li><a href="#">Graphics</a></li>
                <li><a href="#">Vectors</a></li>
                <li><a href="#">Business cards</a></li>
                <li><a href="#">Custom logo</a></li>
              </ul>
            </div>
            <div class="row">
              <header>Email Services</header>
              <ul class="mega-links">
                <li><a href="#">Personal Email</a></li>
                <li><a href="#">Business Email</a></li>
                <li><a href="#">Mobile Email</a></li>
                <li><a href="#">Web Marketing</a></li>
              </ul>
            </div>
            <div class="row">
              <header>Security services</header>
              <ul class="mega-links">
                <li><a href="#">Site Seal</a></li>
                <li><a href="#">VPS Hosting</a></li>
                <li><a href="#">Privacy Seal</a></li>
                <li><a href="#">Website design</a></li>
              </ul>
            </div>
          </div>
        </div>
      </li>
      <li><a href="#">Feedback</a></li>
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
    