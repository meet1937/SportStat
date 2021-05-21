<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <c:forEach var="GroundDataList" items="${GroundDataList}">
            
            count=${GroundDataList[0]}<br>
            score_team1=${GroundDataList[1]}<br>
            score_team2=${GroundDataList[2]}<br>
            wicket_team1=${GroundDataList[3]}<br>
            wicket_team2=${GroundDataList[4]}<br>
            max_score_innings1=${GroundDataList[5]}<br>
            max_score_innings2=${GroundDataList[6]}<br>
            <hr>
        </c:forEach>
    </body>
</html>