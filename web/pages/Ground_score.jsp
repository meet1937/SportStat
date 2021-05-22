<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <label for="year">Choose year</label>

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
        <hr>
        <div id="foreach">
            <c:forEach var="GroundDataList" items="${GroundDataList}">
                count=${GroundDataList[0]}<br>
                score_team1=${GroundDataList[1]}<br>
                score_team2=${GroundDataList[2]}<br>
                wicket_team1=${GroundDataList[3]}<br>
                wicket_team2=${GroundDataList[4]}<br>
                max_score_innings1=${GroundDataList[5]}<br>
                max_score_innings2=${GroundDataList[6]}<br>
                team_won_bat_first=${GroundDataList[7]}<br>
                team_won_bat_second=${GroundDataList[0]-GroundDataList[7]}<br>
                <hr>
            </c:forEach>
        </div>
        <div id="foreach1">
            
        </div>
        <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
        <!-- jQuery Easing -->
        <script src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
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
                function printdata(data){
                console.log(data);
                var obj= JSON.parse(data);
//                document.getElementById("foreach1").innerHtml=``;
                    $('#foreach1').html(obj[0][0]);
                }
                
           

        </script>
    </body>
</html>