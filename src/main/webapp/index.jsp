<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Job Listings</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      display: flex;
      height: 100vh;
    }
   
    #left-half {
      flex: 0 0 65%;
      overflow-y: auto;
      padding: 20px;
      box-sizing: border-box;
      display: flex;
      flex-direction: column;
      gap: 20px;
      max-height: 100vh; /* Set a max height to enable scrolling */
    }

    #search-bar {
      display: flex;
      align-items: center;
      margin-bottom: 20px;
    }

    #search-bar input {
      flex: 1;
      padding: 8px;
      font-size: 16px;
    }

    #search-bar button {
      padding: 8px 16px;
      background-color: #4caf50;
      color: #fff;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    #logo-img {
      max-width: 100px;
      margin-right: 20px;
    }

    .job-card {
      background-color: #fff;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      padding: 10px;
      display: flex;
      flex-direction: column;
      gap: 2px;	
    }

    .job-card img {
      max-width: 200px;
      max-height: 100px;
      border-radius: 50%;
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
      flex: 0 0 35%;
      background-color: black;
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
    }

    nav a {
      color: #fff;
      text-decoration: none;
      font-weight: bold;
    }

    #profile-avatar {
      width: 80px;
      height: 80px;
      border-radius: 50%;
      background-color: #fff; /* You can replace this with the actual image source */
      background-size: cover;
      margin-top: 20px;
    }
  </style>
</head>
<body>
  <div id="left-half">
    <div id="search-bar">
     <p target="_top"style="color: darkblue;" width="60px"> 𝑻𝒂𝒍𝒆𝒏𝒕𝑭𝒐𝒓𝒈𝒆
   <img src="/images/search.png" width="30px" height="30" />
</p>
      <input type="text" placeholder="Search for jobs">
      <button>Search</button>
    </div>

    <!-- Sample job cards -->
    <div class="job-card">
      <img src="/images/ibm.png" alt="Company Logo" height="1000px" width="100px">
      <h3>Java Full Stack Developer</h3>
      <p>Location: Hyderabad, India</p>
      <p>Skills: SpringBoot, ORM, Databases</p>
      <p>Description: design back-end architecture using multiple technologies. build front-end technologies to create user interfaces. .</p>
      <p>Package: $X,XXX,XXX</p>
      <button class="apply-btn">Apply</button>
    </div>

    <div class="job-card">
      <img src="/images/amazon.png" alt="Company Logo" height="1000px" width="100px">
      <h3>Software Engineer SDE</h3>
      <p>Location: Banglore, India</p>
      <p>Skills: REST, Mern Stack</p>
      <p>Description: Need to satisfy the Client Requirements in the field of Ecommerce with robust application Development.</p>
      <p>Salary: Upto 2000000-4400000/year</p>
      <button class="apply-btn">Apply</button>
    </div>

    <!-- Add more job cards here -->

    <!-- Button to load more job cards -->
    <button id="load-more-btn">Load More</button>
  </div>

  <div id="right-half">
    <nav>
      <a href="#">Home</a>
      <a href="#">Jobs</a>
      <a href="#">About</a>
      <!-- Add more navigation items here -->
    </nav>

    <div id="profile-avatar">
      <!-- You can replace this with the actual image source -->
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
    