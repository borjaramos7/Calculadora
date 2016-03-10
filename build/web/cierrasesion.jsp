<%-- 
    Document   : cierrasesion
    Created on : 10-mar-2016, 20:23:29
    Author     : 2DAW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
        
        HttpSession sesion = request.getSession();
        if (sesion.getAttribute("EstaValidado")!=null)
        {
        sesion.invalidate();
        response.sendRedirect("acceso.jsp");
        }
        else {
    %>
    <%@ include file="acceso.jsp"%> 
<%}%>