<%@ page import="com.blog_post.quill.Models.User" %><%--
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <link rel="stylesheet" href="Login.css">

    <style>
        body {
            margin: 0;
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica,
            Arial, sans-serif;
        }
        html {
            box-sizing: border-box;
        }
        *,
        *:before,
        *:after {
            box-sizing: inherit;
        }
        #main {
            max-width: 1280px;
            margin: auto;
            background: #ffff;
            padding: 10px;
            min-height: 100vh;
        }
        .logo {
            padding-left: 5%;
            padding-right: 30px;
            padding-top: 10px;
        }
        #navbarcontainer {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        #navbarcontainer ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            align-items: baseline;
            flex: 1 0 0%;
        }
        #navbarcontainer a {
            font-family: Arial, Helvetica, sans-serif;
            padding: 10px;
            display: block;
            color: #1D8CDB;
            text-decoration: none;
            font-size: 30px;
        }
        #navbarcontainer a:hover {
            border-radius: 20px;
            background: #1D8CDB;
            color: #fff;

        }
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
        .usernamebtn{
             justify-content: center;
             align-items: center;
             background-color: #1D8CDB;
             color: white;
             padding: 5px 10px;
             border: none;
             border-radius:11px ;
             cursor: pointer;
             width: 100%;
             opacity: 0.9;
             font-size: 25px;
             font-family: Arial, Helvetica, sans-serif;
         }
        .usernamebtn:hover {
            opacity: 1;
        }
        .passbtn{
            justify-content: center;
            align-items: center;
            background-color: #DB1D1D;
            color: white;
            padding: 5px 10px;
            border: none;
            border-radius:11px ;
            cursor: pointer;
            width: 100%;
            opacity: 0.9;
            font-size: 25px;
            font-family: Arial, Helvetica, sans-serif;
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
        .Posts a{
            text-decoration: none;
        }

        .Posts .postTitle{
            color: #1D8CDB;
            font-weight: bolder;
            font-size: 50px;
            justify-content: flex-end;
            align-items: center;
            text-align: start;
        }
        .Posts .postContent{
            color: #9a9a9a;
            font-size: 30px;
            justify-content: center;
            align-items: center;
            text-align: start;
            word-wrap: break-word;
        }
        .fa-solid.fa-user {
            font-size: 5rem; /* Adjust the size of the icon */
            cursor: pointer;
        }
        .fa-solid.fa-user {
            position: relative; /* Use relative positioning */
        }
        .Profile {

            padding-left: 50%;
        }
        .header{
            padding-right: 5%;
        }

    </style>
    <header id="topnav" class="header">
        <nav>
            <div id="navbarcontainer"> <img class="logo" src="https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/438100483_769472191919124_8825375989662758722_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEo_7XKLWUbYxh5iCcewcSuvDb1LEqEu6e8NvUsSoS7p8AJuNduRDfj_eRhW98FUprJft1JJBiXOYOX12w0vqMI&_nc_ohc=12WBnC8kuWIQ7kNvgHojWBo&_nc_ht=scontent.fcai20-6.fna&oh=00_AYCw1THfudK2YfoP0f0Hjw1R9xNejLzft7AP0puwt4YFyw&oe=6646D6BE" alt="Logo">
                <ul>
                    <li> <a href="/blogs"><i class="fa fa-fw fa-home"></i> Home</a> </li>
                    <li> <a href="/myblogs"><i class="fa-solid fa-comment"></i> My Blog</a> </li>

                    <li>
                        <form action="/logout" method="get">
                            <a href="/logout"><i class="fa-solid fa-right-from-bracket" ></i> Sign-Out</a>
                        </form>
                    </li>
                </ul>
                <a href="/profile"><i class="fa-solid fa-user" class="Profile"></i></a>
            </div>

        </nav>
    </header>
</head>
<body>
<section class="ImgPart">
    <br>
    <p id = "LoginImg"></p>
    <img src="https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/438077745_769472205252456_203166154341488787_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeHgBkHwxi_hQ77hwH-vUGX9LrOtVvBLgB4us61W8EuAHmz3eil2MnHRoUXsrZT16N4Qm6BZ7w1OmCyfr5XZgdrO&_nc_ohc=DEYVEDbM8dIQ7kNvgHOrZmO&_nc_ht=scontent.fcai20-3.fna&oh=00_AYApKXyi-RGrvEhp4jbSAQsJv2xouVvF3y2N6uFRAXcvIw&oe=6646E7ED" class="LoginImg">
</section>

<section class="Form">

    <section class="TextField">
        <h2>Profile</h2>
        <a>Start your creative journey with Quill</a>
        <div class="Form">
            <%User user = (User) request.getAttribute("user");%>
            <form action="/profile" method="post">
                <label>Username</label>
                <input type="text" id="Name" name="username" value="<%=user.getUsername()%>"><br>

                <label>Password</label> <br>
                <input type="password" id="pass" name="password"><br>
                <p class="error">${error}</p>
                <br>
                <input type="submit" value="Save"  class="Submitbtn">
            </form>
        </div>
    </section>
</section>


</body>
</html>
