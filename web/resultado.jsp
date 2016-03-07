<%-- 
    Document   : resultado
    Created on : 07-mar-2016, 15:49:00
    Author     : 2DAW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          
         if (request.getAttribute("resultado")!= null) {  
          String numero1 = request.getParameter("numero1");
          String numero2 = request.getParameter("numero2");
          String resultado = request.getParameter("resultado");
          String operador = request.getParameter("ope");
          
          
          
          out.println("Resultado de la operacion:");
          out.println(numero1+operador+numero2+" = "+resultado);
         }
        %>
        
        <!--%= numero1+numero2=resultado %-->
    </body>
</html>
