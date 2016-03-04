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
        Numero 1:<input id="num1" type="number"><br><br>
        Operador:  
        <select id="operador" name="operador">
            <option value="suma">Sumar</option>
            <option value="resta">Restar</option>
            <option value="multi">Multiplicar</option>
            <option value="div">Dividir</option>
        </select>
            <br><br>       
        Numero 2:<input id="num2" type="text">
        <br><br>
        <input type="submit" value="Realizar operación" />
        </form>
    </body>
</html>
