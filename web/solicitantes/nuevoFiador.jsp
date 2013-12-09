<%-- 
    Document   : nuevoFiador
    Created on : 15-oct-2013, 15:02:21
    Author     : Pochii
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="../administracion/ValSession.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Fiador</title>
        <link href="../css/bootstrap/assets/css/bootstrap.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="jumbotron.css" rel="stylesheet">
    
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
    </head>
    <body>   
        <div class="navbar navbar-inverse navbar-fixed-top">
          <div class="navbar-inner">
            <div class="container">
              <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="brand" href="#">Pr&eacute;stamos ARCAMAC</a>
              <div class="nav-collapse collapse">
                <ul class="nav">
                  <li class="active"><a href="#">Inicio</a></li>
                  <li><a href="#about">Pr&eacute;stamos</a></li>
                  <li><a href="#contact">Socios</a></li>
                </ul>
              <ul class="nav pull-right">
              <li class="divider-vertical"></li>
              <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      
                      <%
                         out.print(SessionActual.getAttribute("nombreUsuario"));
                   
                         String  hora = new   java.util.Date().toLocaleString();
                         out.print(" " +hora.substring(11));
                         // 2250 2727 --> vansesa reyes --> pagos pendietes 
                      %>
                      
                      <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                      <li><a href="/administracion/CerrarSession.jsp">Cerrar Sesi&oacute;n</a></li>
                  </ul>
               </li>
          </ul>
              </div><!--/.nav-collapse -->
            </div>
          </div>
        </div>
        <div class="container">
            <h2>Paso 3: Informaci&oacute;n del fiador</h2>
             <h3>Progreso: </h3>
            <div class="progress progress-striped active">
                <div class="bar" style="width: 80%;"></div>
            </div>
            <fieldset>
                <form name="frmNuevoSolicitante" action="../prestamos/nuevoPrestamo.jsp" method="POST" >
               <table class="table">
                   <tr>
                    <td>
                        <label>Nombres: </label>
                    </td>
                    <td>
                        *<input type="text" name="txtNombreFiador" placeholder="Nombres" required autofocus />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Apellidos: </label>
                    <td>
                        *<input type="text" name="txtApellidoFiador" placeholder="Apellidos" required/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>DUI: </label>
                    </td>
                    <td>
                        *<input type="text" name="txtDUIF" placeholder="DUI" required />  
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Tel&eacute;fono: </label>
                    </td>
                    <td>
                        <input type="text" name="txtTelefonoF" placeholder="Ej. 2272-9185" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Tel&eacute;fono Residencial: </label>
                    </td>
                    <td>
                        <input type="text" name="txtTelefonoResidencialF" placeholder="Ej. 2272-9185" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Edad: </label>
                    </td>
                    <td>
                       * <input type="text" name="txtEdad" maxlenght="2" placeholder="Edad" required />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Domicilio: </label>
                    </td>
                    <td>
                        *<textarea name="txtDomicilioF" cols="7" rows="7" placeholder="Lugar de residencia">
                        </textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Celular: </label>
                    </td>
                    <td>
                        *<input type="text" name="txtCelularF" placeholder="Ej. 7923-6354" required />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Direcci&oacute;n particular: </label>
                    </td>
                    <td>
                        <textarea name="txtDireccionParticular" cols="7" rows="7" placeholder="direcci&oacute;n">
                        </textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Profesi&oacute;n: </label>
                    </td>
                    <td>
                        <input type="text" name="txtProfesionF" placeholder="Profesi&oacute;n" autofocus />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Cargo: </label>
                    <td>
                        <input type="text" name="txtCargoF" placeholder="Puesto de trabajo"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Lugar de trabajo: </label>
                    </td>
                    <td>
                        <input type="text" name="txtLugarTrabajoF" placeholder="Lugar de trabajo" />  
                    </td>
                </tr>
            
                <tr>
                    <td>
                        <input type="submit" class="btn btn-inverse" value="Finalizar" />
                    </td>
                </tr>
               </table>
                </form>
            </fieldset>
             </hr>
            <footer>
                <p>&copy;Arcamac S.C de R.L de C.V 2013</p>
          </footer>
        </div>
    </body>
</html>
