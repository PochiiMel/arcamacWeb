<%-- 
    Document   : panelPrestamos
    Created on : 18-oct-2013, 0:21:06
    Author     : Pochii
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../administracion/header.jsp" %>
<%--<%@include  file="../administracion/ValSession.jsp" %> --%>
        <style>
             body 
            {
                padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
            }
            .table
            {
                width:600px;
                aling:center;
            }
             .container
            {
                max-width:  1000px;
                margin: 0 auto;
            }
            .container h2
            {
                font-family: Century Gothic;
            }
       
        </style>
        <div class="container">
            <a href="prePrestamo.jsp">Nuevo Pr&eacute;stamo </a>
            <hr>
        </div>
<%@include file="../administracion/footer.jsp" %>