package com.klef.talentforge.controller;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.talentforge.model.Applicant;
import com.klef.talentforge.service.ApplicantService;
import com.klef.talentforge.service.EmailManager;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController 
{
	@Autowired
	private ApplicantService applicantService;
	

	@Autowired
	private EmailManager emailManager;
	
	@GetMapping("applicanthome")
	public ModelAndView indexpage() {
		ModelAndView mv=new ModelAndView("index");
		return mv;
	}

	
	@GetMapping("register")
	public ModelAndView employeeregister() {
		ModelAndView mv=new ModelAndView("ApplicantRegister");
		return mv;
	}

	
	@GetMapping("/")
	public ModelAndView applicantlogin() {
		ModelAndView mv=new ModelAndView("ApplicantLogin");
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
            mv.setViewName("/");
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
			mv.setViewName("index");
		}else  {
			mv.setViewName("ApplicantLogin");
			mv.addObject("message", "Invalid Login..!");
					}
		return mv;
	}

}
