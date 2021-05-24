<%-- 
    Document   : player
    Created on : May 24, 2021, 11:51:03 AM
    Author     : MEET
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <input id="playerSearch" type="text" onkeyup="getPlayerList()"/>
        <script src="resources/js/jquery.min.js"></script>
        <!-- jQuery Easing -->
        <script src="resources/js/jquery.easing.1.3.js"></script>
        <!-- Bootstrap -->
        <script>
            function getPlayerList() {
                var x = document.getElementById("playerSearch").value;
                $.ajax({
                    type: "GET",
                    url: "${pageContext.request.contextPath}/getPlayer",
                    data: {
                        "player_name": x,
                        "tournament_id": ${param.tournament_id}
                    },
                    success: function (data) {
                        console.log(data);
//                        printdata(data);
                    }
                });
            }
        </script>
    </body>
</html>
