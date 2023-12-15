<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>TalentForge | Update Profile</title>
 <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css'>

  <style>
  
  /* Add some general styling to improve the appearance */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}
.view-button {
  display: inline-block;
  padding: 10px 20px;
  font-size: 16px;
  text-decoration: none;
  background-color: #778A35; /* Blue color */
  color: #fff; /* White color */
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

.view-button:hover {
  background-color: #778A35; /* Darker blue color on hover */
}

.container {
    max-width: 600px;
    margin: 20px auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

form {
    width: 100%;
}

label {
    display: block;
    margin-bottom: 8px;
}

input,
select,
textarea {
    width: 100%;
    padding: 8px;
    margin-bottom: 12px;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
}

/* Style the submit button */
button {
    background-color: #778A35;
    color: #fff;
    padding: 10px 15px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

button:hover {
    background-color: #0056b3;
}

/* Add some space between form elements */
.mb-3 {
    margin-bottom: 15px;
}

/* Style the error message */
.error {
    color: red;
    font-size: 14px;
}

/* Responsive design for smaller screens */
@media (max-width: 768px) {
    .container {
        max-width: 100%;
    }
}
  
  .card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  width:240px;
  height:250px;
  margin: auto;
  text-align: center;
  font-family: arial;
  border-radius: 15px;
}
 .card:hover {
      transform: scale(1.05);
    }

    /* Content inside the card */
    .card-content {
      padding: 20px;
    }
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
    
    

.title {
  color: grey;
  font-size: 18px;
}
    body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
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

    #right-half {
      flex: 0 0 20%;
      background-color: #F9F9FB;
      color: blue;
      display: flex;
      flex-direction: column;
      align-items: center;
      padding: 20px;
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
	background-color: darkblue;
	color: white;
}

.btn {
	background-color: skyblue;
	padding: 5px 16px;
	font-size: 12px;
	cursor: pointer;
}

.view-button {
  display: inline-block;
  padding: 10px 20px;
  font-size: 16px;
  text-decoration: none;
  background-color: #778A35; /* Blue color */
  color: #fff; /* White color */
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

.view-button:hover {
  background-color: #778A35; /* Darker blue color on hover */
}
	</style>
     <link rel="shortcut icon" type="image/png" href="/images/apple-touch-icon.png"/>
 
</head>
<body>
  <div id="container">
    <div id="left-half">
      <div id="search-bar">
       <p style="color: darkblue; font-size: 20px;"> <a href="applicanthome"> <img src="/images/navlogo.jpg" width="130px" height="50" /></a></p>
        <input type="text" placeholder="Search for jobs">
      </div>

      <!-- Sample job cards -->
      <br><br><br><br>


   
       
            <div class="card-body">
                <h5 align="center" style="color:green">${message}</h5>
                <p style="color: darkblue; font-size: 24px;"> 𝑻𝒂𝒍𝒆𝒏𝒕𝑭𝒐𝒓𝒈𝒆 𝑼𝒑𝒅𝒂𝒕𝒆 𝑷𝒓𝒐𝒇𝒊𝒍𝒆<img src="/images/search.png" width="30px" height="30" /></p>

                <form action="update" method="post" id="passwordForm" class="row g-3">
                    <div class="mb-3 col-md-6">
                        <label for="email">Email:</label>
                        <input type="email" class="form-control" id="email" name="email" value="${app.email}" readonly required>
                    </div>

                    <div class="mb-3 col-md-6">
                        <label for="first_name">First Name:</label>
                        <input type="text" class="form-control" id="first_name" name="firstname" value="${app.firstname}" required>
                    </div>

                    <div class="mb-3 col-md-6">
                        <label for="last_name">Last Name:</label>
                        <input type="text" class="form-control" id="last_name" name="lastname" value="${app.lastname}" required>
                    </div>

                    

                    <div class="mb-3 col-md-6">
                        <label for="phone_number">Phone Number:</label>
                        <input type="number" class="form-control" id="phone_number" name="contactnumber" pattern="[6789][0-9]{9}" value="${app.contactno}" required>
                    </div>

                    <div class="mb-3 col-md-6">
                        <label for="address">Address:</label>
                        <textarea class="form-control" id="address" name="address" rows="3"  required>${app.address}</textarea>
                    </div>

                    <div class="mb-3 col-md-6">
                        <label for="password1">Password:</label>
                        <input type="password" class="form-control" id="password1" name="password"  pattern="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*]).{8,30})" value="${app.password}" title="Password must contain atleast one number [0-9],uppercase [A-Z],special character [!@#$%^&*], length > 8!! try again!!" required>
                    </div>

                    <div class="mb-3 col-md-6">
                        <label for="password2">Confirm Password:</label>
                        <input type="password" class="form-control" id="password2" name="password2"  value="${app.password}" placeholder="Confirm password" required>
                        <span class="error" id="passwordError"></span>
                    </div>

                    <div class="mb-3 col-12">
                        <button type="submit" class="view-button">Update</button>
                    </div>
                </form>
</div></div>
        
   <br>
    <div id="right-half">
    <br><br><br><br>
      <div class="card">
      <br>
  <img src='displayApplicantimage?id=${cid}' alt="Upload Your image here" style="color:green; width:90%" border="2px"   height="160px" id="profileimage">
   <h3 style="color: #778A35;">${fname} ${lname}  </h3>
  
  
</div>

     <nav>
      <a href="applicanthome"><i class="fa fa-home">  HOME</i></a>
        <a href="myjobApplications"><i class="fa fa-envelope" >&nbsp;JOB APPLICATIONS</i></a>
          <a href="updateprofileApplicant"><i class='fas fa-edit' > UPDATE PROFILE</i></a>
            <a href="/"><i class="fas fa-sign-in-alt" > &nbsp;LOGOUT</i></a>
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
  
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const password1 = document.getElementById('password1');
            const password2 = document.getElementById('password2');
            const passwordError = document.getElementById('passwordError');
            const passwordForm = document.getElementById('passwordForm');

            function validatePassword() {
                if (password1.value !== password2.value) {
                    passwordError.textContent = "Passwords do not match";
                    password2.setCustomValidity("Passwords do not match");
                } else {
                    passwordError.textContent = "";
                    password2.setCustomValidity('');
                }
            }

            function handleFormSubmit(event) {
                if (password1.value !== password2.value) {
                    passwordError.textContent = "Passwords do not match";
                    password2.setCustomValidity("Passwords do not match");
                    event.preventDefault();
                } else {
                    passwordError.textContent = "";
                    password2.setCustomValidity('');
                }
            }
            
            password1.addEventListener('input', validatePassword);
            password2.addEventListener('input', validatePassword);
            passwordForm.addEventListener('submit', handleFormSubmit);
        });
    </script>
</body>
</html>
