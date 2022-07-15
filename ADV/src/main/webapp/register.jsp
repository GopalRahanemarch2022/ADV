<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous" />

<head>
    <title>Reg Form</title>
    <style type="text/css">
        h1{
            font-family: 'Times New Roman', Times, serif;
            background-color: rgb(179, 228, 246);
            
        }
        body {
             /* background:linear-gradient(0.25turn,burlywood,rgb(36, 15, 15));   */
            font-family:'Times New Roman', Times, serif;
        }

        input[type="text"] {
            width: 250px;
        }

        input[type="submit"],
        input[type="reset"] {
           
            height: 50px;
            position: relative;
            
            left: 180px;
        }

        form {  
            background-color: rgb(206, 231, 229);
            text-align: center;
            font-family: 'Times New Roman', Times, serif;
            font-size: 20px;
            border: 3px solid rgb(240, 245, 247);
            width: 600px;
            margin: 30px auto;
        }

        td {
            padding: 10px;
        }

        td:first-child {
            text-align: right;
            font-weight: bold;
        }

        td:last-child {
            text-align: left;
        }
    </style>
    
        

</head>

<body background="/image/baggra.jpg">
    <center >
        <h1>GET  REGISTER  HERE</h1>
    </center>
    <hr>
    <form action="abc.cdac" name="reg_form">
        <h2>Registration Form</h2>
        <table>
            <tr>
                <td><label>Enter AdminId: </label></td>
                <td>
                    <input type="text" name="adminId" placeholder="AdminId">
                </td>
            </tr>
            <tr>
                <td><label>Enter Name </label></td>
                <td>
                    <input type="text" name="name" placeholder="Name">
                </td>
            </tr>
            <tr>
                <td><label>Enter EmailId</label></td>
                <td>
                    <input type="email" size="30" name="email" placeholder="EmailId">
                </td>
            </tr>
            <tr>
                <td><label >Enter Password</label></td>
                <td>
                 <input type="password" size="30" name="password" placeholder="Password">   
                  
            </tr>
            
            <tr>
                <td><label>Enter Mobile No: </label></td>
                <td>
                    <input type="text" name="mobileNumber" placeholder="Mobile No">
                </td>
            </tr>
           
            
            <tr>
               <td></td>
               <td>
               
               <button type="submit">Register</button>
               
               </td> 
            </tr>
        </table>
    </form>
</body>