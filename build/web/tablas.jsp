<%-- 
    Document   : tablas
    Created on : 10-mar-2016, 15:10:12
    Author     : 2DAW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <% 
        HttpSession sesion = request.getSession(); 
    %>
    
    <%
        if (sesion.getAttribute("EstaValidado")==null || !sesion.getAttribute("EstaValidado").equals("S")){%>
           <%@ include file="acceso.jsp"%> 
        <%}
        else {
        %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ include file="calytab.jsp" %> 
        <title>Calculadora</title>
    </head>
    <body>
        
        <br>
        <HR SIZE=5 NOSHADE>
        <br>
        <h1>Introduzca números con los que operar</h1>
        <form action="Cont_tab" method="">
            Numero <input name="num" id="num" type="text" size="2" style="text-align: center;"
                          value="<% 
                            if (request.getAttribute("num")!= null)
                          {
                             String num = (String)  request.getAttribute("num");
                             out.print(num);     
                          }
                            %>"><br>
        <input type="submit" value="Mostrar tabla" />
        </form>
        <form action="Cont_tablas">
        <input type="submit" value="Mostrar todas" /><br>
        </form>
        <%
          if (request.getAttribute("num")!= null)
          {
            if (request.getAttribute("error")== null) {  
             String tblstr = (String)  request.getAttribute("tablacompleta");
             String multiplo = (String)  request.getAttribute("num");
             
             out.println("<h1>Tabla del "+multiplo+"</h1>");
             out.println(tblstr);
            }
            if (request.getAttribute("error")!= null) {
             String error = (String)  request.getAttribute("error");
             out.println(error);
            }
          }
          if (request.getAttribute("tablas")!= null)
          {
              String tablas = (String)  request.getAttribute("tablas");
             
             out.println("<h1>Tablas de multiplicar</h1>");
             out.println(tablas);
          }
         
         
          

        %>
    </body>
</html>
<% } %>