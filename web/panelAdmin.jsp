<%@page  import="java.util.Date" %>
<%--<%@page  session="true" language="java" %> --%>
<%@include file="administracion/header.jsp" %>
       <style type="text/css">
      body {
        padding-top: 20px;
        padding-bottom: 60px;
      }

      /* Custom container */
      .container {
        margin: 0 auto;
        max-width: 1000px;
      }
      .container > hr {
        margin: 60px 0;
      }

      /* Main marketing message and sign up button */
      .jumbotron {
        margin: 0px 0;
        text-align: center;
        /*height: 250px;*/
      }
      .jumbotron h2 {
        font-size: 30px;
        line-height: 1;
        font-family: century gothic;
      }
      .jumbotron .lead {
        font-size: 24px;
        line-height: 1.25;
      }
      .jumbotron .btn {
        font-size: 21px;
        padding: 14px 24px;
      }

      /* Supporting marketing content */
      .marketing {
        margin: 15px 0;
      }
      .marketing p + h4 {
        margin-top: 28px;
      }
    </style>
  </head>
    <div class="jumbotron" style="background-color: #FFFFFF;">
        <h2>Panel Administrativo</h2>
        <img src="images/panelAdmin.jpg" />

      </div>

      <hr>
    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-lg-4">
          <h2>Pr&eacute;stamos</h2>
          <p>Secci&oacute;n de pr&eacute;stamos del Sistema. Ingrese para realizar nuevos pr&eacute;stamos, ver pr&eacute;stamos vigentes, realizar pagos, y toda la informaci&oacute;n relacionada con los cr&eacute;ditos otorgados </p>
          <a href="prestamos/prePrestamo.jsp" class="btn btn-primary">Nuevo Pr&eacute;stamos</a>
          <button type="button" class="btn btn-primary">Control de pr&eacute;stamos</button>
        </div>
        <div class="col-lg-4">
          <h2>Socios</h2>
          <p>Panel de control de los solicitantes a pr&eacute;stamos en la cooperativa, en esta secci&oacute;n se podr&aacute;
            actualizar, agregar y acceder a todas la informaci&oacute;n de los socios</p>
            <a class="btn btn-primary" href="solicitantes/nuevoSolicitanteStep1.jsp">Nuevo Socio</a>
            <button type="button" class="btn btn-primary">Ver socios</button>
       </div>
        <div class="col-lg-4">
          <h2>Reportes</h2>
          <p>&Aacute;rea de reportes del sistema. Secci&oacute;n dedicada a la generaci&oacute;n de reportes del sistema. Desde aqu&iacute; se podr&aacute; acceder a informes como Pr&eacute;stamos en mora, pagos efectuados, pr&eacute;stamos cancelados, entre otros</p>
          <button type="button" class="btn btn-primary">Saldos Rojos</button>
            <button type="button" class="btn btn-primary">Reportes</button>
        </div>
      </div>
    </div>
  <%@include file="administracion/footer.jsp" %>