
package com.cdac.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cdac.entity.Student;
import com.cdac.exception.StudentServiceException;
import com.cdac.service.StudentService;

@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;

	@RequestMapping("/Student.cdac")
	public String StudentData(HttpServletRequest request, Map model) {
		Student student = new Student();
		student.setRollNo(request.getParameter("roll_no"));
		student.setName(request.getParameter("name"));
		student.setSurname(request.getParameter("surname"));
		student.setMotherName(request.getParameter("mother"));
		student.setPassingYear(Integer.parseInt(request.getParameter("passing_year")));
		student.setEnglishMark(Integer.parseInt(request.getParameter("english")));
		student.setMarathiMark(Integer.parseInt(request.getParameter("marathi")));
		student.setHindiMark(Integer.parseInt(request.getParameter("hindi")));
		student.setMathMark(Integer.parseInt(request.getParameter("math")));
		student.setScienceMark(Integer.parseInt(request.getParameter("science")));
		
	
		

		
		try {
			studentService.register(student);
			return "redirect:student.cdac";
		}
		catch(StudentServiceException e) {
			model.put("message", e.getMessage());
			return "Student.jsp";
		}
	}
	
	@RequestMapping("/student.cdac")
	public String registeredStudent(Map<String,Object> model) {
		List<Student> list = studentService.regiStudent();
		model.put("listOfStudent", list);
		return "StudentData.jsp";
	}
	
	@RequestMapping("/Result.cdac")
	public String ResultData(HttpServletRequest request, Map model) {
		Student student1 = new Student();
		student1.setRollNo(request.getParameter("roll_no"));
		student1.setMotherName(request.getParameter("mother"));
		try {
			model.put("resultOfStudent", studentService.resultPresent(student1));
			return "ResultDisplay.jsp";
		}
		catch(StudentServiceException e) {
			model.put("message", e.getMessage());
			return "Result.jsp";
		}
   }
	@RequestMapping("/fetch.cdac")
	public String StudentUpdate(HttpServletRequest request, Map model) {
		Student student2 = new Student();
		student2.setRollNo(request.getParameter("roll_no"));
		try {
			studentService.resultUpdate(student2);
			return "Update.jsp";
		}
		catch(StudentServiceException e) {
			model.put("message", e.getMessage());
			return "Update.jsp";
		}
}
}