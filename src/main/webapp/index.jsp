<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <title>QuiLL</title>
    <link rel="stylesheet" href="STYLE/Style-Main.css">

    <style>
        .logo img {
            margin-left: 1%;
            margin-top: 1%;
            width: 3%;
            height: auto;
        }
        .Title{
            margin-top: 5%;
            font-size: 50px;
            font-family: Arial;
            margin-left: 1%;
        }

        .TitleColor{
            color: #1D8CDB;
        }

        .HeroImg{
            margin-left: 15%;
            height: 100%;
        }

        .HeroBlog{
            float: right;

        }


        .GetStartedbtn{
            font-family: Arial, Helvetica, sans-serif;
            border-radius: 4px;
            border: none;
            padding: 14px 28px;
            font-size: 16px;
            cursor: pointer;
            display: inline-block;
            background-color: #1D8CDB;
            justify-content: center;
            align-items: center;
            margin-left: 25%;
        }
        .GetStartedbtn a{
            color: white;
            font-family: Arial;
            font-weight: 300;

        }
    </style>
</head>
<body>

<header>
    <a href="#" class="logo"><img src="src/main/webapp/ASSETS/Logo.png"></a>
</header>

<div>
    <br>
    <img src="ASSETS/Blog2.png" class="HeroBlog" >
    <h1 class="Title"> Unlock a world of possibilities with just a <span class="TitleColor">QUILL.</span></h1>
    <img src="ASSETS/HeroImg.png" class="HeroImg">
</div>

<section>
    <img src="Assets/HeroImg.png" >

    <img src="Assets/Blog.png" >

</section>


<br>

<div>
    <button class="GetStartedbtn" type="button"><a  href="Login.jsp">Get Started!</a></button>

</div>



</body>
</html>