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
   /* CSS for Our Services Section */
.our_service_section {
  background-color: #f8f8f8;
  padding: 50px 0;
}

.section_title {
  text-align: center;
  font-size: 32px;
  margin-bottom: 30px;
}

.section_details {
  text-align: center;
  color: #555;
  font-size: 18px;
  margin-bottom: 50px;
}

.feature-carousel-container {
  overflow: hidden;
}

.feature-carousel {
  display: flex;
  justify-content: space-between;
  animation: scroll 10s infinite linear;
}

.feature-card {
  flex: 0 0 300px;
  background-color: #fff;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  text-align: center;
  padding: 20px;
  margin: 0 10px;
}

.feature-card img {
  width: 100%;
  max-height: 200px;
  object-fit: cover;
  margin-bottom: 15px;
}

@keyframes scroll {
  0% {
    transform: translateX(0%);
  }
  100% {
    transform: translateX(-100%);
  }
}

/* Existing styles */
/* Existing styles */

/* Adjustments for smaller screens */
@media (max-width: 768px) {
  .feature-carousel {
    animation: scroll 6s infinite linear; /* Faster animation for smaller screens */
  }

  .feature-card {
  flex: 0 0 300px;
  background-color: #fff;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  text-align: center;
  padding: 20px;
  margin: 0 10px;
}
}

@media (max-width: 480px) {
  .feature-carousel {
    animation-duration: 4s; /* Further increase animation speed for smaller screens */
  }
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
      <li><a href="">Home</a></li>
      <li><a href="viewalljobs">Jobs</a></li>
      
       <li><a href="ApplicantLogin">Applicant Login</a></li>
      <li><a href="companylogin">Company Login</a></li>
      
    </ul>
    <label for="menu-btn" class="btn menu-btn"><i class="fas fa-bars"></i></label>
  </div>
</nav>

 
<!-- partial -->
<br><br>
<section>


<img src="/images/jobsearchhome.jpg" height="350px" width="1401px">
</section>
 <section class="our_service_section">
    <h3 class="section_title">Our Top Recruiters</h3>
   
    <!-- Feature Cards Container -->
    <div class="feature-carousel-container">
      <div class="feature-carousel">
        <!-- Feature Card 1 -->
        <div class="feature-card">
          <img src="/images/wipro.jpg" alt="Service 1">
          
          <p class="feature-description">Wipro is an Indian multinational corporation that provides information technology, consultant and business process services.</p>
          <br>
          <h4 class="feature-title"> Salaries from 800000 LPA</h4><br>
        </div>
        <!-- Feature Card 2 -->
        <div class="feature-card"><br>
          <img src="/images/google.png" alt="Service 2">
          <p class="feature-description">Google LLC is an American multinational technology company focusing on artificial intelligence, online advertising, search engine technology, cloud computing.</p>
          <br>
           <h4 class="feature-title"> Salaries from 2000000 LPA</h4><br><br>
        </div>
        <!-- Feature Card 3 -->
        <div class="feature-card">
          <img src="/images/amazon.png" alt="Service 3">
          <p class="feature-description">Amazon is an American Multinational technology company focusing on e-commerce, online advertising, digital streaming, and artificial intelligence</p>
          <h4 class="feature-title"> Salaries from 2800000 LPA</h4><br><br>
          
        </div>
        <!-- Add more feature cards as needed -->
        <div class="feature-card">
          <img src="/images/ibm.png" alt="Service 3">
      
          <p class="feature-description">The International Business Machines Corporation, is an American multinational  corporation Headquartered in New York</p>
                    <h4 class="feature-title"> Salaries from 1400000 LPA</h4>
          
        </div>
        <div class="feature-card">
          <img src="/images/cisco.png" alt="Service 3"><br><br>
          <p class="feature-description">Cisco Systems, Inc., commonly known as Cisco, is an American-based multinational digital communications technology</p><br>
           <h4 class="feature-title"> Salaries from 900000 LPA</h4>
          
        </div>
      </div>
    </div>
  </section>
  </body>
</html>
    