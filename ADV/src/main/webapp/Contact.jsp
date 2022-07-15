<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>

        body{
            /* background-color: rgb(203, 230, 221);  */
            background: radial-gradient(#fff,#ffd6d6);
            background-repeat: no-repeat;
            background-size: 100% 150%;
        }
        .first{
            text: size adjust 42px; 
            text-align: center;
            /* background-color: rgb(98, 107, 206); */
            background-color: rgb(138, 41, 107);
            color: aliceblue;
            padding: 50px;
            margin: 12px;
            border-radius: 50px;
            
        }
        #phone{
        
            text-align: center;
            border: auto;
            padding: 12px;
            border-radius: 50px;
            margin: 12px;
            background-color: rgb(201, 207, 207);
            width: 50%;
            height: 30%;
            border: 3px solid gray;
        }

        #Mail{
            text-align: center;
            border: auto;
            padding: 12px;
            padding-bottom: 50px;
            border-radius: 50px;
            margin: 12px;
            background-color: rgb(201, 207, 207);
            width: 50%;
            height: 140%;
            border: 3px solid gray;

        }
        .contact{
            display: flex;
            
        }
    </style>
</head>
<body>
  <div class="first">
    <h1>Contact Us </h1>
  </div>
    <div class="contact" >
        <div id="phone">
            <img src="images/phone.png" alt="" srcset="">
            <h3>BY PHONE</h3>
            <p>(Monday to Friday, 9am to 10pm )</p>
            <h3>All INDIA Toll-Free</h3>
            <h3>+91-8763553623</h3>
    
            <h3>International</h3>
            <h3>1-234-567-0123</h3>
        </div>
     

        <div id="Mail">
    
        <img src="images/mail.jpg" alt="" srcset="">
        <h3>BY Mail</h3>
        <p>(All Time)</p>
        <h3>Komal@gmail.com</h3>
        <h3>Gopal@gmail.com</h3>

        <h3>Mrunali@gmail.com</h3>
        

    </div>
</body>
</html>