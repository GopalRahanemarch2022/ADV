<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="com.cdac.controller.StudentController" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>StudentResult</title>
<style>

 table,th,tr,td{
        border:3px green solid;
        margin-left: 300px;
        background-color: rgb(94, 214, 204);
        
    }
</style>
</head>
<body>
<h2 style="aliane">Exam Result!!!!!!!!!!!!</h2>
<table>
	<tr>
     <c:forEach	items="${ resultOfStudent }" var="student">
     </tr>
	<tr>
		<th colspan="2"><h1>Result</h1></th>
	</tr>
	<tr>
		<td>
			RollNo
		</td>
		<td>
			${ student.rollNo }
		</td>
	</tr>
	<tr>
		<td>
			Name
		</td>
		<td>
			${ student.name }
		</td>
	</tr>
	<tr>
		<td>
			Surname
		</td>
		<td>
			${ student.surname }
		</td>
	</tr>
	<tr>
		<td>
			MotherName
		</td>
		<td>
			${ student.motherName }
		</td>
	</tr>
	<tr>
		<td>
			PassingYear
		</td>
		<td>
			${ student.passingYear}
		</td>
	</tr>
	<tr>
		<td>
			English_Mark
		</td>
		<td>
			${ student.englishMark }
		</td>
	</tr>
	<tr>
		<td>
			Marathi_Mark
		</td>
		<td>
			${ student.marathiMark }
		</td>
	</tr>
	
	<tr>
		<td>
			Hindi_Mark
		</td>
		<td>
			${ student.hindiMark }
		</td>
	</tr>
	<tr>
		<td>
			Math_Mark
		</td>
		<td>
			${ student.mathMark }
		</td>
	</tr>
	<tr>
		<td>
			Science_Marks
		</td>
		<td>
			${ student.scienceMark }
		</td>
	</tr>
	<tr>
		<td>
			Total Marks
		</td>
		<td>
			
			${ student.englishMark + student.marathiMark + student.hindiMark + student.mathMark + student.scienceMark }
			
		</td>
	</tr>
	<tr>
		<td>
			Percentage
		</td>
		<td>
			${ (((student.englishMark +student.marathiMark + student.hindiMark + student.mathMark + student.scienceMark)/500)*100)}% 
		</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>