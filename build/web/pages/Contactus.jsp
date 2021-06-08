<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>StatSports &mdash; Contact us </title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Free HTML5 Website Template by freehtml5.co"/>
        <meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive"/>
        <meta name="author" content="freehtml5.co"/>
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
            form{
                color: black;
            }
        </style>
    </head>
    <body>
        <div class="fh5co-loader"></div>
        <div id="page">
            <div id="page">
            <nav class="fh5co-nav" role="navigation">
                <div class="top-menu ">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-2">
                                <div id="fh5co-logo">
                                    <a href="./"  >StatSports<span>.</span></a>
                                </div>
                            </div>
                            <div class="col-xs-10 text-right menu-1">
                                <ul>
                                    <li class="active">
                                        <a href="./"  >Home</a>
                                    </li>
                                    </li>
                                    <li class="active">
                                        <a href=""  >Contact us</a>
                                    </li>
                                    <li class="active">
                                        <a href="./aboutus"  >About us</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
            <header id="fh5co-header" class="fh5co-cover fh5co-cover-sm" role="banner" 	 data-stellar-background-ratio="0.5">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 text-center">
                            <div class="display-t">
                                <div class="display-tc animate-box" data-animate-effect="fadeIn">
                                    <h1>Contact Us</h1>
                                    <h2>Feel free to contact with us</a></h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <div id="fh5co-contact" style="background-image:url(https://www.solidbackgrounds.com/images/1920x1080/1920x1080-black-solid-color-background.jpg);">
                <div class="container">
                    <div class="row">
                        <div class="col-md-5 col-md-push-1 animate-box">
                            <div class="fh5co-contact-info" >
                                <h3>Contact Information</h3>
                                <ul>
                                    <li class="address">198 West 21th Street, <br> Suite 721 New York NY 10016</li>
                                    <li class="phone"><a href="tel://1234567920">+ 1235 2355 98</a></li>
                                    <li class="email"><a href="mailto:info@yoursite.com">info@yoursite.com</a></li>
                                    <li class="url"><a href="http://gettemplates.co">gettemplates.co</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-6 animated-box">
                            <h3>Get In Touch</h3>
                            <form action="#">
                                <div class="row form-group">
                                    <div class="col-md-6">
                                        <!-- <label for="fname">First Name</label> -->
                                        <input type="text" id="fname" class="form-control" placeholder="Your firstname">
                                    </div>
                                    <div class="col-md-6">
                                        <!-- <label for="lname">Last Name</label> -->
                                        <input type="text" id="lname" class="form-control" placeholder="Your lastname">
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-12">
                                        <!-- <label for="email">Email</label> -->
                                        <input type="text" id="email" class="form-control" placeholder="Your email address">
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-12">
                                        <!-- <label for="subject">Subject</label> -->
                                        <input type="text" id="subject" class="form-control" placeholder="Your subject of this message">
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-12">
                                        <!-- <label for="message">Message</label> -->
                                        <textarea name="message" id="message" cols="30" rows="10" class="form-control" placeholder="Say something about us"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="submit" value="Send Message" class="btn btn-primary">
                                </div>
                            </form>		
                        </div>
                    </div>

                </div>
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
