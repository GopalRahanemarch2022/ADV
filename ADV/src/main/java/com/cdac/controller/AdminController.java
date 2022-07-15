package com.cdac.controller;

import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cdac.entity.Admin;
import com.cdac.exception.AdminServiceException;
import com.cdac.service.AdminService;

@Controller
public class AdminController {

		@Autowired
		private AdminService adminservice;
		
		@RequestMapping("/login.cdac")
		public String login(HttpServletRequest request,HttpServletResponse response) {
			String email = request.getParameter("emailid");
			String password = request.getParameter("passkey");
			String rememberMe = request.getParameter("rem");
			System.out.println("at controller email is : "+email+" and password is : "+password);
			
			try {
				boolean status= adminservice.login(email, password);
				if (status==true) {
					if(rememberMe!=null) {
						Cookie c1=new Cookie("myuname",email );
						c1.setMaxAge(60*60*24);
						Cookie c2=new Cookie ("mypass",password );
						c2.setMaxAge(60*60*24);
						response.addCookie(c1);
						response.addCookie(c2);
						
					}
					return "Student.jsp";
				}

				else 
					throw new AdminServiceException ("Email & Password is Invalid..!!");
			}
			catch(AdminServiceException e) {
				
				return "login.jsp";
			}
		}
		
		@RequestMapping("/abc.cdac")
		public String register(HttpServletRequest request, Map model) {
			Admin admin = new Admin();
			admin.setAdminId(request.getParameter("adminId"));
			admin.setName(request.getParameter("name"));
			admin.setEmail(request.getParameter("email"));
			admin.setPassword(request.getParameter("password"));
			admin.setMobileNumber(request.getParameter("mobileNumber"));
			
			try {
				adminservice.register(admin);
				return "login.jsp";
			}
			catch(AdminServiceException e) {
				model.put("message", e.getMessage());
				return "register.jsp";
			}
		}
	}

