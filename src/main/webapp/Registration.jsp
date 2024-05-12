<%--
  Created by IntelliJ IDEA.
  User: youss
  Date: 5/10/2024
  Time: 6:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" href="Login.css">
    <style>
        .logo img {
            margin-left: 1%;
            margin-top: 1%;
            width: 3%;
            height: auto;
        }
        body, html {
            height: 100%;
        }

        * {
            box-sizing: border-box;
        }


        .LoginImg{
            margin: 1%;
            width: 100%;
        }
        .Title{
            justify-content: center;
            text-align: center;
            font-size: 60px;
            font-family: Arial;

            color: #1D8CDB;
        }

        .ImgPart{
            margin-left: 10%;
            justify-content: flex-start;
            float: left;
        }

        .TextField{
            justify-content: flex-end;
            float: right;
        }

        .TextField form{
            color: #000000;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: 500;
            font-size: 20px;
        }

        .Form h2{
            font-family: Arial, Helvetica, sans-serif;
            font-size: 35px;
        }
        .Form a{
            font-family: Arial, Helvetica, sans-serif;
            color: #0000004f;
        }
        .Form{
            padding-right: 20%;
            justify-content: center;
            align-items: center;
            padding-top: 5%;
        }


        /* Full-width input fields */
        input[type=text], input[type=password] {
            width: 200%;
            padding: 15px;
            margin: 5px 0 22px 0;
            border-radius: 11px;
            background: #ffffff;
            border-color: #0000003a;

        }

        input[type=text]:focus, input[type=password]:focus {
            background-color: #ddd;
            outline: none;
        }

        .Submitbtn {
            justify-content: center;
            align-items: center;
            background-color: #1D8CDB;
            color: white;
            padding: 5px 10px;
            border: none;
            border-radius:11px ;
            cursor: pointer;
            width: 70%;
            opacity: 0.9;
            font-size: 25px;
            font-family: Arial, Helvetica, sans-serif;
        }

        .Submitbtn:hover {
            opacity: 1;
        }


        .Form p{
            font-family: Arial, Helvetica, sans-serif;
            color: #0000004f;
            padding-top: 2%;
            margin-top: 2%;
        }
        .Form p span a{
            color: #1D8CDB;
        }</style>

 </head>

<header>
    <a href="#" class="logo"><img src="Assets/Logo.png"></a>
</header>
<body>
<section class="ImgPart">
    <h1 class="Title"> Writing is our thing!</h1>
    <br>
    <img src="Assets/LoginImg.png" class="LoginImg">
</section>

<section class="Form">

    <section class="TextField">
        <h2>Registration</h2>
        <a>Start your creative journey with Quill</a>
        <div class="Form">

            <form action="registerController.jsp" > <!--Add database section-->
                <label for="Fname">First Name</label>
                <input type="text" id="Fname" name="Fname" placeholder="Enter your first name here"><br>
                <label for="Lname">Last Name</label>
                <input type="text" id="Lname" name="Lname" placeholder="Enter your last name here"><br>
                <label for="email">Email</label>
                <input type="text" id="email" name="email" placeholder="Enter your email here"><br>
                <label for="Password">Password</label>
                <input type="text" id="Password" name="Password" placeholder="Enter your password here"><br>
                <input type="submit" value="Register" class="Submitbtn" >
            </form>
        </div>
        <p>Already have an account? <span><a href="Login.html">Login</a></span></p>
    </section>
</section>



</body>
</html>
