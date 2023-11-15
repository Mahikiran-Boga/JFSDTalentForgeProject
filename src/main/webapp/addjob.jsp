<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>TalentForge Recruiter Home</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css'><link rel="stylesheet" href="/css/style.css">
  <style>
  .container {
    max-width: 600px;
    margin: auto;
}

.registration-section {
    text-align: center;
    padding: 20px;
}

.card {
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    overflow: hidden;
}

.card-body {
    padding: 20px;
}

#registerimage {
    max-width: 100%;
    height: auto;
}

h5 {
    color: red;
}

.card p {
    color: darkblue;
    font-size: 24px;
}

form {
    margin-top: 20px;
}

.form-control {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

.btn-primary {
    background-color: #007bff;
    color: #fff;
    border: none;
    padding: 10px 20px;
    border-radius: 4px;
    cursor: pointer;
}

.btn-primary:hover {
    background-color: #0056b3;
}

a {
    text-decoration: none;
    color: #007bff;
}

a:hover {
    text-decoration: underline;
}

.error {
    color: red;
}

/* Additional styles for responsiveness */
@media (max-width: 768px) {
    .container {
        width: 100%;
    }
}
  
  
  </style>
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
          <br>       <br>       <br>       <br>	
<div class="container">
    <div class="registration-section">
        <img id="registerimage" alt="" src="images/register1.png">

        <div class="card">
            <div class="card-body">
                <h5 align="center" style="color:red">${msg}</h5>
       <p style="color: darkblue; font-size: 24px;"> 𝑻𝒂𝒍𝒆𝒏𝒕𝑭𝒐𝒓𝒈𝒆 𝑷𝒐𝒔𝒕 𝒏𝒆𝒘 𝑱𝒐𝒃<img src="/images/search.png" width="30px" height="30" /></p>
       
     

       
        <form action="addjob" method="post" id="passwordForm" enctype="multipart/form-data">
            <div class="mb-3">
                <label for="email">Job Title:</label>
                <input type="text" class="form-control"  name="jobtitle" placeholder="Enter Job Title" required>
            </div>
        
            <div class="mb-3">
                <label for="last_name">Job Location:</label>
                <input type="text" class="form-control" name="location" placeholder="Enter Job Location" required>
            </div>
            <div class="mb-3">
                <label for="phone_number">Skills Required:</label>
                <input type="text" class="form-control" id="phone_number" name="skills"
                    placeholder="Enter Skills Required" required>
            </div>
            <div class="mb-3">
                <label for="address">Job Description:</label>
                <textarea class="form-control" id="address" name="description" rows="3"
                    placeholder="Enter Job Description" required></textarea>
            </div>
            <div class="mb-3">
            <label for="password1">Salary:</label>
            <input type="number" class="form-control"  name="salary"
                placeholder="Enter Salary" required>
        </div>
          <div class="mb-3">
            <label for="password1">Company name:</label>
            <input type="text" class="form-control" value="${rcompanynmae}" name="companyname" readonly
                required>
        </div>
         <div class="mb-3">
            <label for="password1">Company Logo:</label>
            <input type="file" class="form-control"  name="companyimage"
                required>
        </div>
       
      
           
             
        
            <button type="submit" class="btn btn-primary">Post Job</button>
        </form>
<!-- partial -->
  
</body>
</html>
    