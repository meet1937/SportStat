
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
        <button id="${param.tournament_id}" onclick="sendRequestTeam(${param.tournament_id})">teams</button>
        <button id="${param.tournament_id}" onclick="sendRequestGround(${param.tournament_id})">ground</button>
        <script>
            function sendRequestTeam(tournament_id) {
                window.location = 'team?tournament_id=' + tournament_id;
            }
            function sendRequestGround(tournament_id) {
                window.location = 'ground?tournament_id=' + tournament_id;
            }
        </script>
    </body>
</html>
