<%-- 
    Document   : error500
    Created on : 10-19-2013, 11:12:38 PM
    Author     : jorge
--%>
<%
    String ruta = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ERROR 500</title>
         <style type="text/css">
             body {
                 background-image: url("<%=ruta%>/images/lineas.png");
                 background-repeat: repeat-x;
             }
             
             
         </style>
    </head>
    <body>
        <table align="center" style="padding-top: 15%;" >
            <tr><td>
                    <img src="<%=ruta%>/images/logoTrans.png" name="logo"/>    
                </td>
                <td><h1>Muy bien esto es penoso, hubo un error interno<p /> &nbsp;&nbsp;&nbsp;&nbsp;
                        ERROR 500</h1></td></tr>
            <tr><td></td><td>
                    
                </td></tr>
        </table>
        
      
    </body>
</html>