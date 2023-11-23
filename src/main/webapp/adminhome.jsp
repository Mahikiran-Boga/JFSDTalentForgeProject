<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>TalentForge Recruiter Home</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css'><link rel="stylesheet" href="/css/style.css">

</head>
<style>
   body {
            display: flex;
            justify-content: space-between;
            height: 120vh;
            margin: 0;
        }
       

        .column {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .card {
            width: 200px;
            height: 150px;
            background-color: lightblue;
            border-radius: 10px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            position: relative;
            cursor: pointer;
            margin: 35px; /* Add some margin between cards */
        }

        .count {
            font-size: 2em;
            font-weight: bold;
        }

        .label {
            margin-top: 10px;
        }

        /* Hover effect */
        .card:hover {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transform: scale(1.05);
            transition: box-shadow 0.3s ease-in-out, transform 0.3s ease-in-out;
            background-color: lightpink;
            
        }


</style>
<body>
<nav>
  <div class="wrapper">
    <div class="logo"><p style="color: white; font-size: 24px;"> <a href="adminhome"> 𝑻𝒂𝒍𝒆𝒏𝒕𝑭𝒐𝒓𝒈𝒆</a> <img src="/images/search.png" width="30px" height="30" /></p>
</div>
    <input type="radio" name="slider" id="menu-btn">
    <input type="radio" name="slider" id="close-btn">
    <ul class="nav-links">
      <label for="close-btn" class="btn close-btn"><i class="fas fa-times"></i></label>
      <li><a href="adminhome">Home</a></li>
      <li><a href="">View All Applicants</a></li>
            <li><a href="">View All Companies</a></li>
      
      <li>
        <a href="" class="desktop-item">Actions</a>
        <input type="checkbox" id="showDrop">
        <label for="showDrop" class="mobile-item">Dropdown Menu</label>
        <ul class="drop-menu">
          <li><a href="">VIEW ALL JOBS</a></li>
          <li><a href="">JOB APPLICATIONS</a></li>
        
        </ul>
      </li>
      
      <li><a href="admin">Logout</a></li>
    </ul>
    <label for="menu-btn" class="btn menu-btn"><i class="fas fa-bars"></i></label>
  </div>
</nav>

 <div class="column">
        <div class="card" id="registerCard1">
            <span class="count">${applicantCount}</span>
            <span class="label">Total Applicants</span>
        </div>
        <div class="card" id="registerCard1">
            <span class="count">${recruiterCount}</span>
            <span class="label">Total Companies</span>
        </div>
        <!-- Add more cards as needed -->
    </div>

    <div class="column">
        <div class="card" id="registerCard2">
            <span class="count">${jobsCount}</span>
            <span class="label">Total Jobs Posted</span>
        </div>
        <!-- Add more cards as needed -->
 <div class="card" id="registerCard2">
            <span class="count">${jobApplicationsCount}</span>
            <span class="label">Total Jobs Applied</span>
        </div>
    </div>
<!-- partial -->
  
</body>
</html>
    