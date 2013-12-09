<%-- 
    Document   : nuevoPrestamo
    Created on : 15-oct-2013, 11:39:07
    Author     : Pochii
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@include  file="../administracion/ValSession.jsp" %> --%>
<%@include file="../administracion/header.jsp" %>
<jsp:useBean id="analisis" class="clases.nuevoPrestamo"  scope="page" />
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
        <ol class="breadcrumb">
            <li><a href="<%=ruta%>/panelAdmin.jsp">Inicio</a></li>
            <li><a href="<%=ruta%>/prestamos/panelPrestamos.jsp">Prestamos</a></li>
            <li class="active">An&aacute;lisis de nuevo pr&eacute;stamo</li>
        </ol>
        <div class="container" align="center">
            <h2>An&aacute;lisis de nuevos pr&eacute;stamos</h2>
            <label>Para analizar nuevos pr&eacute;stamos ingrese los siguientes campos</label>
            <fieldset>
                <form name="frmNuevoSolicitante" action="" method="POST">
               <table class="table">
                <tr>
                    <td>
                        <label>*Cantidad a solicitar (USD): </label>
                    </td>
                    <td>
                        <div class="input-group">
                          <span class="input-group-addon">$</span>
                          <input class="form-control" style="width: 150px;" type="text" id="cantidad" name="cantidad" placeholder="Cantidad" required autofocus />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>*Plazo a pagar(meses): </label>
                    <td>
                        <input type="text" class="form-control" style="width: 150px;" id="plazo" name="plazo" placeholder="Ej. 12" required/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>*Interes a aplicar: </label>
                    <td>
                       <div class="input-group">
                          <span class="input-group-addon">%</span>
                          <input class="form-control" style="width: 150px;" type="text" id="interes" name="interes" value="3.35" required autofocus />
                        </div>
                    </td>
                </tr>
                <tr align="center">
                    <td colspan = "2">
                        <input type="button" class="btn btn-info" value="Analizar" onclick="carga('actionAnalisisNuevo.jsp','respuesta',
                         document.getElementById('cantidad').value, document.getElementById('plazo').value, document.getElementById('interes').value);" />
                        <!--<input type="button" class="btn btn-info" onClick="fin(2)" value="Finalizar" /> -->
                    </td>
                </tr>
               </table>
             </form>
            </fieldset>
        </div>
        <div class="container" id="respuesta" align="center">
          
        </div>
               
        <hr />
<%@include file="../administracion/footer.jsp" %>
<script>
    function carga(url, id, cantidad, plazo, interes)
    {
        var objeto;
        if(window.XMLHttpRequest)
        {
            objeto = new XMLHttpRequest();
        }
        else if(window.ActiveXObject)
        {
            //Para el caso de IE
            try
            {
                objeto = new ActiveXObject("Msxml2.XMLHTTP");
            }
            catch(e)
            {
                try
                {
                    objeto = new ActiveXObject("Microsoft.XMLHTTP");
                }
                catch(e){}
            }
        } //fin else

        if(!objeto)
        {
            alert("Lo sentimos hubo un problema con su navegador, intente de nuevo");
        }
        objeto.onreadystatechange = function(){
            cargarobjeto(objeto, id)
        }

        objeto.open('POST', url, true)
        objeto.setRequestHeader("content-Type", "application/x-www-form-urlencoded")
        objeto.send("&cantidad="+cantidad+"&plazo="+plazo+"&interes="+interes);
    }//fin carga

    function cargarobjeto(objeto, id)
    {
        if(objeto.readyState == 4)
            document.getElementById(id).innerHTML = objeto.responseText;
        else
            document.getElementById(id).innerHTML = "<i class='fa fa-spinner fa-spin'></i>";
    }//fin cargar objeto

</script>