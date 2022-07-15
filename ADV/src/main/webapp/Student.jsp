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
<h2>${ message }</h2>
<form action="Student.cdac">
Enter Student Roll_NO : <input type="text" name="roll_no" /> <br />
Enter Student Name : <input type="text" name="name" /> <br />
Enter Student Surname : <input type="text" name="surname" /> <br />
Enter Student Mother Name : <input type="text" name="mother" /> <br />
Enter Student Passing_year : <input type="number" name="passing_year" /> <br />
Enter Mark English : <input type="number" name="english" /> <br />
Enter Mark Marathi : <input type="number" name="marathi" /> <br />
Enter Mark Hindi : <input type="number" name="hindi" /> <br />
Enter Mark Math : <input type="number" name="math" /> <br />
Enter Mark Science : <input type="number" name="science" /> <br />

<button type="submit">Add_Details</button>
</form>
</div>
</body>
</html>