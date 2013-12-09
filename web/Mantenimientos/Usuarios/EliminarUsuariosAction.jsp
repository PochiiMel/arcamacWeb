
<%@page  language="java" session="true" %>
<%@page import="Conexion.conexion,java.sql.*" %>

<%
    // estableciendo conexion
    conexion con = new conexion();
    
    if (request.getParameter("idUsuarios") != null)
    {
        String idUsuarios = request.getParameter("idUsuarios");
        
        boolean estado = con.actualizar("delete from usuarios where idUsuarios=" + idUsuarios);
        if (estado) 
        {
            // eliminacion exitosa!!
            response.sendRedirect("/Mantenimientos/Usuarios/PrincipalUsuario.jsp?estado=1");
        }
        else 
        {
            // ocurio un error
            response.sendRedirect("/Mantenimientos/Usuarios/PrincipalUsuario.jsp?estado=2");
        }
    }
    
%>

