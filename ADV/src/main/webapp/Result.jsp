<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get-Result</title>
<style>
	.Result {
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
<form action="Result.cdac">
<div class="Result">
<h2>${ message }</h2>
Enter  Roll_NO : <input type="text" name="roll_no" /> <br />
Enter  Mother Name : <input type="text" name="mother" /> <br />
<button type="submit">Get_Result</button>

</div>
</form>
</body>
</html>