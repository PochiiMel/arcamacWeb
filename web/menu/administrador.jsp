   <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Pr&eacute;stamos ARCAMAC</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="/panelAdmin.jsp">Inicio</a></li>
            <li><a href="#about">Pr&eacute;stamos</a></li>
            <li><a href="#contact">Socios</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Reportes<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Saldos Rojos</a></li>
                <li><a href="#">Estado de cuenta</a></li>
                <li><a href="#">Pr&eacute;stamos vigentes</a></li>
                <li class="divider"></li>
                <li><a href="#">Pr&eacute;stamos clasificados Planilla/Efectivo</a></li>
                <li><a href="#">Pagos efectuados</a></li>
                <li><a href="#">Pr&eacute;stamos cancelados</a></li>
                <li><a href="#">Otros reportes</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Configuraci&oacute;n<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Generar respaldo de datos</a></li>
                <li><a href="#">Reestablecer base de datos</a></li>
                <li><a href="/Mantenimientos/Usuarios/PrincipalUsuario.jsp">Administrar usuarios</a></li>
              </ul>
            </li>
          </ul>
          <ul class="nav pull-right">
              <li class="divider-vertical"></li>
              <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      
                      <%
                         //out.print(SessionActual.getAttribute("nombreUsuario"));
                      %>
                      
                      <script type="text/javascript">
                        var d=new Date();
                        var dia=new Array(7);
                        dia[0]="Domingo";
                        dia[1]="Lunes";
                        dia[2]="Martes";
                        dia[3]="Miercoles";
                        dia[4]="Jueves";
                        dia[5]="Viernes";
                        dia[6]="Sabado";

                        var mes = new Array(12);
                        mes[0] = "Enero";
                        mes[1] = "Febrero";
                        mes[2] = "Marzo";
                        mes[3] = "Abril";
                        mes[4] = "Mayo";
                        mes[5] = "Junio";
                        mes[6] = "Julio";
                        mes[7] = "Agosto";
                        mes[8] = "Septiembre";
                        mes[9] = "Octubre";
                        mes[10] = "Noviembre";
                        mes[11] = "Diciembre";


                        document.write("<font color=\"red\">"+ dia[d.getDay()] + " " +d.getDate() + " de " + mes[d.getMonth()] +"</font>");
                     </script>
                      
                      <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                      <li><a href="/administracion/CerrarSession.jsp">Cerrar Sesi&oacute;n</a></li>
                  </ul>
               </li>
          </ul>
        </div><!--/.navbar-collapse -->
      </div>
    </div>