<%@page import="javax.swing.JOptionPane"%>
<%@page import="Conexion.conexion, java.sql.*" %>
<%@page  import="java.util.*" session="true" %>

<%
    

    // tomando datos del formulario
    
    if ( request.getParameter("usuario") != null && request.getParameter("pass") != null    )
    {
        
        // conectando a la base de datos
        conexion con = new conexion();
        String qr = "select AES_DECRYPT(password,'MelendezRivera') as pass,usuario,nombreUsuario,apellidoUsuario,tipoUsuario from Usuarios"
                + " where usuario='"+ request.getParameter("usuario") +"';";
        
       
        con.setRS(qr);
        
        
        ResultSet resultado = (ResultSet)con.getRs();
        
        if (resultado.next())
        {
            // ver si datos coinciden
            String pass = resultado.getString("pass");
            String pass2 = request.getParameter("pass");
            
      
            if (pass.equals(pass2))
            {
             // crear session
            HttpSession SessionActual = request.getSession();
            // almacenando usuario
            SessionActual.setAttribute("usuario",request.getParameter("usuario"));
            // almacenando nombre
            SessionActual.setAttribute("nombreUsuario", resultado.getString("nombreUsuario"));// + " " +
            // almacenando tipoUsuario
            SessionActual.setAttribute("tipoUsuario", resultado.getInt("tipoUsuario"));
            
            //resultado.getString("apellidoUsuario"));
            response.sendRedirect("../panelAdmin.jsp");
            }
            else 
            {
                response.sendRedirect("../logueo.jsp?error=1");
            }
            
            
        }
    else
    {
        response.sendRedirect("../logueo.jsp?error=1");
        
    }
       
    }
   
%>
