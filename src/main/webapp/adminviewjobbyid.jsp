<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Admin Viewall Job's</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css'><link rel="stylesheet" href="/css/style.css">
<style>

 .button {
  display: inline-block;
  padding: 10px 20px;
  font-size: 16px;
  text-align: center;
  text-decoration: none;
  cursor: pointer;
  border: none;
  border-radius: 5px;
  background-color: sky	blue;
}
	
#employee {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#employee td, #employee th {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: center;
}

#employee tr:nth-child(even) {
	background-color: white;
}

#employee tr:hover {
	background-color: #ddd;
}

#employee th {
	padding-top: 12px;
	padding-bottom: 12px;
	background-color: skyblue;
	color: black;
}

.btn {
	 display: inline-block;
  padding: 10px 20px;
  font-size: 16px;
  text-align: center;
  text-decoration: none;
  cursor: pointer;
  border: none;
  border-radius: 5px;
  background-color: lightgreen;
}
.btnr {
	 display: inline-block;
  padding: 10px 20px;
  font-size: 16px;
  text-align: center;
  text-decoration: none;
  cursor: pointer;
  border: none;
  border-radius: 5px;
  background-color: #D96060;
}
.container {
            max-width: 800px;
            margin: 0 auto;
            margin-top: 30px;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
        
        .profile-info {
            text-align: center;
            font-weight:bolder;
            margin-bottom: 20px;
        }

        .profile-pic {
            width: 640px;
            height: 200px;

            object-fit: cover;
        }

        .profile-name {
            font-size: 34px;
            font-weight: bold;
            margin-top: 10px;
        }

        .profile-location {
            color: #777;
            font-weight:bolder;
            margin-top: 5px;
        }
</style>
</head>
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
      <li><a href="viewallapplicants">View All Applicants</a></li>
            <li><a href="viewallrecruiters">View All Companies</a></li>
      
      <li>
        <a href="" class="desktop-item">Actions</a>
        <input type="checkbox" id="showDrop">
        <label for="showDrop" class="mobile-item">Dropdown Menu</label>
        <ul class="drop-menu">
          <li><a href="adminviewalljobs">VIEW ALL JOBS</a></li>
          <li><a href="">JOB APPLICATIONS</a></li>
        
        </ul>
      </li>
      
      <li><a href="admin">Logout</a></li>
    </ul>
    <label for="menu-btn" class="btn menu-btn"><i class="fas fa-bars"></i></label>
  </div>
</nav>

<br>
<br>
<br>
<br>
<br>
 <h5 align="center" style="color:red">${message}</h5>
 
  <p align="center" style="font-size: 34px;font-weight: bold; color: darkblue" >View Job By Id-><i style="font-family:serif; font-size: 65px"><c:out value="${j.companyname}" /></i></p>
 <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3"> <!-- Centered column -->
                <!-- Left Column for Profile Details -->
                <div class="profile-info">
                    <img class="profile-pic" src="displaycompanyimage?id=${j.id}" alt="Profile Picture">
                    <div class="profile-name">Role :- ${j.jobtitle}</div>
                    <div class="profile-location">Location :-${j.location}</div>
                    <div class="profile-location">Skill :-${j.skills}</div>
                    <div class="profile-location">Description :-${j.description}</div>
                    <div class="profile-location">Salary :-${j.salary}</div>
                   <div class="boxed-container">
				  
				</div><br>
                </div>
            </div>
        </div>
    </div>
    <br>
    <br>
    
 
 
</body>
</html>
    