<%-- 
    Document   : error404
    Created on : 10-19-2013, 10:19:06 PM
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
        <title>ERROR 404</title>
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
                <td><h1>Lo sentimos p&aacute;gina requerida no existe<p /> &nbsp;&nbsp;&nbsp;&nbsp;
                        ERROR 404</h1></td></tr>
            <tr><td></td><td>
                    
                </td></tr>
        </table>
        
      
    </body>
</html>
