<%@page import="javax.swing.JOptionPane"%>
<%
    // iniciar session
    HttpSession SessionActual = request.getSession();
    
    if (SessionActual.getAttribute("usuario") == null)
    {
        //JOptionPane.showMessageDialog(null, "NIL");
        response.sendRedirect("logueo.jsp?error=2");
    
    }
    
%>