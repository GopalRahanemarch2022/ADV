<%@ page import="com.cdac.entity.Student" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	.student {
		width: 350px;
		margin: auto;
	}
	div {
		margin-top: 10px;
	}
	label {
		font-weight: bold;
	}
	input {
 		width: 100%;
  		padding: 12px 20px;
  		margin: 8px 0;
  		box-sizing: border-box;
  		border: 2px solid red;
  		border-radius: 4px;
	}
</style>
</head>
<body>
<div class="student">
<% Student s = (Student)request.getAttribute("student"); %>
<h2>${ message }</h2>
<form action="Student.cdac">
Enter Student Roll_NO : <input type="hideen" name="roll_no"value="<%= s.getRollNo() %>" /> <br />
Enter Student Name : <input type="text" name="name" value="<%= s.getName() %>" /> <br />
Enter Student Surname : <input type="text" name="surname" value="<%= s.getSurname() %>"/> <br />
Enter Student Mother Name : <input type="text" name="mother"value="<%= s.getMotherName() %>" /> <br />
Enter Student Passing_year : <input type="number" name="passing_year"value="<%= s.getPassingYear() %>" /> <br />
Enter Mark English : <input type="number" name="english" value="<%= s.getEnglishMark() %>"/> <br />
Enter Mark Marathi : <input type="number" name="marathi"value="<%= s.getMarathiMark() %>" /> <br />
Enter Mark Hindi : <input type="number" name="hindi"value="<%= s.getHindiMark() %>" /> <br />
Enter Mark Math : <input type="number" name="math"value="<%= s.getMathMark() %>" /> <br />
Enter Mark Science : <input type="number" name="science"value="<%= s.getScienceMark() %>" /> <br />

<button type="submit">Add_Details</button>
</form>
</div>
</body>
</html>