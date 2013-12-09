<%-- 
    Document   : nuevoPrestamo
    Created on : 15-oct-2013, 11:39:07
    Author     : Pochii
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@include  file="../administracion/ValSession.jsp" %> --%>
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
        <div class="container" align="center">
            <h2>Resoluci&oacute;n de nuevo pr&eacute;stamo</h2>
            <label>Informaci&oacute;n de pr&eacute;stamo</label>
            <fieldset>
                <form name="frmResolucion" action="nuevoSolicitanteStep2.jsp" method="POST">
               <table class="table">
                <tr>
                    <td>
                        <strong><label>C&oacute;digo de pr&eacute;stamo: </label></strong>
                    </td>
                    <td>
                        <label>P1G1AM181013</label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong><label>Fecha de aprobaci&oacute;n </label></strong>
                    <td>
                        <%
                          java.util.Calendar fecha = java.util.Calendar.getInstance();
                          out.println(fecha.get(java.util.Calendar.DATE) + "/"
                          + fecha.get(java.util.Calendar.MONTH)    + "/"
                          + fecha.get(java.util.Calendar.YEAR));
                        %>
                    </td>
                    <td>
                        <strong><label>Fecha de vencimiento </label></strong>
                    <td>
                        18/03/2014
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong><label>Monto aprobado: </label></strong>
                    </td>
                    <td>
                        <label>$500.00</label>
                    </td>
                </tr>
                <tr>
                    <td>
                         <strong><label>Plazo en meses: </label></strong>
                    </td>
                    <td>
                       <label>6</label>
                    </td>
                    <td>
                         <strong><label>Inter&eacute;s anual: </label></strong>
                    </td>
                    <td>
                       <label>$50</label>
                    </td>
                </tr>
                <tr>
                    <td>
                         <strong><label>Inter&eacute;s mensual: </label></strong>
                    </td>
                    <td>
                       <label>$4.17</label>
                    </td>
                </tr>
                <tr>
                    <td>
                         <strong><label>Cuota sin IVA: </label></strong>
                    </td>
                    <td>
                       <label>$94.16</label>
                    </td>
                     <td>
                         <strong><label>Cuota con IVA: </label></strong>
                    </td>
                    <td>
                       <label>$83.33</label>
                    </td>
                </tr>
                <hr />
                
                </tr>
                <tr align="center">
                    <td colspan = "2">
                        <input type="button" class="btn btn-info" onClick="fin(1)"value="Finalizar" />
                        <!--<input type="button" class="btn btn-info" onClick="fin(2)" value="Finalizar" /> -->
                    </td>
                </tr>

               </table>
                </form>
            </fieldset>
        <hr />
      </diV>
<%@include file="../administracion/footer.jsp" %>