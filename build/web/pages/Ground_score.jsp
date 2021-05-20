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
        <button id="dhiruchoido" onclick="dhiruchoido1()">2021</button>
        <div id="batli">


        </div>
        <script>
            function dhiruchoido1()
            {
                var employees = {
                <c:forEach var="matches" items="${matchesList}">
                "${matches.match_id}": {
                    season: "${matches.season}"
                    team1: "${matches.team1}"
                    team2: "${matches.team2}"
                    toss_winner: "${matches.toss_winner}"
                    toss_decision: "${matches.toss_decision}"
                    result: "${matches.result}"
                    winner: "${matches.winner}"
                    score_team1: "${matches.score_team1}"
                    score_team2: "${matches.score_team2}"


            },
            </c:forEach>
            };
            console.log(employees);
            }
        </script>
    </body>
</html>
