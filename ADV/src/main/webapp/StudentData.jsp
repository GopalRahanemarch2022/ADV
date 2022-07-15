<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="com.cdac.entity.Student" %>
   <%@ page import="java.util.*" %>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>StudentDetails</title>
<style>
table, tr, td, th {
	border: 1px solid;
}
</style>
</head>
<body>
<h2>All Student Details is here!</h2>
<table>
	<tr>
	<th>Id</th><th>RollNo</th><th>Name</th><th>Surname</th><th>MotherName</th><th>PassingYear</th><th>English_Mark</th><th>Marathi_Mark</th><th>Hindi_Mark</th><th>Math_Mark</th><th>Science_Mark</th><th>Update</th><th>Delete</th>
	</tr>
	<c:forEach items="${ listOfStudent }" var="student">
	<tr>
	
        <td>${ student.id}</td> 
	    <td>${ student.rollNo }</td> 
		<td>${ student.name }</td>
		<td>${ student.surname }</td>
		<td>${ student.motherName }</td>
		<td>${ student.passingYear}</td>
		<td>${ student.englishMark }</td>
		<td>${ student.marathiMark }</td>
		<td>${ student.hindiMark }</td>
		<td>${ student.mathMark }</td>
		<td>${ student.scienceMark }</td>
		<%Student student=new Student(); %>
		<td> <a href="fetch.cdac?rollNo=<%=student.getRollNo() %>" type="button" >Update</a></td>
		<td> <a href="delete?rollNo=<%= student.getRollNo() %>" type="button">Delete</a></td>
		
	</tr>
	</c:forEach>
</table>
</body>
</html>