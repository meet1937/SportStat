<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <select name="year" id="year" >
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
        <select name="groundName" id="ground" onchange="">
            <option value="All">All</option>
            <c:forEach var="groundName" items="${groundName}" >
                <option value="${groundName.ground_id}">${groundName.ground_name}</option>
            </c:forEach>
        </select>
        <button id="btn" type="" onclick="getData()">go
        </button>
        <bR>
        <c:forEach var="teamvsteam" items="${teamvsteam}">
            total match:${teamvsteam[0]}---
            <br>
            <c:forEach var="teamList1" items="${teamList1}">

                ${teamList1.team_name} won :${teamvsteam[1]}---
                <br>
                ${teamList1.team_name} toss won:${teamvsteam[2]}---
                <br>
            </c:forEach>
            <c:forEach var="teamList2" items="${teamList2}">

                ${teamList2.team_name} won :${teamvsteam[0]-teamvsteam[1]}---
                <br>

                ${teamList2.team_name} toss won :${teamvsteam[0]-teamvsteam[2]}---
                <br>
            </c:forEach>
        </c:forEach>
        <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
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
                        printdata(data);
                    }
                });
            }
            function printdata(data) {
                console.log(data);
            }
        </script>
    </body>
</html>
