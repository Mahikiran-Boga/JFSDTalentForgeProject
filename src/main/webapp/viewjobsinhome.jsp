<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title> Applicant Login</title>
      <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css'><link rel="stylesheet" href="/css/style.css">
    

   
</head>
<style>

body{
align-items: center;
}
     .apply-btn {
  display: inline-block;
  background-color: #778A35;
  color: #fff;
  padding: 8px 12px;
  border: none;
  width:300px;
  margin-left:500px;
  border-radius: 4px;
  text-align: center; /* Center the text */
  
  text-decoration: none; /* Remove underline */
  cursor: pointer;
}

.apply-btn:hover {
  background-color: #097969; /* Change color on hover if desired */
}

    .job-card {
      background-color: #fff;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      padding: 8px;
      display: flex;
      flex-direction: column;
      gap: 2px;	
    }

    .job-card img {
      max-width: 200px;
      max-height: 100px;
      border-radius: 0%;
    }

</style>

<body>
<nav>

  <div class="wrapper">
    <div class="logo"><p style="color: white; font-size: 24px;"> <a href="/"> 𝑻𝒂𝒍𝒆𝒏𝒕𝑭𝒐𝒓𝒈𝒆</a> <img src="/images/search.png" width="30px" height="30" /></p>
</div>
    <input type="radio" name="slider" id="menu-btn">
    <input type="radio" name="slider" id="close-btn">
    <ul class="nav-links">
      <label for="close-btn" class="btn close-btn"><i class="fas fa-times"></i></label>
      <li><a href="/">Home</a></li>
      <li><a href="viewalljobs">Jobs</a></li>
      
       <li><a href="ApplicantLogin">Applicant Login</a></li>
      <li><a href="companylogin">Company Login</a></li>
      
    </ul>
    <label for="menu-btn" class="btn menu-btn"><i class="fas fa-bars"></i></label>
  </div>
</nav>
 
    <br><br><br><br>
    <h2 align="center" style="color: #097969">It's Your Time..&nbsp;Apply Now! </h2>
        <c:forEach items="${jobslist}" var="job">
    
    <div class="job-card">
      <img src='displaycompanyimage?id=${job.id}' alt="Company Logo" height="45px" width="80px">
      <h3><c:out value="${job.jobtitle}"></c:out></h3>
      
         <c:if test="getApplicationStatus?jobtitle=${job.jobtitle}&companyname=${job.companyname}==true">
   			 <div class="verification-container">
        		<div class="verified-tick">
            		<svg class="tick-icon" viewBox="2 2 12 19">
               		 <path d="M2 12l4 4 8-8" stroke="#fff" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round"/>
            		</svg>
        		</div>
       		 <div class="verification-text">Verified</div>
    		</div>
        </c:if>


      <p>Location: <c:out value="${job.location}"></c:out></p>
      <p>Skills: <c:out value="${job.skills}"></c:out></p>
      <p>Description: <c:out value="${job.description}"></c:out></p>
      <p>Salary: <c:out value="${job.salary}"></c:out></p>
        <a href="ApplicantLogin" class="apply-btn">Apply</a>
    </div>
    <br>
   </c:forEach>
    
</body>

</html>