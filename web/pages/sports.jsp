
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
        <c:forEach var="sportList" items="${sportList}" >
            <br>
           
            <div id="${sportList.sports_id}" onclick="sendRequest(${sportList.sports_id})">
                <h1>${sportList.sports_name}</h1>
            </div>
        </c:forEach>
            <script>
                function sendRequest(sports_id){
                    window.location = 'SportStat/tournament?sports_id='+sports_id;
                    
                }
            </script>
            
    </body>
</html>
