<%-- 
    Document   : calc
    Created on : 04-mar-2016, 16:18:16
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
        <%
          if (request.getAttribute("resultado")!= null)
          {
            String numero1 = (String) request.getAttribute("numero1");
            String numero2 = (String)  request.getAttribute("numero2");
            String resultado = (String)  request.getAttribute("resultado");
            String operador = (String)  request.getAttribute("ope");
            if (request.getAttribute("error")== null) {  
             out.println("<h1>Resultado de la operacion:</h1>");
             out.println("<p>"+numero1+operador+numero2+" = "+resultado+"</p>");
            }
          }
         if (request.getAttribute("error")!= null) {
             String error = (String)  request.getAttribute("error");
             out.println(error);
         }
         
          

        %>
        <br>
        <HR SIZE=5 NOSHADE>
        <br>
        <h1>Introduzca números con los que operar</h1>
        <form action="Cont_calc" method="">
            Numero 1:<input name="num1" id="num1" type="text" value="<% if (request.getAttribute("numero1")!= null)
            { 
                String numero1 = (String)  request.getAttribute("numero1");
                out.print(numero1);} 
            %>"><br><br>
        Operador:  
        <select id="operador" name="operador">
            <option value="+">Sumar</option>
            <option value="-">Restar</option>
            <option value="*">Multiplicar</option>
            <option value="/">Dividir</option>
        </select>
            <br><br>       
            Numero 2:<input name="num2" id="num2" type="text" value="<% if (request.getAttribute("numero2")!= null)
            { 
                String numero2 = (String)  request.getAttribute("numero2");
                out.print(numero2);} 
            %>">
        <br><br>
        <input type="submit" value="Realizar operación" /><br>
        </form>
        <!--%@ include file="resultado.jsp" %--> 
    </body>
</html>
<% } %>
