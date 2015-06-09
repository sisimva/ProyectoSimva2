/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CONTROLES;

import DAO.VehiculosDao;
import DTO.VehiculosDto;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jairo Medina
 */
public class GestionVehiculos extends HttpServlet {

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

            String Vehi = "";
            String rta = "";
            HttpSession miSession = request.getSession();
            VehiculosDto ObjDtoVehi = new VehiculosDto();
            VehiculosDao ObjDaoVehi = new VehiculosDao();

            if (request.getParameter("enviar").equals("Guardar")) {

                ObjDtoVehi.setPlaca(request.getParameter("placa"));
                ObjDtoVehi.setIdTiposVehiculo(Integer.parseInt(request.getParameter("tipoVehiculo")));
                ObjDtoVehi.setIdMarcas(Integer.parseInt(request.getParameter("marcaVehiculo")));
                ObjDtoVehi.setIdTiposCombustibles(Integer.parseInt(request.getParameter("tiposCombustibles")));
                ObjDtoVehi.setModelo(Integer.parseInt(request.getParameter("modeloVehiculo")));
                ObjDtoVehi.setIdEstadosVehiculo(Integer.parseInt(request.getParameter("estadosVehiculo")));
                ObjDtoVehi.setFechaEstado(request.getParameter("fechaEstado"));
                ObjDtoVehi.setIdColorVehiculo(Integer.parseInt(request.getParameter("colorVehiculo")));
                ObjDtoVehi.setIdEmpleoVehiculo(Integer.parseInt(request.getParameter("empleoVehiculo")));
                ObjDtoVehi.setSigla(request.getParameter("sigla"));
                ObjDtoVehi.setVin(request.getParameter("vin"));
                ObjDtoVehi.setMotor(request.getParameter("motor"));
                ObjDtoVehi.setCilindraje(Integer.parseInt(request.getParameter("cilindraje")));
                ObjDtoVehi.setLicenciaTransito(Integer.parseInt(request.getParameter("licenciaTransito")));
                ObjDtoVehi.setSeguroObligatorio(Integer.parseInt(request.getParameter("seguroObligatorio")));
                ObjDtoVehi.setVencimientoSeguro(request.getParameter("vencimientoSeguro"));
                ObjDtoVehi.setSeguroResponsabilidad(Integer.parseInt(request.getParameter("seguroResponsabilidadCivil")));
                ObjDtoVehi.setVencimientoResponsabilidad(request.getParameter("vencimientoResponsabilidad"));
                ObjDtoVehi.setRevisionTecnomecanica(Integer.parseInt(request.getParameter("revisionTecnomecanica")));
                ObjDtoVehi.setVencimientoTecnomecanica(request.getParameter("vencimientoTecnomecanica"));
                ObjDtoVehi.setFotoVehiculo(request.getParameter("fotoVehiculo"));
                Vehi = ObjDaoVehi.IngresarVehiculo(ObjDtoVehi);
                response.sendRedirect("/ProyectoSimva/spanish/asignacion/formVehiculos.jsp?Vehi=" + Vehi);
            } else if (request.getParameter("enviar").equals("Consultar")) {
                try {
                    ObjDtoVehi = ObjDaoVehi.ConsultarVehiculo(request.getParameter("placa"));
                    if (ObjDtoVehi.getPlaca() != null) {
                        miSession.setAttribute("ObjVehi", ObjDtoVehi);
                        miSession.setAttribute("placa", request.getParameter("placa"));
                        response.sendRedirect("/ProyectoSimva/spanish/asignacion/formResultadoConsultaVehiculo.jsp?Vehi=" + Vehi);

                    } else {
                        boolean mensaje = false;
                        Vehi = "Para registrar un nuevo vehiculo en la base de datos de clic en el boton";
                        miSession.setAttribute("Placa", request.getParameter("placa"));
                        response.sendRedirect("/ProyectoSimva/spanish/asignacion/formVehiculoNoExiste.jsp?Vehi=" + Vehi);

                    }
                } catch (Exception miException) {

                }
            }
            if (request.getParameter("enviar").equals("Registrar")) {
                response.sendRedirect("/ProyectoSimva/spanish/asignacion/formVehiculos.jsp?Vehi=" + Vehi);
            } else if ((request.getParameter("enviar").equals("Actualizar"))) {
                ObjDtoVehi.setPlaca(request.getParameter("placa"));
                ObjDtoVehi.setIdTiposVehiculo(Integer.parseInt(request.getParameter("tipoVehiculo")));
                ObjDtoVehi.setIdMarcas(Integer.parseInt(request.getParameter("marcaVehiculo")));
                ObjDtoVehi.setIdTiposCombustibles(Integer.parseInt(request.getParameter("tiposCombustibles")));
                ObjDtoVehi.setModelo(Integer.parseInt(request.getParameter("modeloVehiculo")));
                ObjDtoVehi.setIdEstadosVehiculo(Integer.parseInt(request.getParameter("estadosVehiculo")));
                ObjDtoVehi.setFechaEstado(request.getParameter("fechaEstado"));
                ObjDtoVehi.setIdColorVehiculo(Integer.parseInt(request.getParameter("colorVehiculo")));
                ObjDtoVehi.setIdEmpleoVehiculo(Integer.parseInt(request.getParameter("empleoVehiculo")));
                ObjDtoVehi.setSigla(request.getParameter("sigla"));
                ObjDtoVehi.setVin(request.getParameter("vin"));
                ObjDtoVehi.setMotor(request.getParameter("motor"));
                ObjDtoVehi.setCilindraje(Integer.parseInt(request.getParameter("cilindraje")));
                ObjDtoVehi.setLicenciaTransito(Integer.parseInt(request.getParameter("licenciaTransito")));
                ObjDtoVehi.setSeguroObligatorio(Integer.parseInt(request.getParameter("seguroObligatorio")));
                ObjDtoVehi.setVencimientoSeguro(request.getParameter("vencimientoSeguro"));
                ObjDtoVehi.setSeguroResponsabilidad(Integer.parseInt(request.getParameter("seguroResponsabilidadCivil")));
                ObjDtoVehi.setVencimientoResponsabilidad(request.getParameter("vencimientoResponsabilidad"));
                ObjDtoVehi.setRevisionTecnomecanica(Integer.parseInt(request.getParameter("revisionTecnomecanica")));
                ObjDtoVehi.setVencimientoTecnomecanica(request.getParameter("vencimientoTecnomecanica"));
                ObjDtoVehi.setFotoVehiculo(request.getParameter("fotoVehiculo"));
                Vehi = ObjDaoVehi.ActualizarVehiculo(ObjDtoVehi);
                response.sendRedirect("/ProyectoSimva/spanish/asignacion/formConsultaVehiculo.jsp?Vehi=" + Vehi);

            }
            /*else if (request.getParameter("enviar").equals("Eliminar"))
             {
             int Pos = Integer.parseInt(request.getParameter("pos"));
             Funci = ObjDaoFunci.Eliminar(Pos);
             }*/

            //response.sendRedirect("/ProyectoSimva/spanish/asignacion/formVehiculos.jsp?Vehi=" + Vehi);
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
