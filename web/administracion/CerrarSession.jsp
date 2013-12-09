<%
    // destruir session actual!
    HttpSession sessionActual = request.getSession();
    session.invalidate();
    
    // direccionar a la pagina de logueo
    response.sendRedirect("../logueo.jsp");
    
%>