<%-- 
    Document   : layout
   
    Author     : longnguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tổ chức giao diện</title>
<!--        <link href="css/layout.css" rel="stylesheet"/>-->
        <base href="${pageContext.servletContext.contextPath}/">
        <style>
            body{
                margin: 0;
                padding: 0px;
                background-color: lightgray;
            }
            .container{
                max-width:1000px;
                margin: 0 auto;
                background-color: white;
            }
            header{
                background-image: url("../images/header-bg.jpg");
                background-size:100% 100%;
                height: 0;
                padding-bottom: 24%;
                position: relative;
            }
            header>h1{
                font-variant: small-caps;
                font-size: 50px;
                color: white;
                text-shadow: 0 0 20px orangered;
                position: absolute;
                bottom: 10px;
                left: 10px;
            }
            nav{
                line-height: 40px;
                background-color: orangered;
            }
            nav a{
                text-decoration: none;
                font-variant: small-caps;
                color: white;
                padding: 0 5px;
            }
            nav a:hover{
                color:yellow;
            }
            article{
                min-height: 300px;
                width:75%;
                background-color: white;
                float: left;
            }
            aside{
                min-height: 300px;
                width:25%;
                background-color: cyan;
                float: left;
            }
            footer{
                min-height: 50px;
                background-color: orangered;
                border-top: 5px double gray;
                clear: both;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <header>
                <h1>Shopping Mall</h1>
            </header>
            <nav>
                <a href="home/index.htm">Trang chủ</a> |
                <a href="home/about.htm">Giới thiệu</a> |
                <a href="#">English</a> |
                <a href="#">Tiếng Việt</a>
            </nav>
            <article>
                <jsp:include page="${param.view}"/>
            </article>
            <aside>CONTROL PANEL</aside>
            <footer>FOOTER</footer>
        </div>
    </body>
</html>
