    package com.cdac.service;
    import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cdac.dao.StudentDao;
import com.cdac.entity.Student;
import com.cdac.exception.StudentServiceException;
	


	//service classes are used for writing business logic in our applications
	@Component
	public class StudentService {

		@Autowired
		private StudentDao studentDao;
		// Roll no present or not
		public void register(Student student) {
			if(studentDao.isStudentPresent(student.getRollNo()))
				throw new StudentServiceException("Roll no is allready Enter");
			else
		        studentDao.add(student);
				//sendConfirmationMail(customer);
		}
		
       // Display web Page Table Detail
		public List<Student> regiStudent() {
			return studentDao.fetchAll();
		}
		
		//Result Shoe.................................
		public List<Student> resultPresent(Student student1) {
			// TODO Auto-generated method stub
			if(studentDao.isStudentPresent(student1.getRollNo()))
				return studentDao.fetchResult(student1);
			else
				throw new StudentServiceException("Enter Correct RollNo OR Mother Name");
				//sendConfirmationMail(customer);
			
		}
		
		//Update................................
		public List<Student> resultUpdate(Student student2) {
			// TODO Auto-generated method stub
			if(studentDao.isStudentPresent(student2.getRollNo()))
				return studentDao.fetch(student2);
			else
				throw new StudentServiceException("Enter Correct RollNo");
				//sendConfirmationMail(customer);
			
		}
	}

