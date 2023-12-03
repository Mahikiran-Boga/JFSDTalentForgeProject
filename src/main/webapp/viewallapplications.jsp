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
  padding: 16px 20px;
  font-size: 16px;
  text-align: center;
  text-decoration: none;
  cursor: pointer;
  border: none;
  border-radius: 5px;
 
}

.we {
    cursor: pointer;
    color: #fff; /* Set the initial text color */
    background-color: #007bff; /* Set the initial background color */
    padding: 10px 10px; /* Add padding for better appearance */
    display: inline-block; /* Make it a block to allow setting width and height */
    text-decoration: none; /* Remove underline from the text */
    border-radius: 4px; /* Add rounded corners for a button-like appearance */
  }
.btn.view-btn {
  display: inline-block;
  background-color: #3498db; /* Blue color */
  color: #fff; /* White color */
  padding: 18px 26px;
  text-decoration: none; /* Remove underline from the link */
  border-radius: 4px;
  cursor: pointer;
}

.btn.view-btn:hover {
  background-color: #2980b9; /* Darker blue color on hover */
}
  /* Change styles on hover */
  .we:hover {
    background-color: #0056b3; /* Change background color on hover */
  }
  
  .weview {
    cursor: pointer;
    color: black; /* Set the initial text color */
    background-color: #E6D894; /* Set the initial background color */
    padding: 13px 10px; /* Add padding for better appearance */
    display: inline-block; /* Make it a block to allow setting width and height */
    text-decoration: none; /* Remove underline from the text */
    border-radius: 4px; /* Add rounded corners for a button-like appearance */
  }


.weview:hover {
    background-color: #F4BE22; /* Change background color on hover */
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
      <li><a href="companylogin">Logout</a></li>
    </ul>
    <label for="menu-btn" class="btn menu-btn"><i class="fas fa-bars"></i></label>
  </div>
</nav>
<br>
<br>
<br>
<br>
<br>
 <h5 align="center" style="color:red">${message}</h5>
  
<table id="employee">
			<tr bgcolor="darkblue" style="color: white">
				<th>Application ID</th>
				<th>Applicant ID</th>
				<th>Company Name</th>
				<th>Job Title</th>
				<th>Email</th>
				<th>Experience</th>
				<th>Contact No</th>
				<th>Resume</th>
				<th>Update Status</th>
				<th>View Status</th>
				
			</tr>
			<c:forEach items="${jobslist}" var="job">
				<tr>
					<td><c:out value="${job.applicationid}" /></td>
					<td><c:out value="${job.id}" /></td>
					<td><c:out value="${job.companyname}" /></td>
					<td><c:out value="${job.jobtitle}" />
					</td>
					<td><c:out value="${job.email}" /></td>
					
					<td><c:out value="${job.experience}" /></td>
					<td><c:out value="${job.contactno}" /></td>
					<td><a href="/download/${job.applicationid}/${job.jobtitle}"><button class="btn fa fa-download ">.Download Resume</button></a>

					</td>				
					<td><a href="updateapplicationstatus?id=${job.id}&jobtitle=${job.jobtitle}" class="we"> <i class="fas fa-edit">Update Status</i></a></td>
				<td>
					    <a href="recruitergetApplicationStatus?id=${job.id}&jobtitle=${job.jobtitle}&jobid=${job.id}" class="weview fa fa-eye">View Status</a>
					  </td>
				</tr>
			</c:forEach>
		</table>
<!-- partial -->
</body>
</html>
    