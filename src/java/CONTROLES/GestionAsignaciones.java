/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CONTROLES;

import DAO.AsignacionesDao;
import DAO.VehiculosDao;
import DTO.AsignacionesDto;
import DTO.VehiculosDto;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jairo Medina
 */
@WebServlet(name = "GestionAsignaciones", urlPatterns = {"/GestionAsignaciones"})
public class GestionAsignaciones extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */

            String Asig = "";
            String Vehi = "";
            HttpSession miSession = request.getSession();
            AsignacionesDto ObjDtoAsig = new AsignacionesDto();
            AsignacionesDao ObjDaoAsig = new AsignacionesDao();
            VehiculosDto ObjDtoVehi = new VehiculosDto();
            VehiculosDao ObjDaoVehi = new VehiculosDao();

            if (request.getParameter("enviar").equals("Guardar")) {

                ObjDtoAsig.setIdAsignaciones(Integer.parseInt(request.getParameter("numeroActa")));
                ObjDtoAsig.setNumeroDocumento(Integer.parseInt(request.getParameter("numeroDocumento")));
                ObjDtoAsig.setPlaca(request.getParameter("placa"));
                ObjDtoAsig.setFechaAsignacion("fechaAsignacion");
                ObjDtoAsig.setFechaDesasignacion("fechaDesasignacion");
                ObjDtoAsig.setNovedadesVehiculos("novedadesVehiculo");

                Asig = ObjDaoAsig.IngresarAsignacion(ObjDtoAsig);

            } else if (request.getParameter("enviar").equals("Consultar")) {
                try {
                    ObjDtoAsig = ObjDaoAsig.ConsultarAsignacion(request.getParameter("placa"));
                    if (ObjDtoAsig.getPlaca() != null) {
                        miSession.setAttribute("ObjAsig", ObjDtoAsig);
                        miSession.setAttribute("Placa", request.getParameter("placa"));
                        response.sendRedirect("/ProyectoSimva/spanish/asignacion/formResultadoConsultaAsignacion.jsp?Asig=" + Asig);
                    } else {
                        boolean mensaje = false;
                        Asig = "Para Asignar el vehiculo de clic en el boton";
                        miSession.setAttribute("ObjAsig", ObjDtoAsig);
                        miSession.setAttribute("Placa", request.getParameter("placa"));
                        response.sendRedirect("/ProyectoSimva/spanish/asignacion/formAsignacionNoExiste.jsp?Asig=" + Asig);
                    }
                } catch (Exception miExcepcion) {

                }
            } else if (request.getParameter("enviar").equals("Asignar")) {
                try {
                    //miSession.getAttribute("Placa");
                    ObjDtoVehi = ObjDaoVehi.ConsultarVehiculo(request.getParameter("placa"));
                    if (ObjDtoVehi.getPlaca() != null) {
                        miSession.setAttribute("ObjAsig", ObjDtoVehi);
                        miSession.setAttribute("Placa", request.getParameter("placa"));
                        response.sendRedirect("/ProyectoSimva/spanish/asignacion/formAsignacion.jsp?Asig="+Asig);
                    } else {
                        boolean mensaje = false;
                        Vehi = "Para registrar un nuevo vehiculo en la base de datos de clic en el boton";
                        miSession.setAttribute("Placa", request.getParameter("placa"));
                        response.sendRedirect("/ProyectoSimva/spanish/asignacion/formVehiculoNoExiste.jsp?Vehi=" + Vehi);
                    }
                } catch (Exception miException) {
                }
            }
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
