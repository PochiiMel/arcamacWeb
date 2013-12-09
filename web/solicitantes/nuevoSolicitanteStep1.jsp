<%-- 
    Document   : nuevoSolicitante
    Created on : 15-oct-2013, 11:41:48
    Author     : Pochii
--%>

<%--<%@include  file="../administracion/ValSession.jsp" %> --%>
<%@include file="../administracion/header.jsp" %>
        <style>
             body 
            {
                padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
            }
            .table
            {
                width:800px;
                aling:center;
            }
            .container {max-width:  1000px; margin: 0 auto;}
            .container h2 {font-family: Century Gothic; }
        </style>
        <ol class="breadcrumb">
            <li><a href="<%=ruta%>/panelAdmin.jsp">Inicio</a></li>
            <li><a href="<%=ruta%>/solicitantes/panelSolicitantes.jsp">Solicitantes</a></li>
            <li class="active">Nuevo solicitante paso 1</li>
        </ol>
        <div class="container">
            <h2>Paso 1: Informaci&oacute;n personal del solicitante</h2>
            <h4>Progreso: </h3>
            <div class="progress progress-striped active">
                <div class="progress-bar"  role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 3%">
                    <span style="text-align:center; color: #000;">0% finalizado</span>
                </div>
            </div>
            <fieldset>
               <form id="frmNuevoSolicitante" name="frmNuevoSolicitante"  action="nuevoSolicitanteStep2.jsp" method="POST">
               <table class="table">
                <tr>
                    <td rowspan="2"><b>*Nombres:</b></td>
                    <td><input class="form-control requerido" type="text" name="nombre1" id="nombre1" size="40" placeholder="Primer Nombre" required autofocus onblur="validar('nombre1');" /> </td>
                    <td><div id='divnombre1' class='infor'> </div></td>
                    <td rowspan="2"><b>Apellidos:</b></td>
                    <td><input class="form-control requerido" type="text" name="apellido1" id="apellido1" size="40" placeholder="Primer Apellido" required onblur="validar('apellido1');"/></td>
                    <td><div id='divapellido1' class='infor'> </div></td>
              </tr>
              <tr>
                <td><input class="form-control" type="text" name="nombre2" id="nombre2" size="40" placeholder="Segundo Nombre" oninput="validar('nombre2');" /></td>
                <td><div id='divnombre2'> </div></td>
                <td> <input class="form-control" type="text" name="apellido2" id="apellido2" size="40" placeholder="Segundo Apellido" oninput="validar('apellido2');" /></td>
                <td><div id="divapellido2"> </div></td>
              </tr>
                <tr>
                    <td>
                        <label>*DUI: </label>
                    </td>
                    <td>
                        <input class="form-control requerido" type="text" name="DUI" id="DUI" size="10" placeholder="DUI" pattern="^[0-9]{8}-[0-9]{1}$" required onblur="validar('DUI');" />  
                    </td>
                    <td><div id='divDUI'></div></td>
                </tr>
                <tr>
                    <td>
                        <label>*NIT: </label>
                    </td>
                    <td>
                        <input class="form-control requerido" type="text" name="NIT" id="NIT" size="20" placeholder="NIT" required pattern="^[0-9]{4}-[0-9]{6}-[0-9]{3}-[0-9]{1}$" onblur="validar('NIT');" />  
                    </td>
                    <td><div id='divNIT'></div></td>
                </tr>
                <tr>
                    <td rowspan="2"><b>Tel&eacute;fonos: </b></td>
                    <td>
                        <input class="form-control" type="text" name="tel_residencia" id="tel_residencia" placeholder="Casa Ej. 2272-9185" oninput="validar('tel_residencia');"  />
                    </td>
                    <td><div id='divtel_residencia'></div></td>
                </tr>
                <tr>
                    <td>
                        <input class="form-control requerido" type="text" name="celular" id="celular" placeholder="Celular Ej. 7923-6354" required onblur="validar('celular');" />
                    </td>
                    <td><div id='divcelular'></div></td>
                </tr>
                <tr>
                    <td rowspan="2"><b>*Fecha de nacimiento:</b></td>
                    <td><input class="form-control requerido" type="date" name="fecha_nacimiento" id="fecha_nacimiento" required onblur="validar('fecha_nacimiento');" /></td>
                    <td><div id='divfecha_nacimiento'> </div></td>
                </tr>
                <tr>
                    <td><input class="form-control requerido" type="text" name="edad" id="edad" maxlength="2" placeholder="Edad"  pattern="^[0-9]{1,2}$" required onblur="validar('edad');" /></td>
                    <td><div id='divedad'> </div></td>
                </tr>
                <tr>
                    <td>
                        <label>*Domicilio: </label>
                    </td>
                    <td>
                        <textarea name="domicilio" id="domicilio" cols="7" rows="7" placeholder="Lugar de residencia" class="form-control requerido" required onblur="validar('domicilio');">
                        </textarea>
                    </td>
                    <td><div id="divdomicilio"></div></td>
                </tr>
                <tr>
                    <td>
                        <input type="button" class="btn btn-info" onClick="fin(1,'frmNuevoSolicitante');" value="Continuar" />
                    </td>
                    <td>
                        <input type="button" class="btn btn-info" onClick="fin(2, 'frmNuevoSolicitante');" value="Finalizar" />
                    </td>
                </tr>

               </table>
                <div id="error" class="container">
        
                </div>
                </form>
            </fieldset>
        <hr>
        
      <footer>
        <p>&copy;Arcamac S.C de R.L de C.V 2013</p>
      </footer>
    </div> <!-- /container -->
    
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
                document.getElementById(form).action   = "nuevoSolicitanteStep2.jsp?exito=1";
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