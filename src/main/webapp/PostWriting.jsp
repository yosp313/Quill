<%--
  Created by IntelliJ IDEA.
  User: youss
  Date: 5/12/2024
  Time: 7:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>



    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link rel="stylesheet" href="Homestyle.css">
    <title>Home-Feed</title>
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

        .Form a{
            font-family: Arial, Helvetica, sans-serif;
        ;
        }
        .Form{
            box-shadow: 0px  0px  15px;
             border-radius:36px ;
            border-color: #0000003a;
            width: 60%;
            height: 60%;
            padding-bottom: 5%;
            padding-left: 5%;
            padding-right: 5%;
            justify-content: center;
            align-items: center;
            padding-top: 5%;
        }


        /* Full-width input fields */
        input[type=text], input[type=password] {
            width: 100%;
            padding: 15px;
            padding-left: 5%;
            margin: 5px 0 22px 0;
            border-radius: 11px;
            background: #ffffff;
            border-color: #0000003a;

        }
        .Form .Title{
             font-size: 20px;
            color: #1D8CDB;
        }

        .Form .Content {
            font-size: 20px;
            height: 60%;
            color: #1D8CDB;

        }
        .Form .Content .placeholder{
            padding-bottom: 5%;
        }
        input[type=text]:focus, input[type=password]:focus {
            background-color: #ddd;
            outline: none;
        }

        .Submitbtn {
            justify-content: flex-start;
            background-color: #1D8CDB;
            color: white;
            padding-right: 30%;
            padding: 5px 10px;
            border: none;
            border-radius:11px ;
            cursor: pointer;
            width: 30%;
            opacity: 0.9;
            font-size: 25px;
            font-family: Arial, Helvetica, sans-serif;
        }

        .Submitbtn:hover {
            opacity: 1;
        }
        .frombg{
            padding-top: 5%;
            padding-left: 30%;
        }

    </style>
    <header id="topnav">
        <nav>
            <div id="navbarcontainer"> <img class="logo" src="https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/438100483_769472191919124_8825375989662758722_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEo_7XKLWUbYxh5iCcewcSuvDb1LEqEu6e8NvUsSoS7p8AJuNduRDfj_eRhW98FUprJft1JJBiXOYOX12w0vqMI&_nc_ohc=12WBnC8kuWIQ7kNvgHojWBo&_nc_ht=scontent.fcai20-6.fna&oh=00_AYCw1THfudK2YfoP0f0Hjw1R9xNejLzft7AP0puwt4YFyw&oe=6646D6BE" alt="Keep SW Florida Great">
                <ul>
                    <li> <a href="#pacpledge"><i class="fa fa-fw fa-home"></i>Home</a> </li>
                    <li> <a href="#divmedia"><i class="fa fa-fw fa-search"></i>My Blog</a> </li>
                    <li> <a href="#content"><i class="fa fa-fw fa-envelope"></i>Sign-Out</a> </li>
                </ul>
            </div>
        </nav>
    </header>
</head>
<body>
<div class="frombg">
    <section class="Form">
        <form action="/blogs" method="post" class="formtext">

            <input placeholder="Title" type="text" name="title" class="Title"/><br>
            <input placeholder="Content" type="text" name="content" class="Content"/> <br>
            <button type="submit" class="Submitbtn">Submit</button>
        </form>
    </section>
</div>

${message}
</body>
</html>
