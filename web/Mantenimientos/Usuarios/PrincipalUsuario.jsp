<%-- 
    Document   : PrincipalUsuario
    Created on : 10-20-2013, 04:18:06 PM
    Author     : darkshadow
--%>

<%@page  import="java.util.Date" %>
<%@page import="Conexion.conexion, java.sql.*" %>
<%@page  session="true" language="java" %>

<!-- incluyendo taglib para jstl -->
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib  prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib  prefix="display" uri="http://displaytag.sf.net" %>
<%@include file="../../administracion/header.jsp" %>

<style media="all" type="text/css" >
    @import url("../../css/screen.css");
</style>

<style type="text/css">
     body {
          padding-top: 40px;
          padding-bottom: 40px;
         /* background-color: #eee;*/
        }

        .form-signin {
          max-width: 330px;
          padding: 15px;
          margin: 0 auto;
        }
        .form-signin .form-signin-heading,
        .form-signin .checkbox {
          margin-bottom: 10px;
        }
        .form-signin .checkbox {
          font-weight: normal;
        }
        .form-signin .form-control {
          position: relative;
          font-size: 16px;
          height: auto;
          padding: 10px;
          -webkit-box-sizing: border-box;
             -moz-box-sizing: border-box;
                  box-sizing: border-box;
        }
        .form-signin .form-control:focus {
          z-index: 2;
        }
        .form-signin input[type="text"] {
          margin-bottom: -1px;
          border-bottom-left-radius: 0;
          border-bottom-right-radius: 0;
        }
        .form-signin input[type="password"] {
          margin-bottom: 10px;
          border-top-left-radius: 0;
          border-top-right-radius: 0;
        }
      
    </style>
  </head>
  <div class="container"><br />
      <center>
          <h3>Listado de Usuarios</h3><p />
          
          <sql:query var="consulta1" dataSource="jdbc/mysql" >
              select idUsuarios,nombreUsuario,apellidoUsuario,substring(fechaCreacion,1,10) as fecha,usuario from Usuarios
          </sql:query>
              
          <display:table id="usuario" name="${consulta1.rows}" pagesize="10" export="true"  >
               <display:column title="Nombre" property="nombreUsuario"  />
               <display:column title="Apellido" property="apellidoUsuario" />
               <display:column title="Usuario" property="usuario"  />
               <display:column title="Fecha Alta" property="fecha" />
               <display:column  value="Eliminar" url="/Mantenimientos/Usuarios/EliminarUsuarios.jsp" paramId="idUsuarios" paramProperty="idUsuarios"  style="text-align:center;"/>
               <display:column  value="Modificar" url="/Mantenimientos/Usuarios/ModificarUsuarios.jsp" paramId="idUsuarios" paramProperty="idUsuarios"  style="text-align:center;"/>
          </display:table>
          
                   
         <!-- Hay parametro de estado?? -->
         <%
             
             if (request.getParameter("estado") != null)
             {
                 String estado = (String) request.getParameter("estado");
                 if (estado.equals("1"))
                 {
                        out.print("<font color='red'>Usuario Eliminado exitosamente</font>");
                 }
                 else 
                 {       out.print("<font color='red'>Usuario no pudo ser eliminado</font>");
                 }
                 
             }
             
         %>
         
         
      </center>
  </div>
<%@include file="../../administracion/footer.jsp" %>