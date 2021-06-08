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
        <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,500,700,800" rel="stylesheet">
        <link href="http://netdna.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
        <link  href="${pageContext.request.contextPath}/resources/css/search.css" rel="stylesheet">
        <!-- Modernizr JS -->
        <script src="${pageContext.request.contextPath}/resources/js/modernizr-2.6.2.min.js"></script>
        <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/search.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,500,700,800" rel="stylesheet">
        <link href="http://netdna.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
                integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>

        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
                integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>


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
                                    <a href="./">StatSports<span>.</span></a>
                                </div>
                            </div>
                            <div class="col-xs-10 text-right menu-1">
                                <ul>
                                    <li class="active">
                                        <a href="./" >Home</a>
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

            <header id="fh5co-header" class="fh5co-cover" role="banner" data-stellar-background-ratio="0.5">
                <!--<div class="overlay"></div>-->


                <form onsubmit="event.preventDefault();" role="search" autocomplete="off">
                    <!-- <label for="search">Search for stuff</label> -->
                    <input id="search" type="search" placeholder="Search Ground"  />
                    <button type="submit">Go</button>
                </form>

                <div class="table-responsive">
                    <table id="table" class="table table-hover  table-dark" style="color: white; margin-top: 20px;">
                        <thead style="color: darkorange; font-size: 18px;">
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Ground Name</th>
                                <th scope="col">City</th>
                                <th scope="col">Country</th>
                            </tr>
                        </thead>
                        <tbody style="font-size: 18px">

                            <c:forEach var="groundList" items="${groundList}" >


                                <tr onclick="sendGroundId(${groundList.ground_id})">

                                    <th>
                                        <a id="${groundList.ground_id}" onclick="sendGroundId(${groundList.ground_id})">
                                            ${groundList.ground_id}
                                        </a>
                                    </th>

                                    <td><a id="${groundList.ground_id}" onclick="sendGroundId(${groundList.ground_id})">
                                            ${groundList.ground_name}</a></td>


                                    <td><a id="${groundList.ground_id}" onclick="sendGroundId(${groundList.ground_id})">

                                            ${groundList.city}

                                        </a>
                                    </td>
                                    <td>
                                        <a id="${groundList.ground_id}" onclick="sendGroundId(${groundList.ground_id})">

                                            ${groundList.country}
                                        </a>
                                    </td>   
                                </tr>

                            </c:forEach>

                        </tbody>
                    </table>
                </div>
            </header>
        </div>


        <footer id="fh5co-footer" class="fh5co-bg" style="background-image: url(${pageContext.request.contextPath}/resources/images/img_bg_1.jpg);" role="contentinfo">
            <div class="overlay"></div>
            <div class="container">
                <div class="row row-pb-md">
                    <div class="col-md-4 fh5co-widget">
                        <h3>A Little About StatSports.</h3>
                        <p style="font-size: 18px">StateSports is an Indian sports website owned by Team Alpha. It features intresting facts about diffrent sports and live coverage of diffrent sports matches, player stats and team rankings.
                        </p>
                    </div>
                </div>
                <div class="row copyright">
                    <div class="col-md-12 text-center">
                        <p >
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


        <div class="gototop js-top">
            <a href="#" class="js-gotop">
                <i class="fa fa-angle-double-up" style="font-size:48px;color:red"></i>
            </a>
        </div>
        <script>
            window.onload = function () {
                document.getElementById("search").value = "";
            };
            function sendGroundId(ground_id)
            {
                window.location = 'groundscore?ground_id=' + ground_id + '&tournament_id=' + ${param.tournament_id};
            }
            var $rows = $('#table tr');
            $('#search').keyup(function () {
                var val = $.trim($(this).val()).replace(/ +/g, ' ').toLowerCase();

                $rows.show().filter(function () {
                    var text = $(this).text().replace(/\s+/g, ' ').toLowerCase();
                    return !~text.indexOf(val);
                }).hide();
            });
            function sendGroundId(ground_id)
            {
                window.location = 'groundscore?ground_id=' + ground_id + '&tournament_id=' + ${param.tournament_id};
            }
        </script>
        <!-- jQuery -->
        <script src="resources/js/jquery.min.js"></script>
        <!-- jQuery Easing -->
        <script src="resources/js/jquery.easing.1.3.js"></script>
        <!-- Bootstrap -->
        <script src="resources/js/bootstrap.min.js"></script>
        <!-- Waypoints -->
        <script src="resources/js/jquery.waypoints.min.js"></script>
        <!-- Stellar Parallax -->
        <script src="resources/js/jquery.stellar.min.js"></script>
        <!-- Carousel -->
        <script src="resources/js/owl.carousel.min.js"></script>
        <!-- countTo -->
        <script src="resources/js/jquery.countTo.js"></script>
        <!-- Magnific Popup -->
        <script src="resources/js/jquery.magnific-popup.min.js"></script>
        <script src="resources/js/magnific-popup-options.js"></script>
        <!-- Main -->
        <script src="resources/js/main.js"></script>
    </body>
</html>
