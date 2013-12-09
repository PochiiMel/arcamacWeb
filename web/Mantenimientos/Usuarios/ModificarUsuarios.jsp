<%-- 
    Document   : ModificarUsuarios
    Created on : 10-21-2013, 11:40:13 AM
    Author     : jorge
--%>

<%@page import="Conexion.conexion, java.sql.*,java.util.Date" %>
<%@page  session="true" language="java" %>
<%@include file="../../administracion/header.jsp" %>
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
 <%! String idUsuarios = ""; %>
 <%! ResultSet resultado = null; %>
 
 
        <%
            // estableciendo conexion
            conexion con = new conexion();
            
            // obteniendo valor del idUsuarios
            if (request.getParameter("idUsuarios") != null)
            {
                idUsuarios = request.getParameter("idUsuarios");
                String qr = "select * from usuarios where idUsuarios=" +idUsuarios;
                con.setRS(qr);
                resultado = (ResultSet) con.getRs();
                resultado.next();
                          
            }

        %>
  <div class="container">

        <form class="form-signin" action="agregarUsuarioAction.jsp" method="post">
        <center>
        <h2 class="form-signin-heading">Modificar Usuario</h2><br />
    
        <input type="text" class="form-control" placeholder="Nombres" name="nombre" value="<%=resultado.getString("nombreUsuario") %>" autofocus>
        <input type="text" class="form-control" placeholder="Apellidos" name="apellido" autofocus>
       
        <input type="text" class="form-control" placeholder="Usuario" name="usuario" autofocus>
        <input type="password" class="form-control" placeholder="Contrase&ntilde;a" name="pass" autofocus>
      
        
        <input type="text" class="form-control" placeholder="Email" name="email" autofocus>
        <br />
        Tipo Usuario:
          <!--tipo de usuario -->
        <select name="tipousuario">
            <%
             
              con.setRS("select * from tipousuario");
              ResultSet resultado = (ResultSet)con.getRs();
              while (resultado.next())
              {
              %>
              <option value="<%=resultado.getInt("idtipoUsuario") %>"><%=resultado.getString("tipoUsuario") %></option>
              <%
              }
            
            %>
        </select><p /><br />
        
        <button class="btn btn-lg btn-primary btn-block" type="submit">Agregar</button>
        
        
          <%
              
              if (request.getParameter("estado") != null)
              {
                  String estado = request.getParameter("estado");
                  if (estado.equals("1"))
                  {
                      out.print("<font color=\"red\">Usuario Agregado Exitosamente!</font>");
                  }
                  if (estado.equals("2"))
                  {
                      out.print("<font color=\"red\">Lo Sentimos ha ocurrido un error!</font>");
                  }
              }
              
              %>
        
 </div>
<%@include file="../../administracion/footer.jsp" %>