<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>TalentForge</title>

  <style>
      
        /* Style the custom button or container */
       
  .verification-container {
      display: flex;

      align-items: center;
    }

    .verified-tick {
      width: 40px;
      height: 40px;
      background-color: #2ecc71; /* Green color */
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      margin-right: 10px;
    }

    .tick-icon {
 
      width: 25px;
      height: 25px;
      fill: #fff; /* White color */
    }

    .verification-text {
      font-size: 18px;
      color: #333; /* Dark color */
      line-height: 40px; /* Adjust line-height to match the height of the circle */
    }
   .card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.title {
  color: grey;
  font-size: 18px;
}
    body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
      background-color: white;
      display: flex;
      height: 100vh;
    }

    #container {
      display: flex;
      width: 100%;
    }

    #left-half {
      flex: 0 0 80%;
      overflow-y: auto;
      padding: 20px;
      box-sizing: border-box;
      display: flex;
      flex-direction: column;
      gap: 20px;
      max-height: 100vh; /* Set a max height to enable scrolling */
    }

    #search-bar {
      position: fixed;
      top: 0;
      left: 0;
      width: 99%;
      background-color: white;
      z-index: 1000;
      display: flex;
      align-items: center;
      padding: 10px;
      border-bottom: 1px solid #ccc;
    }

    #search-bar input {
      flex: 1;
      padding: 8px;
      font-size: 16px;
      width:80px;
    }

    #search-bar button {
      padding: 8px 16px;
      background-color: #4caf50;
      color: #fff;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }
    .btn{
      padding: 4px 6px;
      background-color: #4caf50;
      color: #fff;
      border: none;
      border-radius: 100px;
      cursor: pointer;
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



     #right-half {
      flex: 0 0 10%;
      background-color: #F9F9FB;
      color: blue;
      display: flex;
      flex-direction: column;
      align-items: center;
      padding: 15px;
      box-sizing: border-box;
    }

    nav {
      display: flex;
      flex-direction: column;
      gap: 20px;
      margin-top: auto; /* Push the nav items to the bottom */
    }

    nav a {
      color: black;
      text-decoration: none;
      font-weight: bold;
    }
  
  
     .apply-btn {
  display: inline-block;
  background-color: darkblue;
  color: #fff;
  padding: 8px 12px;
  border: none;
  border-radius: 4px;
    text-align: center; /* Center the text */
  
  text-decoration: none; /* Remove underline */
  cursor: pointer;
}

.apply-btn:hover {
  background-color: navy; /* Change color on hover if desired */
}
  </style>
</head>
  <div id="container">
    <div id="left-half">
      <div id="search-bar">
       <p style="color: darkblue; font-size: 20px;"> <a href="applicanthome"> 𝑻𝒂𝒍𝒆𝒏𝒕𝑭𝒐𝒓𝒈𝒆</a> <img src="/images/search.png" width="30px" height="30" /></p>
        <input type="text" placeholder="Search for jobs">
      </div>

      <!-- Sample job cards -->
     <br><br><br><br>
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
        <a href="applyjob?id=${job.id}" class="apply-btn">Apply</a>
    </div>

   </c:forEach>
 </div>
   <br>
    <div id="right-half">
    <br><br><br><br>
      <div class="card">
       <form action="uploadapplicantprofileimage" method="post" enctype="multipart/form-data">
  <img src='displayApplicantimage?id=${cid}' alt="Upload Your image here" style="width:100%"   height="170px" id="profileimage">
   <input type="file" class="form-control"  name="ApplicantImage"
                required>
                <button type="submit" class="btn">Change</button>
               
                </form>
  <p style="color: black;">${fname} ${lname}  </p>
  
  
</div>
      <nav>
        <a href="applicanthome">Home</a>
        <a href="myjobApplications">My Applications</a>
        <a href="#">About</a>
          <a href="#">Settings</a>
            <a href="/">Logout</a>
        <!-- Add more navigation items here -->
      </nav>
    </div>
     </div>

  <script>
    // JavaScript for handling scrolling by revealing additional job cards
    const loadMoreBtn = document.getElementById('load-more-btn');

    loadMoreBtn.addEventListener('click', () => {
      const hiddenCards = document.querySelectorAll('.job-card.hidden');

      hiddenCards.forEach(card => {
        card.classList.remove('hidden');
      });
    });
  </script>
</body>
</html>
