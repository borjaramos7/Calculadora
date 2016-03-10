/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejer1y2;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 2DAW
 */
public class Cont_calc extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            
            String num1 = request.getParameter("num1");
            String num2 = request.getParameter("num2");
            String operador = request.getParameter("operador");
            float resultado=0;
            
            if(!((Funciones.isNumeric(num1) && Funciones.isNumeric(num2)) && (operador.equals("/")
                    && (num2.equals("0") || num2.equals("0.0")))==false))
            {  
                request.setAttribute("error","Has introducido algun parametro erroneo");
            }
            else
            {
                float numero1 = Float.parseFloat(num1);
                float numero2 = Float.parseFloat(num2);
                switch (operador) {
 
                        case "+":
                        resultado=numero1+numero2;
                        break;
                        case "-":
                        resultado=numero1-numero2;
                        break;
                        case "*":
                        resultado=numero1*numero2;
                        break;
                        case "/":
                        resultado=numero1/numero2;
                        break;
                        default:
                        ;
                        break;

                 }
            }
            
            
                
            //out.println(numero1+operador+numero2+" "+resultado);
            request.setAttribute("numero1",(num1));
            request.setAttribute("numero2",(num2));
            request.setAttribute("resultado",Float.toString(resultado));
            request.setAttribute("ope",(operador));
            
            RequestDispatcher dispatcher = request.getRequestDispatcher("calc.jsp");
            dispatcher.forward(request, response);
            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet Cont_calc</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet Cont_calc at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
