<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css'>
  
  <title>TalentForge | Applicant Home</title>


  <style>
  .date-posted-box {
    background-color: #f0f0f0; /* Background color */
    padding: 10px; /* Padding around the content */
    border: 1px solid #ccc; /* Border */
    border-radius: 5px; /* Border radius for rounded corners */
    display: inline-block; /* Display as an inline block to fit content */
   width: 250px;
  }
  .my-form {
    background: #f4f4f4;
    padding: 20px;
    border-radius: 8px;
}

.my-form .form-group {
    margin-bottom: 15px;
}
.my-form select option {
    padding: 15px;
    font-size: 15px;
}
.my-form select {
 font-size: 15px;
    width: 100%; /* Set the width of the dropdown to 100% */
}
.my-form label {
    margin-bottom: 15px;
    font-weight: bold;
    display: inline-block; /* Display label and input on the same line */
    
}

.my-form input,
.my-form select {
    width: 41%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    margin-left:10px;
}

.my-form button {
    background-color: #778A35;
    color: #fff;
    padding: 10px 15px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

.my-form button:hover {
    background-color: green;
}
 

   .card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  width:240px;
  height:300px;
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



.my-form1 {
    background: #f4f4f4;
    padding: 20px;
    border-radius: 8px;
}

.my-form1 .form-group {
    margin-bottom: 15px;
}
.my-form1 select option {
    padding: 15px;
    font-size: 15px;
}
.my-form1 select {
 font-size: 15px;
    width: 100%; /* Set the width of the dropdown to 100% */
}
.my-form1 label {
    margin-bottom: 15px;
    font-weight: bold;
    display: inline-block; /* Display label and input on the same line */
    
}

.my-form1 input,
.my-form1 select {
    width: 18%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    margin-left:10px;
}

.my-form1 button {
    background-color: #778A35;
    color: #fff;
    padding: 10px 15px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

.my-form1 button:hover {
    background-color: green;
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
      background-color: #778A35;
      color: #fff;
      border: none;
      border-radius: 100px;
      cursor: pointer;
    }

    .job-card {
      background-color: #fff;
      border-radius: 20px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      padding: 8px;
      display: flex;
      flex-direction: column;
      gap: 2px;	
       box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
  transition: box-shadow 0.3s ease;
    }

    .job-card img {
      max-width: 205px;
      max-height: 100px;
      border-radius: 0%;
    }

	      .job-card:hover {
	    box-shadow: 0 0 20px rgba(0, 0, 0, 0.5); /* Change the box-shadow on hover */
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
  background-color: #778A35;
  color: #fff;
  padding: 8px 12px;
  border: none;
        border-radius: 20px;

    text-align: center; /* Center the text */
  
  text-decoration: none; /* Remove underline */
  cursor: pointer;
}

.apply-btn:hover {
  background-color: #097969; /* Change color on hover if desired */
}
  </style>
  
    <link rel="shortcut icon" type="image/png" href="/images/apple-touch-icon.png"/>
  
</head>
  <div id="container">
    <div id="left-half">
      <div id="search-bar">
       <p style="color: darkblue; font-size: 20px;"> <a href="applicanthome"> <img src="/images/navlogo.jpg" width="130px" height="50" /></a></p>
        <input type="search" id="searchInput" placeholder="Search Jobs by Title">
      </div>

     
     <br><br><br><br><br>
     
  <div class="wrapper">
        <form class="my-form" action="searchbycompany" >
          
               
          
            <div class="form-group">
                <label for="branch">Search Jobs By Company :</label>
                <select id="companyname" name="companyname" required>
                    <option value="">---Select Company---</option>
                    <c:forEach items="${reclist}" var="rec">
                    <option value="${rec.companyname}">${rec.id}&nbsp;&nbsp;--${rec.companyname}</option>
                    
                    </c:forEach>
                    <option value="All">All Companies</option>
                    
                </select>
           
            <button type="submit">Search</button>
             </div>
        </form>
    </div>
     <div class="wrapper">
        <form class="my-form1" method="get" action="searchbydate">
               
            <div class="form-group" >
                <label for="branch">Search Jobs From Date Posted :&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <input type="date" name="fromdate" id="dateposted" pattern="\d{2}-\d{2}-\d{4}">
            <button type="submit">Search</button>
             </div>
        </form>
    </div>
   
     
     
     
     
     
     
     
     
     
     
     
     
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
      <p class="date-posted-box">Date Posted: <c:out value="${job.posteddate}" ></c:out></p> 
      
        <a href="applyjob?id=${job.id}" class="apply-btn">Apply</a>
     
    </div>

   </c:forEach>
 </div>
   <br>
    <div id="right-half">
    <br><br><br><br>
    
    
    
    
    
    
    
    
      <div class="card">
      <br>
       <form action="uploadapplicantprofileimage" method="post" enctype="multipart/form-data">
  <img src='displayApplicantimage?id=${cid}' alt="Upload Your image here" style="width:100%"   height="170px" id="profileimage">
   <input type="file" class="form-control"  name="ApplicantImage"
                required>
                <button type="submit" class="btn">Change</button>
               
                </form>
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
        // Previous JavaScript code for adding to the cart

        const searchInput = document.getElementById('searchInput');
        const products = document.querySelectorAll('.job-card');

        searchInput.addEventListener('input', function () {
            const searchText = searchInput.value.toLowerCase();

            products.forEach(product => {
                const productName = product.querySelector('h3').textContent.toLowerCase();
                if (productName.includes(searchText)) {
                    product.style.display = 'block';
                } else {
                    product.style.display = 'none';
                }
            });
        });
    </script>
    
    <script>
    function filterFunction() {
        var input, dropdown, items, i;
        input = document.getElementById("searchInput");
        dropdown = document.getElementById("dropdown");
        items = Array.from(dropdown.getElementsByTagName("a"));

        // Get the search input value
        var filter = input.value.toUpperCase();

        // Sort the items based on their text content and the search input
        items.sort(function(a, b) {
            var textA = a.textContent || a.innerText;
            var textB = b.textContent || b.innerText;
            return textA.toUpperCase().indexOf(filter) - textB.toUpperCase().indexOf(filter);
        });

        // Remove existing items from the dropdown
        while (dropdown.firstChild) {
            dropdown.removeChild(dropdown.firstChild);
        }

        // Add the sorted items back to the dropdown
        items.forEach(function(item) {
            dropdown.appendChild(item);
        });

        // Show or hide the dropdown based on the search input
        dropdown.classList.toggle("show", filter.length > 0);
    }

    // Close the dropdown if the user clicks outside of it
    window.onclick = function(event) {
        if (!event.target.matches('#searchInput')) {
            var dropdowns = document.getElementsByClassName("dropdown-content");
            for (var i = 0; i < dropdowns.length; i++) {
                var openDropdown = dropdowns[i];
                if (openDropdown.classList.contains('show')) {
                    openDropdown.classList.remove('show');
                }
            }
        }
    }
</script>


</body>
</html>
