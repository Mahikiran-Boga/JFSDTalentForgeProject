package com.klef.talentforge.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.Blob;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.talentforge.model.Admin;
import com.klef.talentforge.model.Applicant;
import com.klef.talentforge.model.ApplicantImage;
import com.klef.talentforge.model.Job;
import com.klef.talentforge.model.JobApplications;
import com.klef.talentforge.model.Recruiter;
import com.klef.talentforge.model.ViewApplicationStatus;
import com.klef.talentforge.service.AdminService;
import com.klef.talentforge.service.ApplicantService;
import com.klef.talentforge.service.EmailManager;
import com.klef.talentforge.service.RecruiterService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;

@Controller
public class ClientController 
{
	@Autowired
	private ApplicantService applicantService;
	

	@Autowired
	private EmailManager emailManager;
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private RecruiterService recruiterService;
	
	
	
	@GetMapping("applicanthome")
	public ModelAndView indexpage() {
		ModelAndView mv=new ModelAndView("index");
		List<Job> jobslist = recruiterService.ViewAllJobs();
  	   mv.addObject("jobslist", jobslist);
  	   
		return mv;
	}
	
	@GetMapping("applicationsuccessfulpage")
	public ModelAndView applicationsuccessfulpage()
	{
		ModelAndView mv=new ModelAndView("applicationsuccessfulpage");
		return mv;
	}
	
	@GetMapping("applyjob")
	public ModelAndView applyjob(HttpServletRequest request,@RequestParam("id") int  id) {
		ModelAndView mv=new ModelAndView("applyjob");
		HttpSession session = request.getSession();
        int sid = (int) session.getAttribute("cid");
        
        Applicant app=applicantService.getApplicantById(sid);
        Job job =recruiterService.ViewJobByID(id);
        
        
        JobApplications applications =applicantService.checkJobApplication(app.getEmail(), job.getJobtitle(), job.getCompanyname());
 	     if(applications==null) 
 	   {
        Job j=recruiterService.ViewJobByID(id);
        
        mv.addObject("applicant", app);
        mv.addObject("jobid", id);
        mv.addObject("job", j);
        
		return mv;
 	     }
 	     else {
 	       mv.setViewName("applicationsuccessfulpage");
   		   mv.addObject("msg", "This Job is Already Applied !!");
 	    	 
 	     }
 	     return mv;
	}
	
	@GetMapping("displaycompanyimage")
	public ResponseEntity<byte[]> displayprofileimage(@RequestParam("id") int id) throws IOException, SQLException
	   {
	     Job mem =  recruiterService.ViewJobByID(id);
	     byte [] imageBytes = null;
	     imageBytes = mem.getImage().getBytes(1,(int) mem.getImage().length());

	     return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	   }
	

	
	@GetMapping("register")
	public ModelAndView employeeregister() {
		ModelAndView mv=new ModelAndView("ApplicantRegister");
		return mv;
	}

	
	
	
	
	@PostMapping("registration")
	public ModelAndView addSeller(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String msg = null;
		try {
			String fname = request.getParameter("firstname");
			String lname = request.getParameter("lastname");
			String email = request.getParameter("email");
			String gender = request.getParameter("gender");
			String pwd = request.getParameter("password");
			String contact = request.getParameter("contactnumber");
			String address = request.getParameter("address");
			
			
			LocalDate currentDate = LocalDate.now();
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
			String currentDateStr = currentDate.format(formatter);
			
			LocalTime currentTime = LocalTime.now();
			DateTimeFormatter timeFormatter = DateTimeFormatter.ofPattern("HH:mm:ss");
			String currentTimeStr = currentTime.format(timeFormatter);
    
			
			Applicant applicant = new Applicant();
		    applicant.setFirstname(fname);
		    applicant.setLastname(lname);
		    applicant.setEmail(email);
		    applicant.setContactno(contact);
		    applicant.setPassword(pwd);
		    applicant.setGender(gender);
		    applicant.setAddress(address);
		    msg = applicantService.register(applicant);
		    
		    
			 String fileName = "invite.html"; 
	            String filePath = request.getServletContext().getRealPath("/" + fileName);
	            
		    String fromEmail = "mahikiran.b@gmail.com"; // Set your email
            String toEmail = email; // Use the user's email from the booking
            String subject = "Talentforge  Registration Confirmation";
            String text = "Hello " +fname+" "+lname +"\n"+" Your Registration into talentforge  has been Sucessfull "+"\n"+" Through this email "+email;
            String text2="Date :-" +currentDateStr +"\n"+"On this Time :-"+currentTimeStr;
            // Inject JavaMailSender
            String htmlContent = new String(Files.readAllBytes(Paths.get(filePath)));
            htmlContent = htmlContent.replace("[name]", fname);
            htmlContent = htmlContent.replace("[text]", text);
            htmlContent=htmlContent.replace("[text2]", text2);
            
            htmlContent=htmlContent.replace("[password]", pwd);
            
        
            emailManager.sendEmail(fromEmail, toEmail, subject, text,htmlContent);
            mv.setViewName("ApplicantLogin");
			mv.addObject("message", msg);
			
		}
		catch (Exception e) {
			mv.setViewName("ApplicantRegister");
			msg = "Registration Failed & Provide Valid Details..!!";
			mv.addObject("message", msg);
		}
		return mv;
	}
	

	@PostMapping("checkapplicantlogin")
	public ModelAndView ckeckapplogin(HttpServletRequest request) {
		String uname = request.getParameter("email");
		String pwd = request.getParameter("password1");
		HttpSession session = request.getSession();
		Applicant c = applicantService.checkApplicantlogin(uname, pwd);
	
		ModelAndView mv =new ModelAndView();
		if(c!=null ) {
		
			session.setAttribute("cid",c.getId()); 
			session.setAttribute("fname", c.getFirstname());
			session.setAttribute("lname",c.getLastname());
			session.setAttribute("email",c.getEmail());
			List<Job> jobslist = recruiterService.ViewAllJobs();
		  	mv.addObject("jobslist", jobslist);
			mv.setViewName("index");
		}else  {
			mv.setViewName("ApplicantLogin");
			mv.addObject("message", "Invalid Login..!");
					}
		return mv;
	}
	
	@GetMapping("recruiterhome")
	public ModelAndView recruiterhome() {
		ModelAndView mv=new ModelAndView("recruiterhome");
		return mv;
	}
	@GetMapping("companylogin")
	public ModelAndView companylogin() 
	{
		long applicantCount=adminService.applicantCount();
		long recruiterCount=adminService.recruiterCount();
		long jobsCount=adminService.JobsCount();
		long jobApplicationsCount=adminService.JobApplicationsCount();
		ModelAndView mv=new ModelAndView("companylogin");

		mv.addObject("applicantCount", applicantCount);
		mv.addObject("recruiterCount",recruiterCount );
		mv.addObject("jobsCount",jobsCount );
		mv.addObject("jobApplicationsCount",jobApplicationsCount );
		return mv;
	}
	@GetMapping("companyregistration")
	public ModelAndView companyregistration() {
		ModelAndView mv=new ModelAndView("companyregistration");
		
		return mv;
	}
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request) {
		String username=request.getParameter("email");
		String password=request.getParameter("password1");
		ModelAndView mv=new ModelAndView();
		HttpSession session=request.getSession();
		Admin adm=adminService.checkadminlogin(username, password);
		long applicantCount=adminService.applicantCount();
		long recruiterCount=adminService.recruiterCount();
		long jobsCount=adminService.JobsCount();
		long jobApplicationsCount=adminService.JobApplicationsCount();
		
		if(adm!=null) {
			 
			session.setAttribute("uname", adm.getUsername());
			mv.setViewName("adminhome");
			mv.addObject("applicantCount", applicantCount);
			mv.addObject("recruiterCount",recruiterCount );
			mv.addObject("jobsCount",jobsCount );
			mv.addObject("jobApplicationsCount",jobApplicationsCount );
			
		}
	    else  {
		mv.setViewName("adminlogin");
		mv.addObject("message", "Invalid Login..!");
				}
	return mv;
		
	}
	
	@GetMapping("admin")
	public ModelAndView adminlogin() {
		ModelAndView mv=new ModelAndView("adminlogin");
		return mv;
	}
	
	        @PostMapping("recruiterRegistration")
			public ModelAndView recruiterRegistration(HttpServletRequest request) {
				ModelAndView mv = new ModelAndView();
				String msg = null;
				try {
					String companyname = request.getParameter("companyname");
					String email = request.getParameter("email");
					String pwd = request.getParameter("password");
					String contact = request.getParameter("contactnumber");
					String address = request.getParameter("address");
					
					
					LocalDate currentDate = LocalDate.now();
					DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
					String currentDateStr = currentDate.format(formatter);
					
					LocalTime currentTime = LocalTime.now();
					DateTimeFormatter timeFormatter = DateTimeFormatter.ofPattern("HH:mm:ss");
					String currentTimeStr = currentTime.format(timeFormatter);
		    
					
					Recruiter recruiter = new Recruiter();
					recruiter.setEmail(email);
					recruiter.setCompanyname(companyname);
					recruiter.setPassword(pwd);
					recruiter.setContactno(contact);
					recruiter.setAddress(address);
					
				    msg = recruiterService.registerRecruiter(recruiter);
				    
				    
					 String fileName = "invite.html"; 
			            String filePath = request.getServletContext().getRealPath("/" + fileName);
			            
				    String fromEmail = "mahikiran.b@gmail.com"; // Set your email
		            String toEmail = email; // Use the user's email from the booking
		            String subject = "Talentforge  Registration Confirmation";
		            String text = "Hello " +companyname +"\n"+" Your Registration into talentforge  has been Sucessfull "+"\n"+" Through this email "+email;
		            String text2="Date :-" +currentDateStr +"\n"+"On this Time :-"+currentTimeStr;
		            // Inject JavaMailSender
		            String htmlContent = new String(Files.readAllBytes(Paths.get(filePath)));
		            htmlContent = htmlContent.replace("[name]", companyname);
		            htmlContent = htmlContent.replace("[text]", text);
		            htmlContent=htmlContent.replace("[text2]", text2);
		            
		            htmlContent=htmlContent.replace("[password]", pwd);
		            
		        
		            emailManager.sendEmail(fromEmail, toEmail, subject, text,htmlContent);
		            mv.setViewName("companylogin");
					mv.addObject("message", msg);
					
				}
				catch (Exception e) {
					mv.setViewName("companyregistration");
					msg = "Registration Failed & Provide Valid Details..!!";
					mv.addObject("message", msg);
				}
				return mv;
			}
		  
		  
		     @PostMapping("checkrecruiterlogin")
		 	public ModelAndView checkrecruiterlogin(HttpServletRequest request) {
		 		String uname = request.getParameter("email");
		 		String pwd = request.getParameter("password1");
		 		HttpSession session = request.getSession();
		 		Recruiter rec = recruiterService.checkRecruiterlogin(uname, pwd);
		 	
		 		ModelAndView mv =new ModelAndView();
		 		if(rec!=null ) {
		 		
		 			session.setAttribute("rid",rec.getId()); 
		 			session.setAttribute("remail",rec.getEmail());
		 			session.setAttribute("rcompanynmae",rec.getCompanyname());
		 			mv.setViewName("recruiterhome");
		 		}else  {
		 			mv.setViewName("companyregistration");
		 			mv.addObject("message", "Invalid Login..!");
		 					}
		 		return mv;
		 	}
	
         @GetMapping("postajob")
         public ModelAndView postajob() {
     		ModelAndView mv=new ModelAndView("addjob");
     		
     		return mv;
     	}
         
        @PostMapping("addjob")
        public ModelAndView addajob(HttpServletRequest request,@RequestParam("companyimage") MultipartFile file)throws IOException, SerialException, SQLException
        {
        	ModelAndView mv=new ModelAndView();
        	String title=request.getParameter("jobtitle");
        	String location=request.getParameter("location");
        	String skills=request.getParameter("skills");
        	String description=request.getParameter("description");
        	String salary=request.getParameter("salary");
        	String companyname = request.getParameter("companyname");
        	byte[] bytes = file.getBytes();
			Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
			Job j=recruiterService.viewJobByTitleAndDescription(title, description);
			if(j==null) {
					
			Job job=new Job();
			job.setJobtitle(title);
			job.setLocation(location);
			job.setSkills(skills);
			job.setSalary(salary);
			job.setDescription(description);
			job.setImage(blob);
			job.setCompanyname(companyname);
			
			String msg=recruiterService.addjob(job);
			mv.setViewName("addjob");
			mv.addObject("msg", msg);
			}
			else {
				mv.addObject("msg", "Failed to Add.This is Already Existing Job");
			}
			return mv;
        	
        }
         
        @GetMapping("recruiterviewjobs")
        public ModelAndView recruiterviewjobs(HttpServletRequest request) {
          ModelAndView mv=new ModelAndView("recruiterviewalljobs");
          HttpSession session = request.getSession();
          int sid = (int) session.getAttribute("rid"); 
         String sname = (String) session.getAttribute("rcompanynmae");
          List<Job> jobsbyname = recruiterService.viewjobsbycompanyname(sname);
          mv.addObject("jobsbyname", jobsbyname);
         
          return mv;
        }

        @GetMapping("deletejob")
        public String deletejob(@RequestParam("id") int id) {
            ModelAndView mv=new ModelAndView("adminviewalljobs");
           String msg = recruiterService.deletejob(id);
           mv.addObject("msg", msg);
            return "redirect:/recruiterviewjobs";
          }

        
       @PostMapping("/apply")
       public ModelAndView applyjob(@RequestParam("jobid") int jobid,  @RequestParam("jobtitle") String jobtitle,@RequestParam("fname") String firstname,@RequestParam("lname") String lastname, @RequestParam("email") String email, @RequestParam("dateofbirth") String dateofbirth
   			
   			,@RequestParam("experience") String experience,@RequestParam("contactnumber") String contactno,@RequestParam("companyname") String companyname,@RequestParam("resume") MultipartFile file,HttpServletRequest request) 
       {
    	   ModelAndView mv=new ModelAndView();
    	   
    	  
    	   HttpSession session=request.getSession();
    	   int id=(int) session.getAttribute("cid");
    	  
    	   JobApplications applications =applicantService.checkJobApplication(email, jobtitle, companyname);
    	   if(applications==null)
    	   {
    	   
       	   String response=applicantService.applyJob(jobid,id,jobtitle, firstname, lastname, email, dateofbirth, experience, contactno, companyname, file,true);
    	   mv.addObject("msg", response);
    	   
    	   mv.setViewName("applicationsuccessfulpage");
    	   
    	   return mv;
       }
    	   else {
    		   mv.setViewName("applicationsuccessfulpage");
    		   mv.addObject("msg", "This Job is Already Applied !!");
    	   }
    	   return mv;
       }
       
     
      @GetMapping("myjobApplications")
      public ModelAndView viewMyJobApplications(HttpServletRequest request) {
    	  ModelAndView mv=new ModelAndView();
    	  HttpSession session=request.getSession();
    	  int id=(int) session.getAttribute("cid");
    	  List<JobApplications> jobslist=applicantService.ViewMyJobApplications(id);
    	  
    	  mv.setViewName("myjobApplications");
    	  mv.addObject("jobslist", jobslist);
    	  return mv;
      }
      
      
      @PostMapping("uploadapplicantprofileimage")
      public ModelAndView uploadapplicantprofileimage(HttpServletRequest request,@RequestParam("ApplicantImage") MultipartFile file)throws IOException, SerialException, SQLException
      {
        ModelAndView mv=new ModelAndView();
        
        byte[] bytes = file.getBytes();
        Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
        HttpSession session =request.getSession();
	    int id=(int)session.getAttribute("cid");
	    ApplicantImage image = new ApplicantImage();
	    image.setId(id);
	    image.setImage(blob);
	    
	    String msg=applicantService.uploadapplicantprofileimage(image);
	    List<Job> jobslist = recruiterService.ViewAllJobs();
	    mv.addObject("jobslist", jobslist);
	    mv.setViewName("index");
	    mv.addObject("msg", msg);
	    return mv;
        
      }
   
      
      @GetMapping("displayApplicantimage")
      public ResponseEntity<byte[]> displayApplicantimage(@RequestParam("id") int id) throws IOException, SQLException
         {
           ApplicantImage mem =  applicantService.ViewimageByID(id);
           byte [] imageBytes = null;
           imageBytes = mem.getImage().getBytes(1,(int) mem.getImage().length());

           return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
         }

  
	  @GetMapping("viewalljobapplications")
	  public ModelAndView viewalljobapplications(HttpServletRequest request) {
		  ModelAndView mv=new ModelAndView("viewallapplications");
		  HttpSession session=request.getSession();
		  String companyname=(String)session.getAttribute("rcompanynmae");
		  List<JobApplications> jobslist=recruiterService.viewalljobapplicationsByCompany(companyname);
		  mv.addObject("jobslist", jobslist);
		  return mv;
		  
	  }
	  
	  @GetMapping("/download/{id}/{jobtitle}")
	   public ResponseEntity<byte[]> downloadBook(@PathVariable("id") int fileid,@PathVariable("jobtitle") String jobtitle) {
	       JobApplications job = recruiterService.ViewJobApplicationByID(fileid,jobtitle);

	       if (job != null) {
	           byte[] response = job.getBfileContent();
	           return ResponseEntity.ok()
	                   .contentType(MediaType.parseMediaType("application/pdf"))
	                   .header(
	                           HttpHeaders.CONTENT_DISPOSITION,
	                           "attachment; filename=\"" + fileid +".pdf"+ "\""
	                   )
	                   .body(response);
	       } else {
	           return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
	       }
	   }
	   
	  @GetMapping("updateapplicationstatus") 
	  public ModelAndView updatestatusofApplication(@RequestParam("id") int id,@RequestParam("jobtitle") String jobtitle)
	  {
		  ModelAndView mv=new ModelAndView("recruitersetstatusbyid");
		  mv.addObject("id", id);
		  mv.addObject("jobtitle", jobtitle);
		  return mv;
	  }
	  
	  @PostMapping("addapplicationstatus")
	  public ModelAndView addApplicationStatus(HttpServletRequest request)
	  {
		  ModelAndView mv=new ModelAndView("recruitersetstatusbyid");
		  int id=Integer.parseInt(request.getParameter("id"));
		  String jobtitle=request.getParameter("jobtitle");
		  String status=request.getParameter("applicationStatus");
		  String comment=request.getParameter("comment");
		  
		  ViewApplicationStatus stat=new ViewApplicationStatus();
		  stat.setId(id);
		  stat.setApplicationstatus(status);
		  stat.setApplicationstatustittle(jobtitle);
		  stat.setComment(comment);
		  
		  String msg=recruiterService.addApplicationStatus(stat);
		  mv.addObject("message", msg);
		  
		  return mv;	
	  }
	  
	    @GetMapping("getApplicationStatus")
	      public ModelAndView getApplicationsStatus(@RequestParam("id") int id,
	    		  @RequestParam("jobtitle") String jobtitle) 
	      {
	    	  ModelAndView mv=new ModelAndView("myapplicationStatus");
	    	  System.err.println(id+" "+jobtitle);
	    	  
	    	  List<ViewApplicationStatus> statuslist=applicantService.viewapplicationStatus(id,jobtitle);
	    	  System.out.println(statuslist.size());
	    	  mv.addObject("statuslist", statuslist);
	    	  return mv;
	    	  
	      }
	    
	    //23-11-2023
	    @GetMapping("/")
		public ModelAndView homepage() {
			ModelAndView mv=new ModelAndView("homepage");
			return mv;
		}
	   
	    @GetMapping("ApplicantLogin")
		public ModelAndView applicantlogin() 
	    {
	    	
			ModelAndView mv=new ModelAndView("ApplicantLogin");
			return mv;
		}
	    
	  @GetMapping("adminhome")
	  public ModelAndView adminhome() {
		  long applicantCount=adminService.applicantCount();
			long recruiterCount=adminService.recruiterCount();
			long jobsCount=adminService.JobsCount();
			long jobApplicationsCount=adminService.JobApplicationsCount();
			
		  ModelAndView mv=new ModelAndView("adminhome");
		  mv.addObject("applicantCount", applicantCount);
			mv.addObject("recruiterCount",recruiterCount );
			mv.addObject("jobsCount",jobsCount );
			mv.addObject("jobApplicationsCount",jobApplicationsCount );
		  return mv;
	  }
	  
	  
	  
}
