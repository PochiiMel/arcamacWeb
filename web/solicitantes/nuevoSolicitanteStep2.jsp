<%-- 
    Document   : nuevoSolicitanteStep2
    Created on : 15-oct-2013, 13:37:31
    Author     : Pochii
--%>

<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@include  file="../administracion/ValSession.jsp" %> --%>
<%@include file="../administracion/header.jsp" %>
<jsp:useBean id="solicitantes" class="clases.solicitantes" scope="session" />
<%--Estableciendo las propiedades recibidas del paso 1 --%>
<jsp:setProperty name="solicitantes" property="nombre1" param="nombre1" />
<jsp:setProperty name="solicitantes" property="nombre2" param="nombre2" />
<jsp:setProperty name="solicitantes" property="apellido1" param="apellido1" />
<jsp:setProperty name="solicitantes" property="DUI" param="DUI" />
<jsp:setProperty name="solicitantes" property="NIT" param="NIT" />
<jsp:setProperty name="solicitantes" property="domicilio" param="domicilio" />
<jsp:setProperty name="solicitantes" property="edad" param="edad" />
<jsp:setProperty name="solicitantes" property="tel_residencia" param="tel_residencia" />
<jsp:setProperty name="solicitantes" property="celular" param="celular" />
<jsp:setProperty name="solicitantes" property="fecha_nacimiento" param="fecha_nacimiento" />
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
            <li class="active">Nuevo solicitante paso 2</li>
        </ol>
        <div class="container">
            <h2>Paso 2: Informaci&oacute;n laboral y financiera del solicitante</h2>
             <h3>Progreso: </h3>
            <div class="progress progress-striped active">
                <div class="progress-bar"  role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                    <span style="text-align:center; color: #000;">20% finalizado</span>
                </div>
            </div>
             <form name="frmNuevoSolicitante" action="" id="frmNuevoSolicitante" method="POST">
              <fieldset>
               <legend>Informaci&oacute;n laboral</legend>
               <table class="table">
                <tr>
                    <td>
                        <label>*Profesi&oacute;n: </label>
                    </td>
                    <td>
                        <input type="text" name="profesion" id="profesion" title="Profesi&oacute;n" placeholder="Profesi&oacute;n" class="form-control requerido" required autofocus onblur="validar('profesion');" />
                    </td>
                    <td><div id="divprofesion"></div></td>
                </tr>
                <tr>
                    <td>
                        <label>*Cargo: </label>
                    <td>
                        <input type="text" name="cargo" id="cargo" title="Puesto de trabajo" class="form-control requerido" placeholder="Puesto de trabajo" required onblur="validar('cargo');"/>
                    </td>
                    <td><div id="divcargo"></div></td>
                </tr>
                <tr>
                    <td>
                        <label>*Lugar de trabajo: </label>
                    </td>
                    <td>
                        <input type="text" name="lugarTrabajo" id="lugarTrabajo" title="Lugar de trabajo" class="form-control requerido" placeholder="Direccion" required onblur="validar('lugarTrabajo');" />  
                    </td>
                    <td><div id="divlugarTrabajo"></div></td>
                    <td><b>Tiempo de servicio(a&ntilde;os):</b></td>
                    <td><input type="text" name="tiempo_servicio" pattern="^[0-9]{1,2}$" id="tiempo_servicio" title="Tiempo de servicio" class="form-control" placeholder="Ej. 2" /></td>
                    <td><div id="divtiempo_servicio"></div></td>
                </tr>
                <tr>
                    <td><b>Tel&eacute;fono de trabajo:</b></td>
                    <td>
                        <input type="text" name="tel_trabajo" id="tel_trabajo" pattern="^[0-9]{4}-[0-9]{4}$" title="Tel&eacute;fono" class="form-control" placeholder="Ej.2222-2323 " onblur="validar('tel_trabajo');" />
                    </td>
                    <td><div id="divtel_trabajo"></div></td>
                    <td><input type="text" name="ext" id="ext" pattern="^[0-9]{1,5}$" class="form-control" placeholder="Extensi&oacute;n" onblur="validar('ext');" /></td>
                    <td><div id="divext"></div></td>
                </tr>
               </table>
              </fieldset>
              <fieldset>
                <legend>Informaci&oacute;n financiera</legend>
                <table class='table'>
                    <tr>
                        <td rowspan="2"><b>Ingresos:</b></td>
                        <td>
                            <div class="input-group">
                                <span class="input-group-addon">$</span>
                                    <input type='text' name='sueldo' id='sueldo' class='form-control requerido' pattern='^[0-9]{1,5}.?[0-9]{1,2}?$' placeholder="Sueldo" required onblur="validar('sueldo');" />
                            </div>
                        </td>
                        <td><div id='divsueldo' class='infor'></div></td>
                        <td rowspan="5"><b>Egresos:</b></td>
                        <td>
                            <div class="input-group">
                                <span class="input-group-addon">$</span>
                                    <input type='text' name='pago_vivienda' id='pago_vivienda' pattern='^[0-9]{1,5}.?[0-9]{1,2}?$' class='form-control requerido' placeholder="Vivienda" required onblur="validar('pago_vivienda');" />
                            </div>
                        </td>
                        <td><div id='divpago_vivienda' class='infor'></div></td>
                    </tr> 
                    <tr>
                        <td>
                            <div class="input-group">
                                <span class="input-group-addon">$</span>
                                    <input type='text' name='otros_ingresos' id='otros_ingresos' pattern='^[0-9]{1,5}.?[0-9]{1,2}?$' class='form-control requerido' placeholder="Otros ingresos" required onblur="validar('otros_ingresos');" />
                            </div>
                        </td>
                        <td><div id='divotros_ingresos' class='infor'></div></td>
                        <td>
                            <div class="input-group">
                                <span class="input-group-addon">$</span>
                                    <input type='text' name='alimentacion' id='alimentacion' pattern='^[0-9]{1,5}.?[0-9]{1,2}?$' class='form-control requerido' placeholder="Alimentaci&oacute;n" required onblur="validar('alimentacion');" />
                            </div>
                        </td>
                        <td><div id='divalimentacion' class='infor'></div></td>
                    </tr>
                    <tr>
                        <td colspan='4' rowspan='2'>
                             <input type='hidden' name='total_ingresos' id='total_ingresos' value='0' />
                        </td>
                        <td>
                            <div class="input-group">
                                <span class="input-group-addon">$</span>
                                    <input type='text' name='descuentos' id='descuentos' pattern='^[0-9]{1,5}.?[0-9]{1,2}?$' class='form-control requerido' placeholder="Descuentos" required onblur="validar('descuentos');" />
                            </div>
                        </td>
                        <td><div id='divdescuentos' class='infor'></div></td>
                    </tr>
                    <tr>
                         <td>
                            <div class="input-group">
                                <span class="input-group-addon">$</span>
                                    <input type='text' name='otros_egresos' id='otros_egresos' pattern='^[0-9]{1,5}.?[0-9]{1,2}?$' class='form-control requerido' placeholder="Otros egresos" required onblur="validar('otros_egresos');" />
                            </div>
                        </td>
                        <td><div id='divotros_egresos' class='infor'></div></td>
                    </tr>
                    <tr>
                        <td colspan='3' align='right'>
                            <input type="button" class="btn btn-info" value="Continuar" onclick="fin(1, 'frmNuevoSolicitante');" />
                        </td>
                        <td colspan='3' align='left'>
                            <input type="button" class="btn btn-info" value="Finalizar" onClick="fin(2, 'frmNuevoSolicitante');" /> 
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
                document.getElementById(form).action   = "nuevoSolicitanteStep3.jsp?exito=1";
                document.getElementById(form).submit();
            }
            else
            {
               document.getElementById(form).action   = "actionGuardar.jsp?id=1";
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