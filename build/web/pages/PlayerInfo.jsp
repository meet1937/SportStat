<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <!--  This file has been downloaded from bootdey.com    @bootdey on twitter -->
        <!--  All snippets are MIT license http://bootdey.com/license -->
        <title>profile with data and skills - Bootdey.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="http://netdna.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>


        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">   
        <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,500,700,800" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
        <!-- Icomoon Icon Fonts-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/icomoon.css">
        <!-- Bootstrap  -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">

        <!-- Magnific Popup -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">

        <!-- Owl Carousel  -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">

        <!-- Theme style  -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/pageList.css">

        <!-- Modernizr JS -->
        <script src="${pageContext.request.contextPath}/resources/js/modernizr-2.6.2.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    </head>
    <body>
        <c:forEach var="playerList" items="${playerList}">
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

            <div class="container">
                <div class="main-body">
                    <div class="row gutters-sm">
                        <div class="col-md-4 mb-3">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex flex-column align-items-center text-center">
                                        <br>
                                        <br>
                                        <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Admin" class="rounded-circle" width="150">
                                        <div class="mt-3">
                                            <h4>${playerList.player_name}</h4>
                                            <p class="text-secondary mb-1">${playerList.country}</p>
                                            <br>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="card mb-3">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Full Name</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            ${playerList.player_name}
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Country</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            ${playerList.country}
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Batting_style</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            ${playerList.batting_style}
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Bowling_style</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            ${playerList.bowling_style}
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">DOB</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            ${playerList.dob}
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Role</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            ${playerList.role}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <section id="tabs" class="project-tab">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <nav>
                                <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                                    <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">BATTING STATS</a>
                                    <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">BOWLING STATS</a>
                                    <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">ADVANCED IPL BAT STATS</a>
                                    <a class="nav-item nav-link" id="nav-bowling" data-toggle="tab" href="#nav-advbowling" role="tab" aria-controls="nav-advbowling" aria-selected="false">ADVANCED IPL BOWL STATS</a>
                                </div>
                            </nav>
                            <div class="tab-content" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">

                                    <table id="customers" style="background-color:lightgrey;">

                                        <tr>
                                            <th>Stat Name</th>
                                            <th>Stats</th>
                                        </tr>
                                        <c:forEach var="batCareerList" items="${batCareerList}">
                                            <tr>
                                                <td>Matches</td>
                                                <td>${batCareerList.matches}</td>
                                            </tr>
                                            <tr>
                                                <td>Innings</td>
                                                <td>${batCareerList.innings}</td>
                                            </tr>
                                            <tr>
                                                <td>Not Out</td>
                                                <td>${batCareerList.no}</td>
                                            </tr>
                                            <tr>
                                                <td>Runs</td>
                                                <td>${batCareerList.runs}</td>
                                            </tr>
                                            <tr>
                                                <td>HIghest Score</td>
                                                <td>${batCareerList.highest_score}</td>
                                            </tr>
                                            <tr>
                                                <td>Strike Rate</td>
                                                <td>${batCareerList.sr}</td>
                                            </tr>
                                            <tr>
                                                <td>Average</td>
                                                <td>0</td>
                                            </tr>
                                            <tr>
                                                <td>100</td>
                                                <td>${batCareerList.hundred}</td>
                                            </tr>
                                            <tr>
                                                <td>200</td>
                                                <td>${batCareerList.two_hundred}</td>
                                            </tr>
                                            <tr>
                                                <td>50</td>
                                                <td>${batCareerList.fifty}</td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>${batCareerList.four}</td>
                                            </tr>
                                            <tr>
                                                <td>6</td>
                                                <td>${batCareerList.six}</td>
                                            </tr>
                                        </c:forEach>
                                    </table>
                                </div>
                                <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                                    <table class="table" id="customers" cellspacing="0" style="background-color:lightgrey;">
                                        <thead>
                                            <tr>
                                                <th>Stat Name</th>
                                                <th>Stats</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="bowlCareerList" items="${bowlCareerList}">
                                                <tr>
                                                    <td>Matches</td>
                                                    <td>${bowlCareerList.matches}</td>
                                                </tr>
                                                <tr>
                                                    <td>Innings</td>
                                                    <td>${bowlCareerList.innings}</td>
                                                </tr>
                                                <tr>
                                                    <td>Balls</td>
                                                    <td>${bowlCareerList.balls}</td>
                                                </tr>
                                                <tr>
                                                    <td>Runs</td>
                                                    <td>${bowlCareerList.runs}</td>
                                                </tr>
                                                <tr>
                                                    <td>Wickets</td>
                                                    <td>${bowlCareerList.wkts}</td>
                                                </tr>
                                                <tr>
                                                    <td>Economy</td>
                                                    <td>${(bowlCareerList.runs/((bowlCareerList.balls/6)+bowlCareerList.balls%6))}</td>
                                                </tr>
                                                <tr>
                                                    <td>Best Bowling Inning</td>
                                                    <td>${bowlCareerList.bbi_wkts}-${bowlCareerList.bbi_runs}</td>
                                                </tr>
                                                <tr>
                                                    <td>Best Bowling Match</td>
                                                    <td>${bowlCareerList.bbm_wkts}-${bowlCareerList.bbm_runs}</td>
                                                </tr>
                                                <tr>
                                                    <td>Average</td>
                                                    <td>0</td>
                                                </tr>
                                                <tr>
                                                    <td>Strike Rate</td>
                                                    <td>0</td>
                                                </tr>
                                                <tr>
                                                    <td>5 Wkts</td>
                                                    <td>${bowlCareerList.fivewkts}</td>
                                                </tr>
                                                <tr>
                                                    <td>10 Wkts</td>
                                                    <td>${bowlCareerList.tenwkts}</td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                                    <table class="table" cellspacing="0"  id="advBatStatPopulate">
                                        <thead>
                                            <tr>
                                                <th>
                                                    <select class="sport" name="year" id="year" onchange="getAdvBatPlayerStats()" style="color:black">
                                                        <option value="All" >Select Year</option>
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
                                                </th>
                                                <th>
                                                    <select name="groundName" id="ground" onchange="getAdvBatPlayerStats()" style="color:black">
                                                        <option value="All"  >Select Ground</option>
                                                        <c:forEach var="groundName" items="${groundName}" >
                                                            <option value="${groundName.ground_id}">${groundName.ground_name}</option>
                                                        </c:forEach>
                                                    </select>
                                                </th>
                                                <th>
                                                    <select name="teamList" id="team" onchange="getAdvBatPlayerStats()" style="color:black">
                                                        <option value="All" >Select Team</option>
                                                        <c:forEach var="teamList" items="${teamList}" >
                                                            <option value="${teamList.team_id}">${teamList.team_name}</option>
                                                        </c:forEach> 
                                                    </select>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody >
                                            <!--                                        <div id="advBatStatPopulate">
                                            
                                                                                    </div>-->
                                        </tbody>
                                    </table>
                                </div>



                                <div class="tab-pane fade" id="nav-advbowling" role="tabpanel" aria-labelledby="nav-bowling">
                                    <table class="table" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>
                                                    <select class="sport" name="year1" id="year1" onchange="getAdvBowlPlayerStats()" style="color:black">
                                                        <option value="All" >Select Year</option>
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
                                                </th>
                                                <th>
                                                    <select name="groundName" id="ground1" onchange="getAdvBowlPlayerStats()" style="color:black">
                                                        <option value="All"  >Select Ground</option>
                                                        <c:forEach var="groundName" items="${groundName}" >
                                                            <option value="${groundName.ground_id}">${groundName.ground_name}</option>
                                                        </c:forEach>
                                                    </select>
                                                </th>
                                                <th>
                                                    <select name="teamList" id="team1" onchange="getAdvBowlPlayerStats()" style="color:black">
                                                        <option value="All" >Select Team</option>
                                                        <c:forEach var="teamList" items="${teamList}" >
                                                            <option value="${teamList.team_id}">${teamList.team_name}</option>
                                                        </c:forEach> 
                                                    </select>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr >
                                                <td>
                                                </td>
                                            </tr>
                                            <tr id="populate_here">

                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </section>
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

        <div class="gototop js-top">
            <a href="#" class="js-gotop">
                <i class="fa fa-angle-double-up" style="font-size:48px;color:red"></i>
            </a>
        </div>

        <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>

        <script type="text/javascript">

        </script>
    </c:forEach>
    <script>
        function getAdvBatPlayerStats() {
            var year = document.getElementById('year').value;
            var ground = document.getElementById('ground').value;
            var team = document.getElementById('team').value;

            $.ajax({
                type: "GET",
                url: "${pageContext.request.contextPath}/getAdvBatStats",
                data: {
                    "player_id": ${param.player_id},
                    "tournament_id": ${param.tournament_id},
                    "year": year,
                    "team": team,
                    "ground": ground
                },
                success: function (data) {
                    console.log(data);
//                    $('#advBatStatPopulate').html( `'<tr> <td>'+data[0][0]+'</td> <td>'+data[0][0]+'</td> </tr>'`);
                    $.each(data, function (key, val) {
                        insertrow(val);
                    }
                    
                }
            });
        }
        function getAdvBowlPlayerStats() {
            var year = document.getElementById('year1').value;
            var ground = document.getElementById('ground1').value;
            var team = document.getElementById('team1').value;

            $.ajax({
                type: "GET",
                url: "${pageContext.request.contextPath}/getAdvBowlStats",
                data: {
                    "player_id": ${param.player_id},
                    "tournament_id": ${param.tournament_id},
                    "year": year,
                    "team": team,
                    "ground": ground
                },
                success: function (data) {
                    console.log(data)
                }
            });
        }
    </script>
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