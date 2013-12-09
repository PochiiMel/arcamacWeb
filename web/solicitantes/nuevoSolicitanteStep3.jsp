<%-- 
    Document   : nuevoSolicitanteStep3
    Created on : 08-dic-2013, 16:24:46
    Author     : Pochii
--%>
<%@page import="java.util.Map"%>
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
                width:750px;
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
            <li><a href="<%=ruta%>/solicitantes/panelSolicitantes.jsp">Solicitantes</a></li>
            <li class="active">Nuevo solicitante paso 3</li>
        </ol>
        <div class="container">
            <h2>Paso 3: Informaci&oacute;n del c&oacute;nyuge</h2>
             <h3>Progreso: </h3>
            <div class="progress progress-striped active">
                <div class="progress-bar"  role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
                    <span style="text-align:center; color: #000;">90% finalizado</span>
                </div>
            </div>
             <form name="frmNuevoSolicitante" action="" id="frmNuevoSolicitante" method="POST">
              <fieldset>
                  <legend>Informaci&oacute;n del/a c&oacute;nyuge</legend>
                <table class='table'>
                    <tr>
                        <td><b>Nombres:</b></td>
                        <td><input class="form-control" type="text" name="nombre_conyuge" id="nombre_conyuge" size="100" placeholder="Nombre completo" autofocus onblur="validar('nombre_conyuge');" /> </td>
                        <td><div id='divnombre_conyuge' class='infor'> </div></td>
                    </tr>
                    <tr>
                        <td><b>Apellidos:</b></td>
                        <td><input class="form-control" type="text" name="apellidos_conyuge" id="apellidos_conyuge" size="100" placeholder="Apellidos" onblur="validar('apellidos_conyuge');"/></td>
                        <td><div id='divapellidos_conyuge' class='infor'> </div></td>
                    </tr>
                    <tr>
                        <td><b>Edad:</b></td>
                        <td><input class="form-control" type="text" name="edad_conyuge" id="edad_conyuge" maxlength="2" placeholder="Edad"  pattern="^[0-9]{1,2}$"  onblur="validar('edad_conyuge');" /></td>
                        <td><div id='divedad_conyuge'> </div></td>
                    </tr>
                     <tr>
                        <td><b>Profesi&oacute;n:</b></td>
                        <td><input class="form-control" type="text" name="profesion_conyuge" id="profesion_conyuge" size="100" placeholder="Profesi&oacute;n"  onblur="validar('profesion_conyuge');"/></td>
                        <td><div id='divprofesion_conyuge' class='infor'> </div></td>
                    </tr>
                    <tr>
                        <td>
                            <label>Lugar de trabajo: </label>
                        </td>
                        <td>
                            <textarea name="lugar_direccion_trabajo_conyuge" id="lugar_direccion_trabajo_conyuge" cols="7" rows="7" class="form-control" onblur="validar('lugar_direccion_trabajo_conyuge');">
                            </textarea>
                        </td>
                        <td><div id="divlugar_direccion_trabajo_conyuge"></div></td>
                    </tr>
                    <tr>
                        <td>
                            <input type="button" class="btn btn-info" onClick="fin(1,'frmNuevoSolicitante');" value="Continuar" />
                        </td>
                    </tr>
                </table>
               </form> 
              <div align="center" id='error'></div> 
            </fieldset>
          </div>
<%@include file="../administracion/footer.jsp" %>
<script lang="javascript" src="<%=ruta%>/js/validacion.js"></script>
<script language="javascript">
    function fin(tipo, form)
    {
        var val = sumarize(form);
        if(val)
        {
            if(tipo == 1)
            {
                document.getElementById(form).action   = "actionGuardar.jsp?exito=1";
                document.getElementById(form).submit();
            }
        }
        else
        {
            document.getElementById("error").innerHTML = "Los datos ingresados contienen errores, por favor aseg&uacute;rese<br />\n\
                                                         de ingresarlos en el formato correcto";
 
        }
    }

</script>