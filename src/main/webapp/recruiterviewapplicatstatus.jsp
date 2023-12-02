<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>TalentForge Recruiter Home</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css'><link rel="stylesheet" href="/css/style.css">
<style>
.job-card {
      position:relative;
      background-color: #fff;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      padding: 8px;
      display: flex;
      flex-direction: column;
      gap: 2px;	
      width: 1000px;
    }

    .job-card img {
      max-width: 200px;
      max-height: 100px;
      border-radius: 0%;
    }

    .workflow {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 20px;
    }

    .stage {
      position: relative;
      width: 100px;
      text-align: center;
      margin-bottom: 20px; /* Added margin for spacing between stages */
    }

    .tick, .line {
      position: absolute;
      top: 180%;
      transform: translateY(-50%);
    }

    .tick {
      left: 0;
      width: 30px;
      height: 30px;
      border-radius: 50%;
      border: 2px solid #fff;
      color: #fff;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .tick.failed {
      background-color: red; /* Color for failed status */
    }

    .line {
      left: 30px;
      height: 2px;
      width: 350px;
      background-color: #ccc;
    }

    @media (max-width: 768px) {
      .workflow {
        flex-direction: column;
        align-items: flex-start;
      }
    }
    .container {
    max-width: 800px;
    margin: 20px auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    margin-top: -70px;
}

.status-list {
    list-style: none;
    padding: 0;
}

.status-list li {
    display: flex;
    justify-content: space-between;
    align-items: center;
    border-bottom: 1px solid #ddd;
    padding: 10px 0;
}

.applicant-name {
    flex: 1;
}

.status-icon {
    width: 20px;
    height: 20px;
    background-size: cover;
}

.approved {
    background-image: url('images/approved.png'); /* Replace with the actual path to your approved icon */
}

.rejected {
    background-image: url('path-to/rejected-icon.png'); /* Replace with the actual path to your rejected icon */
}

  .animated-item {
        animation: moveUp 1.0s ease-in-out forwards;
        opacity: 0;
    }

    @keyframes moveUp {
        0% {
            opacity: 0;
            transform: translateY(-10px);
        }
        100% {
            opacity: 1;
            transform: translateY(0);
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
        <a href="#" class="desktop-item">Actions</a>
        <input type="checkbox" id="showDrop">
        <label for="showDrop" class="mobile-item">Dropdown Menu</label>
        <ul class="drop-menu">
          <li><a href="recruiterviewjobs">VIEW ALL JOBS</a></li>
          <li><a href="viewalljobapplications">JOB APPLICATIONS</a></li>
         
        </ul>
      </li>
      <li><a href="#">logout</a></li>
    </ul>
    <label for="menu-btn" class="btn menu-btn"><i class="fas fa-bars"></i></label>
  </div>
</nav>


<!-- partial -->
<br>
<br>
<br>
<br>
<br>
<br>
 
<br>
<br>
<br>

<div class="container" >
 <img src='displaycompanyimage?id=${jobid}' alt="Company Logo" height="45px" width="80px">
        <h2>Application Status for Job: ${jobtitle}</h2>
        <ul class="status-list">
            <!-- Loop through statusArray and populate the list -->
           <c:forEach var="status" items="${statuslist}">
    <li class="animated-item">
        <c:choose>
            <c:when test="${status.applicationstatus eq 'Application Rejected'}">
                <img src="images/declined.png" style="width: 100px; height: 80px; margin-bottom: -4px;"></img>
            </c:when>
            <c:otherwise>
                <img src="images/approved.png" style="width: 100px; height: 100px; margin-bottom: -4px;"></img>
            </c:otherwise>
        </c:choose>
        <span class="applicant-name" style="font-size: 20px">${status.applicationstatus}</span>
        <span></span>
    </li>
</c:forEach>

        </ul>
    </div>


</body>
<script>
    const uname = "${rcompanynmae}😊😊"; // Replace with the actual username
    const usernameElement = document.getElementById('username');

    // Function to display each letter with a delay
    function typeText(text, index) {
      if (index < text.length) {
        usernameElement.innerHTML += text.charAt(index);
        setTimeout(() => typeText(text, index + 1), 100);
      }
    }

    // Call the function with the username
    typeText(uname, 0);
  </script>
 <script>
    document.addEventListener("DOMContentLoaded", function () {
        // Add animation class to each list item with delay and repetition
        var listItems = document.querySelectorAll(".animated-item");
        listItems.forEach(function (item, index) {
            var delay = (index % 3) * 0.2; // Delay every three items
            item.style.animationDelay = delay + "s";
        });
    });
</script>

</html>
    