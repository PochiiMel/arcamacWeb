<%-- 
    Document   : prePrestamo
    Created on : 18-oct-2013, 0:22:38
    Author     : Pochii
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<<%--%@include  file="../administracion/ValSession.jsp" %>--%>
<%@include file="../administracion/header.jsp" %>
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
            <h3>Seleccione el tipo de pr&eacute;stamo a realizar:</h3>
            <a class="btn btn-primary" href="">Solicitante existente</a>
            <a class="btn btn-primary" href="../solicitantes/nuevoSolicitanteStep1.jsp">Nuevo solicitante </a>
        <hr />
    </div> <!-- /container -->
<%@include file="../administracion/footer.jsp" %>