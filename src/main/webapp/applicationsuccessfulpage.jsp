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
      background-color: #f2f2f2;
      display: flex;
      height: 100vh;
    }

    #container {
      display: flex;
      width: 100%;
    }
    .form-control option {
    background-color: #fff; /* Background color */
    color: #333; /* Text color */
    font-size: 14px; /* Text size */
}

/* Style for the selected option */
.form-control option:checked {
    background-color: #f0f0f0; /* Background color when selected */
    font-weight: bold; /* Bold text when selected */
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
      width: 100%;
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
      background-color: darkblue;
      color: #fff;
      padding: 8px 12px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
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
  <div id="container">
    <div id="left-half">
      <div id="search-bar">
       <p style="color: darkblue; font-size: 20px;"> 𝑻𝒂𝒍𝒆𝒏𝒕𝑭𝒐𝒓𝒈𝒆 <img src="/images/search.png" width="30px" height="30" /></p>
        <input type="text" placeholder="Search for jobs">
        <button class="apply-btn">Search</button>
      </div>

      <!-- Sample job cards -->
     <br><br><br><br>
  <div class="card-body">
       <p style="color: darkblue; font-size: 24px;"> 𝑻𝒂𝒍𝒆𝒏𝒕𝑭𝒐𝒓𝒈𝒆 𝑨𝒑𝒑𝒍𝒚 𝑱𝒐𝒃</p>
       
          <h3><font color="green">${msg}</font></h3><br>
       
        <form action="applicanthome" method="get" id="passwordForm" >
        
         <button type="submit" class="btn btn-primary">Search For More Jobs..</button>
           
        </form>

 </div> </div>
   <br>
    <div id="right-half">
    <br><br><br><br>
      <div class="card">
  <img src='displayApplicantimage?id=${cid}' alt="Upload Your image here" style="width:100%"   height="170px" id="profileimage">
   <p style="color: black;">${fname} ${lname}  </p>
  
  
</div>

      <nav>
        <a href="applicanthome">Home</a>
        <a href="#">My Applications</a>
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
  
   <script>
        function validateFile() {
            var fileInput = document.getElementById('book');
            var filePath = fileInput.value;
            var allowedExtensions = /(\.pdf)$/i;
            
            if (!allowedExtensions.exec(filePath)) {
                alert('Invalid file format. Please select a .pdf file.');
                fileInput.value = ''; // Clear the file input field
                return false;
            }
            return true;
        }
    </script>
</body>
</html>
