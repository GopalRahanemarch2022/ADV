package com.cdac.service;

import javax.servlet.http.Cookie;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cdac.dao.AdminDao;
import com.cdac.entity.Admin;

import com.cdac.exception.AdminServiceException;


@Component
public class AdminService{
		
		@Autowired
		private AdminDao adminDao;
		
		public void register(Admin admin) {
			if(adminDao.isAdminPresent(admin.getEmail()))
				throw new AdminServiceException("Admin already registered!");
			else
				adminDao.add(admin);
				//sendConfirmationMail(customer);
		}
		
		public boolean login(String email, String password) {
			if(adminDao.isAdminPresent(email, password))
				return true;
			
			else
				return false;
		}
		
		
	}


