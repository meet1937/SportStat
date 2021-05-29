<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </head>
    <body>
        <form action="teamvsteamstats">
            <select name="team1" id="team1" onchange="myFunction()">
                <option value="op1" disabled selected>Select team1</option>
                <c:forEach var="teamList" items="${teamList}" >
                    <option value="${teamList.team_id}">${teamList.team_name}</option>
                </c:forEach>
            </select>  
            <select name="team2" id="team2" onchange="myFunction()">.
                <option value="op1" disabled selected>Select team2</option>
                <c:forEach var="teamList" items="${teamList}" >
                    <option value="${teamList.team_id}">${teamList.team_name}</option>
                </c:forEach>
            </select>
            <input id="btn" type="submit"/>
        </form>
        <script>
            function myFunction() {
                var drop1 = document.getElementById('team1').value;
                var drop2 = document.getElementById('team2').value;
                if (drop1 == drop2)
                {
                    document.getElementById("btn").disabled = true;
                    swal({
                        icon: 'error',
                        title: 'Oops...',
                        text: 'Same Team!',
                        footer: '<span>Select different teams</span>'
                    })
                } else
                {
                    document.getElementById("btn").disabled = false;
                }
            }
        </script>
    </body>
</html>
