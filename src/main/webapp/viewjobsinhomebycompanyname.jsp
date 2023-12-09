<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title> TalentForge | Search Jobs By Company </title>
      <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css'><link rel="stylesheet" href="/css/style.css">
    
            <link rel="shortcut icon" type="image/png" href="/images/apple-touch-icon.png"/>

   
</head>
<style>
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
.date-posted-box {
    background-color: #f0f0f0; /* Background color */
    padding: 10px; /* Padding around the content */
    border: 1px solid #ccc; /* Border */
    border-radius: 5px; /* Border radius for rounded corners */
    display: inline-block; /* Display as an inline block to fit content */
   width: 250px;
  }


 #searchInput {
  max-width:960px; /* Set the width of the input */
  max-height:10px;
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
      border-radius: 28px;
      box-shadow: 0 10px 10px 10px rgba(0, 0, 0, 0.1);
      padding: 8px;
      width:90%;
      margin-left:70px;
      display: flex;
      flex-direction: column;
      gap: 15px;	
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
  <p > <a href="/"> <img src="/images/greennavlogo.png" width="180px" height="80" /></a></p>

    <input type="radio" name="slider" id="menu-btn">
    <input type="radio" name="slider" id="close-btn">
    <ul class="nav-links">
    <label for="close-btn" class="btn close-btn"><i class="fas fa-times"></i></label>
      <li><a href="/"><i class="fa fa-home">  HOME</i></a></li>
      <li><a href="viewalljobs"><i class='fas fa-bullhorn' > &nbsp;JOBS</i></a></li>
      <li><a href="contactus"><i class="fa fa-address-book"></i> &nbsp;CONTACT US</a></li>
       <li><a href="ApplicantLogin"><i class='fas fa-user-tie'> &nbsp;APPLICANT LOGIN</i></a></li>
      <li><a href="companylogin"><i class='fa fa-building'>&nbsp; COMPANY LOGIN</i>
      </a></li>
      
    </ul>
    <label for="menu-btn" class="btn menu-btn"><i class="fas fa-bars"></i></label>
  </div>
</nav>
<br>
	
   
    <br><br><br><br>
    <h2 align="center" style="color: #097969">It's Your Time..&nbsp;Apply Now! </h2>
    <div class="wrapper">
        <form class="my-form" action="searchbycompanynameberforelogin" >
          
               
          
            <div class="form-group">
                <label for="branch">Search Jobs By Company :</label>
                <select id="companyname" name="companyname" required>
                    <option value="">---Select Company---</option>
                    <c:forEach var="companyName" items="${reclist}">
			        <option value="${companyName}">${companyName}</option>
			    </c:forEach>
			    <option value="All">All Companies</option>
                </select>
           
            <button type="submit">Search</button>
             </div>
        </form>
    </div>
    <br><br>
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
        <a href="ApplicantLogin" class="apply-btn">Apply</a>
    </div>
    <br>
   </c:forEach>
    
</body>
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
    
</html>