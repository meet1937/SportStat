
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
        <c:forEach var="tournamentList" items="${tournamentList}" >
            ${tournamentList.tournament_id}---
            ${tournamentList.tournament_name}---
            ${tournamentList.tournament_image}---
            ${tournamentList.sport_id}---
            <br>
        </c:forEach>
    </body>
</html>
