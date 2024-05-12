<%--
  Created by IntelliJ IDEA.
  User: hussenarafa
  Date: 30/04/2024
  Time: 5:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <title>Login</title>
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

            border-image-source: url(././Assets/LoginImg.png);
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
        }
        .Form .error{
            font-size: 15px;
            font-weight: bolder;
        }
    </style>

</head>
<body>

<header>
    <a href="#" class="logo"><img src="https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/438100483_769472191919124_8825375989662758722_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEo_7XKLWUbYxh5iCcewcSuvDb1LEqEu6e8NvUsSoS7p8AJuNduRDfj_eRhW98FUprJft1JJBiXOYOX12w0vqMI&_nc_ohc=12WBnC8kuWIQ7kNvgHojWBo&_nc_ht=scontent.fcai20-6.fna&oh=00_AYCw1THfudK2YfoP0f0Hjw1R9xNejLzft7AP0puwt4YFyw&oe=6646D6BE"></a>
</header>

<section class="ImgPart">
    <h1 class="Title"> Writing is our thing!</h1>
    <br>
    <p id = "LoginImg"></p>
    <img src="https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/438077745_769472205252456_203166154341488787_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeHgBkHwxi_hQ77hwH-vUGX9LrOtVvBLgB4us61W8EuAHmz3eil2MnHRoUXsrZT16N4Qm6BZ7w1OmCyfr5XZgdrO&_nc_ohc=DEYVEDbM8dIQ7kNvgHOrZmO&_nc_ht=scontent.fcai20-3.fna&oh=00_AYApKXyi-RGrvEhp4jbSAQsJv2xouVvF3y2N6uFRAXcvIw&oe=6646E7ED" class="LoginImg">
</section>

<section class="Form">

    <section class="TextField">
        <h2>Login</h2>
        <a>Start your creative journey with Quill</a>
        <div class="Form">


            <form action="/login" method="post">
                <label>Email</label>
                <input type="text" id="mail" name="email" placeholder="Enter your email here"><br>
                <label>Password</label>
                <input type="text" id="pass" name="Password" placeholder="Enter your password here"><br>
                <p class="error">${error}</p>
                <br>
                <input type="submit" value="Login"  class="Submitbtn">
            </form>
        </div>
        <p>Don’t have an account? <span><a href="Registration.jsp">Register</a></span></p>
    </section>
</section>


</body>
</html>
