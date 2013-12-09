<%@page  import="java.util.*" session="true" %> 

<%
    // SessionActual ya existe!
    HttpSession SessionActual = request.getSession();
  try 
  {
   String tmp = SessionActual.getAttribute("tipoUsuario").toString();
   int tipoUsuario = Integer.parseInt(tmp);
    
    switch (tipoUsuario)
    {
       
        case 1: // administrador
%>
            <%@include file="/menu/administrador.jsp" %>
            <%
        break;
           
    }
  }
  
  catch (Exception e)
  {
    response.sendRedirect("/logueo.jsp?error=2");

  }
    
%>


