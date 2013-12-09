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
            <h2>Solicitud de nuevo pr&eacute;stamo</h2>
            <label>Por favor complete los siguientes campos </label>
            <fieldset>
                <form name="frmNuevoSolicitante" action="resolucionPrestamo.jsp" method="POST">
               <table class="table">
                <tr>
                    <td>
                        <label>*Cantidad a solicitar (USD): </label>
                    </td>
                    <td>
                        <div class="input-prepend">
                          <span class="add-on">$</span>
                          <input class="span2" type="text" name="txtCantidad" placeholder="Cantidad" required autofocus />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>*Plazo a pagar(meses): </label>
                    <td>
                        <input type="text" name="txtPlazo" placeholder="Ej. 12" required/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>*Cuotas (USD): </label>
                    </td>
                    <td>
                        <div class="input-prepend">
                          <span class="add-on">$</span>
                          <input class="span2" type="text" name="txtCuotas" placeholder="Valor de cuota" required autofocus />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Destino de pr&eacute;stamo: </label>
                    </td>
                    <td>
                        <select name="txtDestinoPrestamo">
                            <option value="1">Gastos personales</option>
                            <option value="2">Gastos m&eacute;dicos</option>
                            <option value="3">Consolidaci&oacute;n de deudas</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Estado de pr&eacute;stamo: </label>
                    </td>
                    <td>
                        <select name="estado">
                            <option value="1">Aprobado </option>
                            <option value="2">En proceso </option>
                            <option value="3">Cancelado </option>
                        </select>
                    </td>
                </tr>
                <hr />
                <tr>
                    <td colspan="2">
                        <label>Campos marcados con * son obligatorios </label>
                    </td>
                </tr>
                <tr align="center">
                    <td colspan = "2">
                        <input type="submit" class="btn btn-info" value="Continuar" />
                        <!--<input type="button" class="btn btn-info" onClick="fin(2)" value="Finalizar" /> -->
                    </td>
                </tr>

               </table>
                </form>
            </fieldset>
        <hr />
      </div>
<%@include file="../administracion/footer.jsp" %>
