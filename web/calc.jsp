<%-- 
    Document   : calc
    Created on : 04-mar-2016, 16:18:16
    Author     : 2DAW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ include file="index.html" %> 
        <title>Calculadora</title>
    </head>
    <body>
        <h1>Introduzca números con los que operar</h1>
        <form action="Cont_calc" method="">
            Numero 1:<input name="num1" id="num1" type="text"><br><br>
        Operador:  
        <select id="operador" name="operador">
            <option value="+">Sumar</option>
            <option value="-">Restar</option>
            <option value="*">Multiplicar</option>
            <option value="/">Dividir</option>
        </select>
            <br><br>       
        Numero 2:<input name="num2" id="num2" type="text">
        <br><br>
        <input type="submit" value="Realizar operación" /><br>
        </form>
        <%
          
         if (request.getAttribute("resultado")!= null) {  
          String numero1 = (String) request.getAttribute("numero1");
          String numero2 = (String)  request.getAttribute("numero2");
          String resultado = (String)  request.getAttribute("resultado");
          String operador = (String)  request.getAttribute("ope");
          
          
          
          out.println("<h1>Resultado de la operacion:</h1>");
          out.println("<p>"+numero1+operador+numero2+" = "+resultado+"</p>");
         }
        %>
        <!--%@ include file="resultado.jsp" %--> 
    </body>
</html>
