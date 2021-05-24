<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE HTML>

<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>StatSports</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Free HTML5 Website Template by freehtml5.co" />
        <meta name="keywords"
              content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
        <meta name="author" content="freehtml5.co" />
        <!-- Facebook and Twitter integration -->
        <meta property="og:title" content="" />
        <meta property="og:image" content="" />
        <meta property="og:url" content="" />
        <meta property="og:site_name" content="" />
        <meta property="og:description" content="" />
        <meta name="twitter:title" content="" />
        <meta name="twitter:image" content="" />
        <meta name="twitter:url" content="" />
        <meta name="twitter:card" content="" />
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
        <!-- Animate.css -->
        <link rel="stylesheet" href="resources/css/animate.css">
        <!-- Icomoon Icon Fonts-->
        <link rel="stylesheet" href="resources/css/icomoon.css">
        <!-- Bootstrap -->
        <link rel="stylesheet" href="resources/css/bootstrap.css">
        <!-- Magnific Popup -->
        <link rel="stylesheet" href="resources/css/magnific-popup.css">
        <!-- Owl Carousel -->
        <link rel="stylesheet" href="resources/css/owl.carousel.min.css">
        <link rel="stylesheet" href="resources/css/owl.theme.default.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="resources/css/style.css">
        <link rel="stylesheet" href="resources/css/search.css">
        <!-- Modernizr JS -->
        <script src="resources/js/modernizr-2.6.2.min.js"></script>
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
                                    <a href="../SportStat/">StatSports<span>.</span></a>
                                </div>
                            </div>
                            <div class="col-xs-10 text-right menu-1">
                                <ul>
                                    <li class="active">
                                        <a href="../SportStat/">Home</a>
                                    </li>

                                    </li>

                                    <li class="active">
                                        <a href="../SportStat/contactus">Contact us</a>
                                    </li>
                                    <li class="active">
                                        <a href="../SportStat/aboutus">About us</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
            <header id="fh5co-header" class="fh5co-cover" role="banner" data-stellar-background-ratio="0.5">
                <select name="year" id="year" onchange="getgrounddata()">
                    <option value="All">All</option>
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
                <div class="table-responsive" style="margin-top: 60px;">
                    <table class="table table-hover table-striped table-dark"
                           style="color: white; margin: auto;margin-top: 20px;">
                        <thead style="color: darkorange;">
                        <h1 style="text-align: center;color: white">${GroundDetail.ground_name} , ${GroundDetail.city} </h1>
                        <tr>
                            <th scope="col">Statistics</th>
                            <th scope="col">Result</th>
                        </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="GroundDataList" items="${GroundDataList}">

                                <tr>
                                    <td>Total Match Played</td>
                                    <td id="td1">${GroundDataList[0]}</td>
                                </tr>
                                <tr>
                                    <td>Average 1st Innings Score</td>
                                    <td id="td2" >${GroundDataList[1]}</td>
                                </tr>
                                <tr>
                                    <td>Average 2nd Innings Score</td>
                                    <td id="td3" >${GroundDataList[2]}</td>
                                </tr>
                                <tr>
                                    <td>Average 1st Innings wickets</td>
                                    <td id="td4" >${GroundDataList[3]}</td>
                                </tr>
                                <tr>
                                    <td>Average 2nd Innings wickets</td>
                                    <td id="td5" >${GroundDataList[4]}</td>
                                </tr>
                                <tr>
                                    <td>Max first inning score</td>
                                    <td id="td6" >${GroundDataList[5]}</td>
                                </tr>
                                <tr>
                                    <td>Max second inning score</td>
                                    <td id="td7" >${GroundDataList[6]}</td>
                                </tr>
                                <tr>
                                    <td>Team won bat first</td>
                                    <td id="td8" >${GroundDataList[7]}</td>
                                </tr>
                                <tr>
                                    <td>Team won bat second</td>
                                    <td id="td9" >${GroundDataList[0]-GroundDataList[7]}</td>
                                </tr>
                            </c:forEach> 
                        </tbody>
                    </table>
                </div>
            </header>
            <footer id="fh5co-footer" class="fh5co-bg" style="background-image: url(resources/images/img_bg_1.jpg);"
                    role="contentinfo">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row row-pb-md">
                        <div class="col-md-4 fh5co-widget">
                            <h3>A Little About Stamina.</h3>
                            <p>StateSports is an Indian sports website owned by Team Alpha. It features intresting facts
                                about diffrent
                                sports and live coverage of diffrent sports matches, player stats and team rankings.
                            </p>
                        </div>
                    </div>
                    <div class="row copyright">
                        <div class="col-md-12 text-center">
                            <p>
                                <small class="block">&copy; 2021 StatSports All Rights Reserved.</small>
                                <small class="block">Designed by Team Alpha</small>
                            </p>
                            <p>
                            <ul class="fh5co-social-icons">
                                <li><a href="#"><i class="icon-twitter"></i></a></li>
                                <li><a href="#"><i class="icon-facebook"></i></a></li>
                                <li><a href="#"><i class="icon-linkedin"></i></a></li>
                                <li><a href="#"><i class="icon-instagram"></i></a></li>
                                <li><a href="#"><i class="icon-github"></i></a></li>
                            </ul>
                            </p>
                        </div>
                    </div>
                </div>
            </footer>
        </div>

        <div class="gototop js-top">
            <a href="#" class="js-gotop">
                <i class="icon-arrow-up"></i>
            </a>
        </div>
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
        <script>
                    function getgrounddata() {
                        var x = document.getElementById("year").value;
                        console.log(x);
                        $.ajax({
                            type: "GET",
                            url: "${pageContext.request.contextPath}/check",
                            data: {
                                "ground_id": ${param.ground_id},
                                "tournament_id": ${param.tournament_id},
                                "year": x
                            },
                            success: function (data) {
                                console.log(data);
                                printdata(data);
                            }
                        });
                    }
                    function printdata(data) {
                        console.log(data);
                        var obj = JSON.parse(data);
//                document.getElementById("foreach1").innerHtml=``;
                        $('#td1').html(obj[0][0]);
                        $('#td2').html(obj[0][1]);
                        $('#td3').html(obj[0][2]);
                        $('#td4').html(obj[0][3]);
                        $('#td5').html(obj[0][4]);
                        $('#td6').html(obj[0][5]);
                        $('#td7').html(obj[0][6]);
                        $('#td8').html(obj[0][7]);
                        $('#td9').html(obj[0][0]-obj[0][7]);
                    }


        </script>
    </body>

</html>