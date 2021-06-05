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
        <h1>Hello World!</h1>
        <c:forEach var="squadList" items="${squadList}" >
            <div onclick="getPlayerDetail(${squadList.player_id})">
                <c:forEach var="playerList" items="${playerList}" >
                    ${squadList.team_id}---
                    ${squadList.player_id}---
                    ${playerList.player_name}---
                    ${squadList.tournament_id}---
                    ${squadList.season}---
                    <br>
                </c:forEach>
            </div>
        </c:forEach>
        <script>
            function getPlayerDetail(player_id) {
            window.location = 'playerDetail?player_id=' + player_id +'&tournament_id='+${param.tournament_id} ;
    }
        </script>
    </body>
</html>
