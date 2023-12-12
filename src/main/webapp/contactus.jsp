<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>TalentForge | Contact Us</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css'><link rel="stylesheet" href="/css/style.css">
<link rel="shortcut icon" type="image/png" href="/images/apple-touch-icon.png"/>
                <link rel="shortcut icon" type="image/png" href="/images/apple-touch-icon.png"/>

</head>
<style>

   .background-container {
            background-image: url('/images/background.jpg'); /* Replace 'your-image-url.jpg' with the actual path to your image */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh; /* Ensure the body takes up the full height of the viewport */
            justify-content: center;
            align-items: center;
        }

 #searchInput {
  max-width:160px; /* Set the width of the input */
  padding: 10px; /* Add padding for better spacing */
  border: 1px solid #ccc; /* Add a border for a defined boundary */
  border-radius: 5px; /* Add rounded corners */
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.1); /* Add a subtle box shadow for depth */
  font-size: 26px; /* Set the font size */
  transition: all 0.3s ease; /* Add a smooth transition effect */
}

#searchInput::placeholder {
  color: #999;
  transition: all 0.3s ease;
}

#searchInput.typing::placeholder,
#searchInput:focus::placeholder {
  opacity: 0;
  transform: translateX(-100%);
}
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

.container {
  max-width: 600px;
  margin: 50px auto;
  background-color: transparent;
  padding: 20px;
  border-radius: 8px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

form {
  display: grid;
  gap: 20px;
}

h2 {
  text-align: center;
  color: #333;
}

.input-group {
  display: grid;
  gap: 10px;
}

label {
  font-weight: bold;
}

input,
textarea {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
}

button {
  padding: 10px;
  background-color: #778A35;
  color: #fff;
  border: none;
  border-radius: 14px;
  cursor: pointer;
}

button:hover {
  background-color: #778A35;
}
</style>
<body>
<nav>
  <div class="wrapper">
    <p > <a href="/"> <img src="/images/greennavlogo.png" width="180px" height="80" /></a></p>
  

    <input type="radio" name="slider" id="menu-btn">
    <input type="radio" name="slider" id="close-btn">
    <ul class="nav-links">
      <label for="close-btn" class="btn close-btn"><i class="fas fa-times"></i></label>
      <li><a href="/"><i class="fa fa-home">  HOME</i></a></li>
      <li><a href="viewalljobs"><i class='fas fa-bullhorn' > &nbsp;JOBS</i></a></li>
      <li><a href="contactus"><i class="fa fa-phone"> CONTACT US</i></a></li>
       <li><a href="ApplicantLogin"><i class='fas fa-user-tie'> &nbsp;APPLICANT LOGIN</i></a></li>
      <li><a href="companylogin"><i class='fa fa-building'>&nbsp; COMPANY LOGIN</i>
      </a></li>
      
    </ul>
    <label for="menu-btn" class="btn menu-btn"><i class="fas fa-bars"></i></label>
  </div>
  </div>
</nav>

 
<!-- partial -->

<br>
<div class="background-container">
<br><br>

 <div class="container">
    <form action="contactusform" method="post">
      <h2>Contact Us</h2>
      <div class="input-group">
        <label for="name">Your Name:</label>
        <input type="text" id="name" name="name" placeholder="Enter Your Name Here " required>
      </div>
      <div class="input-group">
        <label for="email">Your Email:</label>
        <input type="email" id="email" name="email" placeholder="Enter Valid Email 📧" required>
      </div>
      <div class="input-group">
        <label for="subject">Subject</label>
        <input type="text" id="subject" name="subject" placeholder="Enter Subject here" required>
      </div>
      <div class="input-group">
        <label for="message">Your Message:</label>
        <textarea id="message" name="message" rows="4" placeholder="Enter Your Message " required></textarea>
      </div>
      <div class="input-group">
        <button type="submit">Submit</button>
      </div>
    </form>
  </div>
  </div>
  </body>
</html>
    