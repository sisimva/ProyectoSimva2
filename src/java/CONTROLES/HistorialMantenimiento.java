/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CONTROLES;

import DAO.Mantenimiento1DAO;
import DTO.MantenimientosDto;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.DatatypeConverter;

/**
 *
 * @author andres
 */
@WebServlet(name = "HistorialMantenimiento", urlPatterns = {"/HistorialMantenimiento"})
public class HistorialMantenimiento extends HttpServlet {

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

            request.getSession().removeAttribute("mantenimientos");

            String paramFechaInicial = request.getParameter("fechaInicio");
            String paramFechaFinal = request.getParameter("fechaFin");

            //Si es una eliminación las fechas están en session
            if (paramFechaInicial == null || paramFechaFinal == null) {
                paramFechaInicial = (String)request.getSession().getAttribute("fechaInicio");
                paramFechaFinal = (String)request.getSession().getAttribute("fechaFin");
                
                String mantenimientoId = request.getParameter("mantenimientoId");
                
                if(mantenimientoId != null){
                    eliminarMantenimiento(Integer.valueOf(mantenimientoId));
                }
            }

            ArrayList<MantenimientosDto> mantenimientos = consultarMantenimientos(paramFechaInicial, paramFechaFinal);

            if (mantenimientos != null || !mantenimientos.isEmpty()) {
                request.getSession().setAttribute("mantenimientos", mantenimientos);
                request.getSession().setAttribute("fechaInicio", paramFechaInicial);
                request.getSession().setAttribute("fechaFin", paramFechaFinal);
            } else {
                request.getSession().setAttribute("mensaje", "No se encontraron mantenimientos");
            }

            response.sendRedirect("/ProyectoSimva/spanish/mantenimiento/hisMan.jsp");

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

    private ArrayList<MantenimientosDto> consultarMantenimientos(String fechaInicio, String fechaFin) {
        Mantenimiento1DAO mantenimientoDAO = new Mantenimiento1DAO();

        //pasar las fechas a java.sql.date
        Date fechaInicioSql = Date.valueOf(fechaInicio);
        Date fechaFinSql = Date.valueOf(fechaFin);

        return mantenimientoDAO.consultarHistorialPorFechas(fechaInicioSql, fechaFinSql);
    }

    private String eliminarMantenimiento(Integer idMentenimiento) {
        Mantenimiento1DAO mantenimientoDAO = new Mantenimiento1DAO();
        return mantenimientoDAO.eliminarMantenimiento(idMentenimiento);
    }

}
