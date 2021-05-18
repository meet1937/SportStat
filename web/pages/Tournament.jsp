
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
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

    </head>
    <body>
        <div class="fh5co-loader"></div>
        <div id="page">
            <nav class="fh5co-nav" role="navigation">
                <div class="top-menu ">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-2">
                                <div id="fh5co-logo">
                                    <a href="index.html">StatSports<span>.</span></a>
                                </div>
                            </div>
                            <div class="col-xs-10 text-right menu-1">
                                <ul>
                                    <li class="active">
                                        <a href="index.html">Home</a>
                                    </li>

                                    </li>
                                    <li class="active">
                                        <a href="gallery.html">Contact us</a>
                                    </li>
                                    <li class="active">
                                        <a href="contact.html">About us</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>

            <header id="fh5co-header" class="fh5co-cover" role="banner" data-stellar-background-ratio="0.5">
                <div class="overlay"></div>
                <div id="fh5co-services" class="fh5co-bg-section testing">
                    <c:forEach var="tournamentList" items="${tournamentList}" >
                        <div class="container">
                            <div class="row">
                                <div class="col-md-4 text-center animate-box">

                                    <div class="services column" id="${tournamentList.tournament_id}" onclick="sendRequest(${tournamentList.tournament_id})">
                                        <img class="img-responsive" src="" alt="">
                                        <figure>
                                            <% System.out.println(request.getContextPath());%>
                                            <img src="${pageContext.request.contextPath}/${tournamentList.tournament_image}" width="300px" height="300px" alt="Trulli" ">
                                        </figure>
                                        <h2 style="color:whitesmoke">${tournamentList.tournament_name}</h2>
                                    </div>
                                </div>
                            </c:forEach>       
                        </div>
                    </div>
                </div>
            </header>
        </div>

        <footer id="fh5co-footer" class="fh5co-bg" style="background-image: url(${pageContext.request.contextPath}/resources/images/img_bg_1.jpg);" role="contentinfo">
            <div class="overlay"></div>
            <div class="container">
                <div class="row row-pb-md">
                    <div class="col-md-4 fh5co-widget">
                        <h3>A Little About Stamina.</h3>
                        <p>StateSports is an Indian sports website owned by Team Alpha. It features intresting facts about diffrent sports and live coverage of diffrent sports matches, player stats and team rankings.
                        </p>
                    </div>
                </div>
                <div class="row copyright">
                    <div class="col-md-12 text-center">
                        <p>
                            <small class="block">&copy; 2016 Free HTML5. All Rights Reserved.</small>
                            <small class="block">Designed by
                                <a href="http://freehtml5.co/" target="_blank">FreeHTML5.co</a>
                                Demo Images:
                                <a href="http://unsplash.co/" target="_blank">Unsplash</a>
                            </small>
                        </p>
                        <p>
                        <ul class="fh5co-social-icons">
                            <li>
                                <a href="#" class="fa fa-facebook"></a>
                            </li>
                            <li>
                                <a href="#" class="fa fa-twitter"></a>  
                            </li>
                            <li>
                                <a href="#" class="fa fa-skype"></a>
                            </li>
                            <li>
                                <a href="#" class="fa fa-instagram"></a>
                            </li>
                            <li>
                                <a href="#" class="fa fa-github"></a> 
                            </li>

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
        function sendRequest(tournament_id) {
            window.location = 'tournamentDetails?tournament_id=' + tournament_id;
        }
    </script>
    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
    <!-- jQuery Easing -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
    <!-- Bootstrap -->
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <!-- Waypoints -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
    <!-- Stellar Parallax -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
    <!-- Carousel -->
    <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
    <!-- countTo -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.countTo.js"></script>
    <!-- Magnific Popup -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/magnific-popup-options.js"></script>
    <!-- Main -->
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/modernizr-2.6.2.min.js"></script>
</body>
</html>











