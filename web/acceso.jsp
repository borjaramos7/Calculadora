<%-- 
    Document   : acceso
    Created on : 10-mar-2016, 18:42:41
    Author     : 2DAW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="utf-8">
</head>
 
<body>
    <div style="color:red;">
        <%
            if (request.getAttribute("error")!= null) {
             String error = (String)  request.getAttribute("error");
             out.println(error);
            }
        %>
    </div>
<form style="border:solid 2px; " action="Cont_acceso" method="post" >
                <div style="margin-left:30px; padding:3px,3px,3px,3px;">
                    
                    <label for="user">Nombre de usuario:</label>
                    <input name="user" type="text" id="user"><br>
                    
                    <label for="cont">Contraseña:</label>
                    <input name="cont" type="password" id="cont"/></p>
                <p id="bot">
                    <input name="submit" type="submit" id="boton" value="Aceptar"/></p>
                 </div>
</form>
</body>