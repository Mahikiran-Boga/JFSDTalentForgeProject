<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <link rel="shortcut icon" type="image/png" href="/images/apple-touch-icon.png"/>
  <title>Admin | View Queries</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css'><link rel="stylesheet" href="/css/adminstyle.css">
<style>
.background-container {
            background-image: url('/images/recruiter.png');
             background-size: cover;
        background-position: center;
        background-repeat:space;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
                width: 100%;
            
          
        }
        
 .button {
  display: inline-block;
  padding: 10px 20px;
  font-size: 16px;
  text-align: center;
  text-decoration: none;
  cursor: pointer;
  border: none;
  border-radius: 5px;
  background-color: sky	blue;
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
	background-color: skyblue;
	color: black;
}

.btn {
	 display: inline-block;
  padding: 10px 20px;
  font-size: 14px;
  text-align: center;
  text-decoration: none;
  cursor: pointer;
  border: none;
  border-radius: 5px;
  background-color: lightgreen;
}
.btnr {
	 display: inline-block;
  padding: 10px 20px;
  font-size: 16px;
  text-align: center;
  text-decoration: none;
  cursor: pointer;
  border: none;
  border-radius: 5px;
  background-color: #D96060;
}
#jobSalaryForm {
            display: flex;
            flex-direction: row;
            align-items: center;
            text-align: center;
            margin-left: 410px;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        select {
            width: 200px;
            padding: 10px;
            
            margin-bottom: 16px;
        }

        button {
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer; 
            margin-left: 10px;
            margin-top: -18px;
        }

        button:hover {
            background-color: #45a049;
        }

     

  .employee-card {
    background-color: transparent	;
    border: 1px solid #ddd;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    margin: 35px;
    padding: 20px;
    width: 800px;
    margin-left:350px;
    text-align: center;
  }


  .employee-card:hover {
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.5); /* Change the box-shadow on hover */
}


  .employee-card h2 {
    color: darkblue;
    font-family: fantasy;
    font-size: 30px;
    margin-bottom: 10px;
  }

  .employee-card p {
    margin: 5px 0;
  }

  .employee-card-id {
    font-weight: bold;
  }
 .employee-card-email {
    font-weight: bold;
    font-style: italic;
    font-stretch: ultra-condensed;
  }
  
  .navlogo{
       margin-top: 19px;
       }
</style>
</head>
<body>
<nav>
  <div class="wrapper">
     <p > <a href="adminhome"> <img src="/images/adminnavlogo.jpg" class="navlogo" width="180px" height="80" /></a></p>
    <input type="radio" name="slider" id="menu-btn">
    <input type="radio" name="slider" id="close-btn">
    <ul class="nav-links">
      <label for="close-btn" class="btn close-btn"><i class="fas fa-times"></i></label>
      <li><a href="adminhome"><i class="fa fa-home">  HOME</i></a></li> 
      <li><a href="viewallapplicants"><i class="fa fa-eye" > ALL APPLICANTS</a></i></li>
      <li><a href="viewallrecruiters"><i class="fa fa-eye" > ALL COMPANIES</a></i></li>
      <li><a href="adminviewalljobs"><i class="fa fa-list-alt""> ALL JOBS</i></a></li>
      
        <li><a href="viewqueries"><i class="fa fa-question-circle"></i>&nbsp;QUERIES</a></li>
         <li><a href="admin"><i class="fas fa-sign-in-alt" > &nbsp;LOGOUT</i></a></li>
    </ul>
    <label for="menu-btn" class="btn menu-btn"><i class="fas fa-bars"></i></label>
  </div>
</nav>
   <div class="background-container">

<br>

 <h5 align="center" style="color:red">${message}</h5>
  <br>
 <br>
 <div class="employee-container">
  <c:forEach items="${contact}" var="job">
    <div class="employee-card">
      <h2>${job.name}</h2>
      <p class="employee-card-id">ID: ${job.id}</p>
       <p class="employee-card-email">Mail-ID: ${job.email}</p>
      <p>Subject: ${job.subject}</p>
      <p>Message: ${job.message}</p>
    </div>
  </c:forEach>
</div>
		<br>
		<br>
		<br>
  <script>
        function submitForm() {
            // Get selected values
            var jobTitle = document.getElementById("jobTitle").value;
            var salary = document.getElementById("salary").value;

            // You can perform further actions here, such as sending the data to a server
            // For simplicity, we'll just log the values for now
            console.log("Selected Job Title: " + jobTitle);
            console.log("Selected Salary: $" + salary);
        }
    </script>
 
</body>
</html>
    