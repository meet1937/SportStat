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
        <h1>Hello World!</h1>.
        <c:forEach var="teamList" items="${teamList}" >
            <div onclick="getSquadList(${teamList.team_id})">
                ${teamList.team_id}---
                ${teamList.team_name}---
                ${teamList.tournament_id}---
                ${teamList.team_image}---
                <br>
            </div>
        </c:forEach>
        <script>
            function getSquadList(team_id) {
            window.location = 'squad?team_id=' + team_id +'&tournament_id='+${param.tournament_id} ;
    }
        </script>
    </body>
</html>
