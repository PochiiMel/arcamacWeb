<%@page import="java.util.Map"%>
<%
    String ruta = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Arcamac S.V</title>
    <script src="<%=ruta%>/js/jquery-1.10.2.js"></script>
    <!-- Bootstrap core CSS -->
    <link href="<%= ruta %>/css/bootstrap.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="<%= ruta %>/css/sb-admin.css" rel="stylesheet">
    <link rel="stylesheet" href="<%= ruta %>/font-awesome/css/font-awesome.min.css">
  </head>

  <body>

    <div id="wrapper">

      <!-- Sidebar -->
      <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="<%=ruta%>/panelAdmin.jsp">Pr&eacute;stamos ARCAMAC</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav side-nav">
            <li><a href="<%=ruta%>/prestamos/panelPrestamos.jsp"><i class="fa fa-th-list"></i> Pr&eacute;stamos</a></li>
            <li><a href="<%=ruta%>/solicitantes/panelSolicitantes.jsp"><i class="fa fa-users"></i> Socios</a></li>
            <li><a href="<%=ruta%>/reportes/panelReportes.jsp"><i class="fa fa-bar-chart-o"></i> Reportes</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-caret-square-o-down"></i> Opciones r&aacute;pidas <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="<%=ruta%>/prestamos/nuevoPrestamo.jsp">Nuevo pr&eacute;stamo</a></li>
                <li><a href="<%=ruta%>/solicitantes/nuevoSolicitanteStep1.jsp">Nuevo socio</a></li>
                <li><a href="<%=ruta%>/prestamos/analisisNuevo.jsp">An&aacute;lisis de nuevos <br />pr&eacute;stamos</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-caret-square-o-down"></i> Reportes <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Saldos rojos</a></li>
                <li><a href="#">Estado de cuenta</a></li>
                <li><a href="#">Pr&eacute;stamos vigentes</a></li>
                <li><a href="#">Pr&eacute;stamos clasificados en Planilla/efectivo</a></li>
                <li><a href="#">Otros reportes</a></li>
              </ul>
            </li>
          </ul>
             
          <ul class="nav navbar-nav navbar-right navbar-user">
            <li class="dropdown messages-dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-warning"></i> Saldos Rojos <span class="badge">7</span> <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li class="dropdown-header">7 Pr&eacute;stamos presentan mora de m&aacute;s de 2 meses</li>
                <li class="message-preview">
                  <a href="#">
                    <span class="name">
                        P1G1100701
                    </span>
                    <span class="message">Pr&eacute;stamo realizado por: Julio Valiente</span>
                    <span class="time"><i class="fa fa-exclamation-circle"></i> Fecha de &uacute;ltimo pago: 12/06/2013<span>
                  </a>
                </li>
                <li class="divider"></li>
                <li><a href="#">Ver todos <span class="badge">7</span></a></li>
              </ul>
            </li>
            <li class="dropdown alerts-dropdown">
              <a href="" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-calendar"></i> Cumplea&ntilde;eros del mes <span class="badge">3</span> <b class="caret"></b></a>
              <ul class="dropdown-menu">
                 <li class="message-preview">
                  <a href="#">
                    <span class="avatar"><img src="http://placehold.it/50x50"></span>
                    <span class="name">
                        Jorge Rivera
                    </span>
                    <br />
                    <span class="message"><i class="fa fa-gift"></i>&iexcl;Celebra sus 23 a&ntilde;os!</span>
                    <br />
                    <span class="time"></i>Tel&eacute;fono: 2253-6314<span>
                  </a>
                </li>
                <li class="divider"></li>
                <li><a href="#">Ver todos <span class="badge">7</span></a></li>
              </ul>
            </li>
            <li class="dropdown user-dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> 
                    <%
                        // out.print(SessionActual.getAttribute("nombreUsuario"));
                   
                         String  hora = new   java.util.Date().toLocaleString();
                         out.print("Susana Mart&iacute;nez " +hora.substring(11));
                      %>
                      <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="<%=ruta%>/"><i class="fa fa-user"></i> Mi perfil</a></li>
                <li><a href="<%=ruta%>/Mantenimientos/Usuarios/PrincipalUsuario.jsp"><i class="fa fa-users"></i> Administrar Usuarios </a></li>
                <li><a href="<%=ruta%>/"><i class="fa fa-hdd-o"></i> Generar Backup</a></li>
                <li class="divider"></li>
                <li><a href="<%=ruta%>/administracion/CerrarSession.jsp"><i class="fa fa-power-off"></i> Cerrar Sesi&oacute;n</a></li>
              </ul>
            </li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </nav>

      <div id="page-wrapper">
<!-- FIN DEL HEADER -->

        
