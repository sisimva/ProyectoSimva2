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
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jairo
 */
@WebServlet(name = "CancelarMantenimiento", urlPatterns = {"/cancelarMantenimiento"})
public class CancelarMantenimiento extends HttpServlet {

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
            request.getSession().setAttribute("tipoGrado", null);
            request.getSession().setAttribute("tipoVehiculo", null);
            request.getSession().setAttribute("documento", null);
            request.getSession().setAttribute("placa", null);
            request.getSession().setAttribute("idMantenimiento", null);
            request.getSession().setAttribute("apellido1", null);

            request.getSession().setAttribute("consulto", false);
            request.getSession().setAttribute("mensaje", "");
            
            response.sendRedirect("/ProyectoSimva/spanish/mantenimiento/crearMant.jsp");

    }

    private int obtenerUltimoMantenimiento() {
        Mantenimiento1DAO mantenimientoDAO = new Mantenimiento1DAO();
        return mantenimientoDAO.obtenerUltimoMantenimiento();
    }

    private String crearMantenimiento(MantenimientosDto dto) {
        Mantenimiento1DAO mantenimientoDAO = new Mantenimiento1DAO();
        return mantenimientoDAO.crearMantenimiento(dto);
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