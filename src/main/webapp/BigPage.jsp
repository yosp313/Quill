<%--
  Created by IntelliJ IDEA.
  User: youss
  Date: 5/15/2024
  Time: 11:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

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
        .icon {
            padding: 5px;
            margin: 0 1rem;
            background: transparent;
            border: none;
            display: none;
            font-size: 2rem;
            cursor: pointer;
        }
        .icon .fa-times-circle,
        .icon span {
            position: fixed;
            left: -100vw;
        }
        .icon:hover {
            background: #fff;
        }
        .icon:focus {
            outline: 1px dotted #ccc;
        }
        .Name{
            padding-top: 3%;
            padding-bottom: 3%;
            padding-left:15%;
            color: #1D8CDB;
        }
        .Title{
            justify-content: center;
            align-items: center;
            color: #1D8CDB;
            text-align: center;
            padding-bottom: 3%;
        }
        .Content{
            padding-left:7%;
            padding-right: 7%;
            color: #1D8CDB;
            font-size: 20px;
            word-wrap: break-word;
        }
    </style>
    <title>Blog-Post</title>
    <header id="topnav">
        <nav>
            <div id="navbarcontainer"> <img class="logo" src="https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/438100483_769472191919124_8825375989662758722_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEo_7XKLWUbYxh5iCcewcSuvDb1LEqEu6e8NvUsSoS7p8AJuNduRDfj_eRhW98FUprJft1JJBiXOYOX12w0vqMI&_nc_ohc=12WBnC8kuWIQ7kNvgHojWBo&_nc_ht=scontent.fcai20-6.fna&oh=00_AYCw1THfudK2YfoP0f0Hjw1R9xNejLzft7AP0puwt4YFyw&oe=6646D6BE" alt="Logo">
                <ul>
                    <li> <a href="Home.jsp"><i class="fa fa-fw fa-home"></i> Home</a> </li>
                    <li> <a href="#divmedia"><i class="fa-solid fa-comment"></i> My Blog</a> </li>
                    <li> <a href="#content"><i class="fa-solid fa-right-from-bracket"></i> Sign-Out</a> </li>
                </ul>
                <img class="PPimage" src="https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/438100483_769472191919124_8825375989662758722_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEo_7XKLWUbYxh5iCcewcSuvDb1LEqEu6e8NvUsSoS7p8AJuNduRDfj_eRhW98FUprJft1JJBiXOYOX12w0vqMI&_nc_ohc=12WBnC8kuWIQ7kNvgHojWBo&_nc_ht=scontent.fcai20-6.fna&oh=00_AYCw1THfudK2YfoP0f0Hjw1R9xNejLzft7AP0puwt4YFyw&oe=6646D6BE" alt="Logo">
            </div>

        </nav>
    </header>
</head>
<body>
        <h3 class="Name">Youssef Ayman</h3>

        <h1 class="Title"> How to be A GOOODDD SUUUUUUU</h1>
        <P class="Content">dfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfddfoghjfdoiugjdfoigjhdfuioghfdughfd</P>
</body>
</html>
