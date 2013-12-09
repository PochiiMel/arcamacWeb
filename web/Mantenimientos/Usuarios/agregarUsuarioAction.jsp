

<%@page import="javax.swing.JOptionPane"%>
<%@page  import="Conexion.conexion, java.sql.*" %>
<%
    // tomando datos
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String usuario = request.getParameter("usuario");
    String pass = request.getParameter("pass");
    int tipoUsuario = Integer.parseInt(request.getParameter("tipousuario"));
    String email = request.getParameter("email");
        
    
    // iniciando conexion con el servidor
    conexion con = new conexion();
    // creando consulta de insercion del nuevo usuario
    // cifrando password
    
    String qr ="insert into Usuarios(nombreUsuario,apellidousuario,usuario,password,tipoUsuario,email)"
            + " values('"+nombre+"','"+apellido+"','"+usuario+"',AES_ENCRYPT('" + pass + "','MelendezRivera'),"+tipoUsuario+ ",'"+email+"');";
    
    boolean agregado = con.actualizar(qr);
    
    if (agregado)
        {
            //JOptionPane.showMessageDialog(null, "Usuario Agrgado!");
            // regresando a la pagina anterior (agregar usuario), para hacer notificacion formal!
            response.sendRedirect("agregarUsuarios.jsp?estado=1");
        }
    else
    {
        //JOptionPane.showMessageDialog(null, "lo sentimos ha ocurrido un error!");
        response.sendRedirect("agregarUsuarios.jsp?estado=2");
    }

    
    
    
%>