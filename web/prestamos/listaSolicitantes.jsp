<%-- 
    Document   : listaSolicitantes
    Created on : 21-oct-2013, 0:29:48
    Author     : Pochii
--%>


<%@page  import="java.util.Date" %>
<%@page import="Conexion.conexion, java.sql.*" %>
<%--<%@page  session="true" language="java" %> --%>

<!-- incluyendo taglib para jstl -->
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib  prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib  prefix="display" uri="http://displaytag.sf.net" %>

<style media="all" type="text/css" >
    @import url("../css/screen.css");
</style>
<%@include file="../administracion/header.jsp" %>
  <style type="text/css">
     body {
          padding-top: 40px;
          padding-bottom: 40px;
         /* background-color: #eee;*/
        }
        .container h2
        {
           font-family: Century Gothic;
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
 
  <div class="container"><br />
      <center>
          <h2>Listado de solicitantes</h2><p />
          
          <sql:query var="consulta1" dataSource="jdbc/mysql" >
              select idSolicitante, concat(nombre1, " ", nombre2) as nombres,  concat(apellido1, " ", apellido2)  as apellidos, DUI from solicitante
          </sql:query>
              
          <display:table id="usuario" name="${consulta1.rows}" pagesize="10" export="true"  >
               <display:column title="Nombre" property="nombres"  />
               <display:column title="Apellido" property="apellidos" />
               <display:column title="Usuario" property="DUI"  />
               <display:column  value="Eliminar" url="/Mantenimientos/Usuarios/EliminarUsuarios.jsp" paramId="idUsuarios" paramProperty="idUsuarios"  style="text-align:center;"/>
               <display:column  value="Modificar" url="/Mantenimientos/Usuarios/ModificarUsuarios.jsp" paramId="idUsuarios" paramProperty="idUsuarios"  style="text-align:center;"/>
          </display:table>
                                
      </center>
  </div>
  <hr>
<%@include file="../administracion/footer.jsp" %>