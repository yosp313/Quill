<%--
  Created by IntelliJ IDEA.
  User: youss
  Date: 5/12/2024
  Time: 9:29 PM
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
        height: 20%;
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
        padding-top: 2%;
        padding-left: 30%;
        padding-bottom: 3%;
    }
    .newblog{
        background-color: white;
        justify-content: flex-start;
        color: #1D8CDB;
        padding-right: 30%;
        padding: 5px 10px;
        border: none;
        border-radius:11px ;
         width: 100%;
         font-size: 25px;
        font-family: Arial, Helvetica, sans-serif;
    }

    .newblog i{
        padding-left: 40%;

    }
    .newblog a{
        text-decoration: none;
        color: #1D8CDB;
    }
    .Postsbg{
        padding-left: 17%;
    }

    .Posts{
        box-shadow: 0px  0px  15px;
        border-radius:36px ;
        border-color: #0000003a;
        width: 80%;
        height: 60%;
        padding-bottom: 5%;
        padding-left: 5%;
        padding-right: 5%;
        justify-content: center;
        align-items: center;
        padding-top: 1%;
     }

    .Posts .postTitle{
        color: #1D8CDB;
        font-weight: bolder;
        font-size: 50px;
        justify-content: flex-end;
        align-items: center;
        text-align: start;
    }
    .Posts .postContant{
        color: #1D8CDB;
        font-size: 30px;
        justify-content: center;
        align-items: center;
        text-align: start;
        word-wrap: break-word;
    }
</style>
<header id="topnav">
    <nav>
        <div id="navbarcontainer"> <img class="logo" src="https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/438100483_769472191919124_8825375989662758722_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEo_7XKLWUbYxh5iCcewcSuvDb1LEqEu6e8NvUsSoS7p8AJuNduRDfj_eRhW98FUprJft1JJBiXOYOX12w0vqMI&_nc_ohc=12WBnC8kuWIQ7kNvgHojWBo&_nc_ht=scontent.fcai20-6.fna&oh=00_AYCw1THfudK2YfoP0f0Hjw1R9xNejLzft7AP0puwt4YFyw&oe=6646D6BE" alt="Logo">
            <ul>
                <li> <a href="#pacpledge"><i class="fa fa-fw fa-home"></i> Home</a> </li>
                <li> <a href="#divmedia"><i class="fa-solid fa-comment"></i> My Blog</a> </li>
                <li> <a href="#content"><i class="fa-solid fa-right-from-bracket"></i> Sign-Out</a> </li>
            </ul>
        </div>
    </nav>
</header>
</head>

<body>
<div class="frombg">
    <section class="Form">
        <form action="" method="post" class="formtext">
            <button class="newblog" ><a href="PostWriting.jsp">What is on your mind? <i class="fa-brands fa-rocketchat"></i></a></button>
        </form>
    </section>
</div>
<br>

<section class="Postsbg" >
    <div class="Posts">
        <ul>
            <% List<Post> blogs = (List<Post>) request.getAttribute("posts"); %>
            <% for (Post blog : blogs) {%>
            <li>
                <h2 class="postTitle"><%= blog.getTitle() %></h2>
                <p class="postContant"><%= blog.getContent() %></p>
            </li>
            <%}%>
        </ul>
        <h2 class="postTitle">test</h2>
        <p class="postContant">houijrsdetgiuorhjgiurthgirutgnjfdkijgndikofgjudfnoigdsfsdfdsfsdfsdfsdfsdfsdfsdfjfdjnhiojotfgjhiourfdgtiodrjgfderspioujgfdfpiougdrfpiugjnrtfpiuhnjtrpiubnrtpijdxgdfrghtr</p>

    </div>
    </section>
</body>
</html>
