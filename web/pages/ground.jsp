<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>.<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">   
        <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,500,700,800" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--<title>JSP Page</title>-->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Stamina &mdash; Free Website Template, Free HTML5 Template by freehtml5.co</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Free HTML5 Website Template by freehtml5.co"/>
        <meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive"/>
        <meta name="author" content="freehtml5.co"/>
        <!-- Facebook and Twitter integration -->
        <meta property="og:title" content=""/>
        <meta property="og:image" content=""/>
        <meta property="og:url" content=""/>
        <meta property="og:site_name" content=""/>
        <meta property="og:description" content=""/>
        <meta name="twitter:title" content=""/>
        <meta name="twitter:image" content=""/>
        <meta name="twitter:url" content=""/>
        <meta name="twitter:card" content=""/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">   
        <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,500,700,800" rel="stylesheet">
        <!-- Animate.css -->
        <link  href="${pageContext.request.contextPath}/resources/css/animate.css" rel="stylesheet">
        <!-- Icomoon Icon Fonts-->
        <link  href="${pageContext.request.contextPath}/resources/css/icomoon.css" rel="stylesheet">

        <!-- Bootstrap -->
        <link  href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
        <!-- Magnific Popup -->
        <link  href="${pageContext.request.contextPath}/resources/css/magnific-popup.css" rel="stylesheet">
        <!-- Owl Carousel -->
        <link  href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css" rel="stylesheet" >
        <!-- Theme style -->
        <link  href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
        <!-- Modernizr JS -->
        <script src="${pageContext.request.contextPath}/resources/js/modernizr-2.6.2.min.js"></script>
        <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">

        <style>
            * {
                box-sizing: border-box;
            }

            #myInput {
                background-image: url('fa fa-twitter');
                background-position: 10px 12px;
                background-repeat: no-repeat;
                width: 100%;
                font-size: 16px;
                padding: 12px 20px 12px 40px;
                border: 1px solid #ddd;
                margin-bottom: 12px;
            }

            #myUL {
                list-style-type: none;
                padding: 0;
                margin: 0;
            }

            #myUL li a {
                border: 1px solid #ddd;
                margin-top: -1px; /* Prevent double borders */
                background-color: #f6f6f6;
                padding: 12px;
                text-decoration: none;
                font-size: 18px;
                color: black;
                display: block
            }

            #myUL li a:hover:not(.header) {
                background-color: #eee;
            }
        </style>
    </head>

    <body>
        <div id="page">
            <nav class="fh5co-nav" role="navigation">
                <div class="top-menu ">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-2">
                                <div id="fh5co-logo">
                                    <a href="../SportStat/"  >StatSports<span>.</span></a>
                                </div>
                            </div>
                            <div class="col-xs-10 text-right menu-1">
                                <ul>
                                    <li class="active">
                                        <a href="../SportStat/" >Home</a>
                                    </li>
                                   
                                    <li class="active">
                                        <a href="../SportStat/contactus"  >Contact us</a>
                                    </li>
                                    <li class="active">
                                        <a href="../SportStat/aboutus"  >About us</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
            <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for stadium" title="Type in a ground name">
            <ul id="myUL" > 
                <c:forEach var="groundList" items="${groundList}" >
                    <li>
                        <a id="${groundList.ground_id}" onclick="sendGroundId(${groundList.ground_id})">
                            ${groundList.ground_name}---
                            ${groundList.city}---
                            ${groundList.country}---
                        </a>
                        <hr>
                    </li>
                </c:forEach>
            </ul>

        </div>

        <footer id="fh5co-footer" class="fh5co-bg" style="background-image: url(${pageContext.request.contextPath}/resources/images/img_bg_1.jpg);" role="contentinfo">
            <div class="overlay"></div>
            <div class="container">
                <div class="row row-pb-md">
                    <div class="col-md-4 fh5co-widget">
                        <h3>A Little About StatSports.</h3>
                        <p>StateSports is an Indian sports website owned by Team Alpha. It features intresting facts about diffrent sports and live coverage of diffrent sports matches, player stats and team rankings.
                        </p>
                    </div>
                </div>
                <div class="row copyright">
                    <div class="col-md-12 text-center">
                        <p>
                            <small class="block">&copy; 2021 State Sports. All Rights Reserved.</small> 
                            <small class="block">Designed by Team Alpha </small>
                        </p>
                        <p>
                        <ul class="fh5co-social-icons">
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                            <li><a href="#"><i class="fa fa-github"></i></a></li>
                        </ul>
                        </p>
                    </div>
                </div>
            </div>
        </footer>
    </div>

    <div class="gototop js-top">
        <a href="#" class="js-gotop">
            <i class="fa fa-angle-double-up" style="font-size:48px;color:red"></i>
        </a>
    </div>

<script>
    function myFunction() {
        var input, filter, ul, li, a, i, txtValue;
        input = document.getElementById("myInput");
        filter = input.value.toUpperCase();
        ul = document.getElementById("myUL");
        li = ul.getElementsByTagName("li");
        for (i = 0; i < li.length; i++) {
            a = li[i].getElementsByTagName("a")[0];
            txtValue = a.textContent || a.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                li[i].style.display = "";
            } else {
                li[i].style.display = "none";
            }
        }
    }
    function sendGroundId(ground_id)
    {
        window.location = 'groundscore?ground_id=' + ground_id + '&tournament_id=' + ${param.tournament_id};
    }
</script>
</body>
</html>
