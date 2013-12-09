
<%@page import="javax.swing.JOptionPane"%>
<%-- 
    Document   : PrincipalUsuario
    Created on : 10-20-2013, 04:18:06 PM
    Author     : darkshadow
--%>

<%@page import="Conexion.conexion, java.sql.*, java.util.*" %>
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
 <%! ResultSet resultado=null; %>
 <%! String idUsuarios = "";%>
 <%
     // creando instancia conexion
     conexion con = new conexion();
         
     // capturando datos!
     if (request.getParameter("idUsuarios") != null)
     {
         idUsuarios = (String) request.getParameter("idUsuarios");
         con.setRS("select * from Usuarios where idUsuarios=" + idUsuarios);
         
         resultado = (ResultSet) con.getRs();
         resultado.next();
     }
     
 %>
  <div class="container"><br />
      <center>
          <h2>Advertencia!</h2><p />
          <h3>Esta a punto de eliminar el siguiente usuario: </h3><br /><br />
          <table>
              
              <tr>
              <td>Usuario:</td> <td><center><% out.print(resultado.getString("usuario"));  %></center></td>
              </tr>
              
              <tr>
              <td>Nombre:</td> <td><center><% out.print(resultado.getString("nombreUsuario") + " " +
                      resultado.getString("apellidoUsuario"));  %></center></td>
              </tr>
                           
              
              <tr>
              <td colspan="2"><center><br />
                <a href="/Mantenimientos/Usuarios/PrincipalUsuario.jsp">Cancelar</a></center>
               </td>
              </tr>
              
              <tr>
                <td colspan="2">
                <center>
                    <%
                    //  generando link para que "pase" el id del usuario a eliminar
                    out.print("<a href=\"/Mantenimientos/Usuarios/EliminarUsuariosAction.jsp?idUsuarios=" + idUsuarios.toString() +"\" >Lo Entiendo, eliminar el usaurui </a>");
                    %>
                </center>
                </td>
             </tr>
          </table>
          
                               
      </center>
  </div>
<%@include file="../../administracion/footer.jsp" %>