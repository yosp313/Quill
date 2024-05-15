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
             font-weight: 300;
            text-decoration: none;
            font-family: Arial, Helvetica, sans-serif;

        }
        body{
             width: 100%;
            height: 100%;
        }

    </style>
</head>
<body>

<header>
    <a href="#" class="logo"><img src="https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/438100483_769472191919124_8825375989662758722_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEo_7XKLWUbYxh5iCcewcSuvDb1LEqEu6e8NvUsSoS7p8AJuNduRDfj_eRhW98FUprJft1JJBiXOYOX12w0vqMI&_nc_ohc=12WBnC8kuWIQ7kNvgHojWBo&_nc_ht=scontent.fcai20-6.fna&oh=00_AYCw1THfudK2YfoP0f0Hjw1R9xNejLzft7AP0puwt4YFyw&oe=6646D6BE"></a>
</header>

<div>
    <br>
    <img src="https://scontent.fcai20-1.fna.fbcdn.net/v/t39.30808-6/438159801_769472141919129_6641703499734178633_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeF5Sk3CeSCJFq1WBTRWWaYIYWDVwvMeSEthYNXC8x5IS5mAV-kjgJvt3itKl6cf_IQFkkyOjzjt2Vf9_LzqOSmQ&_nc_ohc=zol7BWfnJ7kQ7kNvgHPhvum&_nc_ht=scontent.fcai20-1.fna&oh=00_AYAfDOdRtmacsr2ZrKrdRMwhnZoMPX2wNCyDd9i_u4p0Ng&oe=6646EAA1" class="HeroBlog" >

    <h1 class="Title"> Unlock a world of possibilities with just a <span class="TitleColor">QUILL.</span></h1>
    <img src="https://scontent.fcai20-4.fna.fbcdn.net/v/t39.30808-6/438077660_769472188585791_2316222035510630391_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeGRIEphwRp-TaImfcgAsMfR5vsxu4uMabbm-zG7i4xptvGaM_PVcwvRnM_UEomwVr3HSdFLtDK0DlHw_iaooQCm&_nc_ohc=LXDJglpnzsQQ7kNvgE7zqAW&_nc_ht=scontent.fcai20-4.fna&oh=00_AYCFdCf7r6kZP9HF91qi2MHDZXezkqeIbtpPy1RJwX_TMQ&oe=6647017C" class="HeroImg">
</div>
<br>

<div>
    <button class="GetStartedbtn" type="button"><a  href="Login.jsp">Get Started!</a></button>

</div>


<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="/login">Login</a>
<a href="/register">Register</a>
</body>
</html>