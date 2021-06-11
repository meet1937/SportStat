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
        <title>StatSports &mdash; Website to See All Cricket Stats </title>
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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/teamvsteamstats.css">
        <!--<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/teamVsTeam.css">-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link rel="stylesheet" href="resources/css/search.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <style>
            body {
                margin: 0;
            }
            .point {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%,-50%);
            }
            .round {
                transform: rotate(-90deg);
                transition: all 1s ease-in-out;

                /* SVG */
                fill: none;
                stroke: green;
                stroke-width: 8;
                stroke-linecap: round;
                stroke-dasharray: 0 999;
            }
        </style>
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
                                    <a href="./"  >StatSports<span>.</span></a>
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

                <div class="overlay"></div>
                <div id="fh5co-services" class="fh5co-bg-section testing">
                    <div class="container">
                        <div class="row">
                            <section class="select-option">
                                <div class="dropdown">
                                    <select name="one" class="dropdown-select" onchange="getData()" id="year">
                                        <option value="All" selected>All</option>
                                        <option value="2021">2021</option>
                                        <option value="2020">2020</option>
                                        <option value="2019">2019</option>
                                        <option value="2018">2018</option>
                                        <option value="2017">2017</option>
                                        <option value="2016">2016</option>
                                        <option value="2015">2015</option>
                                        <option value="2014">2014</option>
                                        <option value="2013">2013</option>
                                        <option value="2012">2012</option>
                                        <option value="2011">2011</option>
                                        <option value="2010">2010</option>
                                        <option value="2009">2009</option>
                                        <option value="2008">2008</option>
                                    </select>
                                </div>
                                <div class="dropdown dropdown-dark">
                                    <select name="groundName" id="ground" onchange="getData()" class="dropdown-select">
                                        <option value="All">All</option>
                                        <c:forEach var="groundName" items="${groundName}" >
                                            <option value="${groundName.ground_id}">${groundName.ground_name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <!--                                <div class="submitbtn">
                                                                    <button id="btn" type="" class="submit" onclick="getData()">go</button>
                                                                </div>-->
                            </section>
                        </div>
                        <div class="table-responsive" style="margin-top: 60px;">
                            <table class="table table-hover table-striped table-dark"
                                   style="color: white; margin: auto; margin-top: 20px; font-size: 20px ">
                                <thead style="color: darkorange;">
                                    <tr>
                                        <th scope="col">Statistics</th>
                                        <th scope="col">Result</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="teamvsteam" items="${teamvsteam}">
                                        <tr>
                                            <td>Total Match Played</td>
                                            <td id="td1">${teamvsteam[0]}</td>
                                        </tr>
                                        <c:forEach var="teamList1" items="${teamList1}">
                                            <tr>
                                                <td>${teamList1.team_name} won</td>
                                                <td id="td2">${teamvsteam[1]}</td>
                                            </tr><tr>
                                                <td>${teamList1.team_name} toss won</td>
                                                <td id="td3">${teamvsteam[2]}</td>
                                            </c:forEach>
                                            <c:forEach var="teamList2" items="${teamList2}">
                                            <tr>
                                                <td>${teamList2.team_name} won</td>
                                                <td id="td4">${teamvsteam[0]-teamvsteam[1]}</td>
                                            </tr><tr>
                                                <td> ${teamList2.team_name} toss</td>
                                                <td id="td5">${teamvsteam[0]-teamvsteam[2]}</td>
                                            </c:forEach>
                                        </c:forEach> 
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </header>
            <footer id="fh5co-footer" class="fh5co-bg" style="background-image: url(${pageContext.request.contextPath}/resources/images/img_bg_1.jpg);"  role="contentinfo">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row row-pb-md">
                        <div class="col-md-4 fh5co-widget">
                            <h3 style="font-size: 18px">A Little About StatSports.</h3>
                            <p style="font-size: 18px" >StateSports is an Indian sports website owned by Team Alpha. It features intresting facts about diffrent sports and live coverage of diffrent sports matches, player stats and team rankings.
                            </p>
                        </div>
                    </div>
                    <div class="row copyright">
                        <div class="col-md-12 text-center">
                            <p style="font-size: 20px" >
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
            $(document).ready(function () {
                var $round = $('.round'),
                        roundRadius = $round.find('circle').attr('r'),
                        roundPercent = $round.data('percent'),
                        roundCircum = 2 * roundRadius * Math.PI,
                        roundDraw = roundPercent * roundCircum / 100
                $round.css('stroke-dasharray', roundDraw + ' 999')
            });
        </script>
        <script>
            function getData() {
                var x = document.getElementById("year").value;
                var y = document.getElementById("ground").value;
                console.log(x);
                console.log(y);
                $.ajax({
                    type: "GET",
                    url: "${pageContext.request.contextPath}/teamvsteam/advancefilter",
                    data: {
                        "ground_id": y,
                        "tournament_id": ${param.tournament_id},
                        "year": x,
                        "team1": ${param.team1},
                        "team2": ${param.team2}
                    },
                    success: function (data) {
                        console.log(data);
                        var obj=data;
                        $('#td1').html(obj[0][0]);
                        $('#td2').html(obj[0][1]);
                        $('#td3').html(obj[0][2]);
                        $('#td4').html(obj[0][0]-obj[0][1]);
                        $('#td5').html(obj[0][0]-obj[0][2]);
                    }
                });
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
