/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CONTROLES;

import DAO.FuncionariosDao;
import DAO.miExcepcion;
import DTO.FuncionariosDto;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jairo Medina
 */
public class GestionFuncionarios extends HttpServlet {

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

            String funci = "";
            String rta = "";
            HttpSession miSession = request.getSession();
            FuncionariosDto ObjDtoFunci = new FuncionariosDto();
            FuncionariosDao ObjDaoFunci = new FuncionariosDao();

            if (request.getParameter("enviar").equals("Guardar")) {
                ObjDtoFunci.setNumeroDocumento(Integer.parseInt(request.getParameter("numeroDocumento")));
                ObjDtoFunci.setIdCiudad(Integer.parseInt(request.getParameter("ciudadDocumento")));
                ObjDtoFunci.setIdGrados(Integer.parseInt(request.getParameter("grado")));
                ObjDtoFunci.setApellido1(request.getParameter("apellido1"));
                ObjDtoFunci.setApellido2(request.getParameter("apellido2"));
                ObjDtoFunci.setNombre1(request.getParameter("nombre1"));
                ObjDtoFunci.setNombre2(request.getParameter("nombre2"));
                ObjDtoFunci.setFechaNacimiento(request.getParameter("campoFechaNacimiento"));
                ObjDtoFunci.setIdRh(Integer.parseInt(request.getParameter("idRh")));
                ObjDtoFunci.setTelefono(request.getParameter("telefono"));
                ObjDtoFunci.setMovil(request.getParameter("movil"));
                ObjDtoFunci.setIndicativo(request.getParameter("indicativo"));
                ObjDtoFunci.setLicenciaConduccion(request.getParameter("licenciaConduccion"));
                ObjDtoFunci.setVencimientoLicencia(request.getParameter("vencimientoCategoria"));
                ObjDtoFunci.setIdCategoria(Integer.parseInt(request.getParameter("categoria")));
                ObjDtoFunci.setFechaAlta(request.getParameter("fechaAlta"));
                ObjDtoFunci.setEmail(request.getParameter("email"));
                ObjDtoFunci.setfotoFuncionario(request.getParameter("fotoFuncionario"));
                funci = ObjDaoFunci.IngresarFuncionario(ObjDtoFunci);
                response.sendRedirect("/ProyectoSimva/spanish/asignacion/formConsultaFuncionario.jsp?funci=" + funci);
                //response.sendRedirect("/ProyectoSimva/spanish/asignacion/formFuncionario.jsp?funci=" + funci);
            } else if ((request.getParameter("enviar").equals("Consultar"))) {
                try {
                    ObjDtoFunci = ObjDaoFunci.ConsultarFuncionario(Integer.parseInt(request.getParameter("numeroDocumento")));
                    if (ObjDtoFunci.getNumeroDocumento() != 0) {
                        miSession.setAttribute("ObjFunci", ObjDtoFunci);
                        miSession.setAttribute("Cedula", request.getParameter("numeroDocumento"));
                        response.sendRedirect("/ProyectoSimva/spanish/asignacion/formResultadoConsultaFuncionario.jsp?funci=" + funci);
                    } else {
                        boolean mensaje = false;
                        miSession.setAttribute("Cedula", request.getParameter("numeroDocumento"));
                        funci = "Para registrar un nuevo funcionario en la base de datos de clic en el botón";
                        response.sendRedirect("/ProyectoSimva/spanish/asignacion/formFuncionarioNoExiste.jsp?funci=" + funci);
                    }
                } catch (Exception miExcepcion) {
                }
                /*else if (request.getParameter("enviar").equals("Eliminar"))
                 {
                 int Pos = Integer.parseInt(request.getParameter("pos"));
                 Funci = ObjDaoFunci.Eliminar(Pos);*/
            } else if ((request.getParameter("enviar").equals("Registrar"))) {
                response.sendRedirect("/ProyectoSimva/spanish/asignacion/formFuncionario.jsp");
            } else if ((request.getParameter("enviar").equals("Actualizar"))) {
                ObjDtoFunci.setNumeroDocumento(Integer.parseInt(request.getParameter("numeroDocumento")));
                ObjDtoFunci.setIdCiudad(Integer.parseInt(request.getParameter("ciudadDocumento")));
                ObjDtoFunci.setIdGrados(Integer.parseInt(request.getParameter("grado")));
                ObjDtoFunci.setApellido1(request.getParameter("apellido1"));
                ObjDtoFunci.setApellido2(request.getParameter("apellido2"));
                ObjDtoFunci.setNombre1(request.getParameter("nombre1"));
                ObjDtoFunci.setNombre2(request.getParameter("nombre2"));
                ObjDtoFunci.setFechaNacimiento(request.getParameter("campoFechaNacimiento"));
                ObjDtoFunci.setIdRh(Integer.parseInt(request.getParameter("idRh")));
                ObjDtoFunci.setTelefono(request.getParameter("telefono"));
                ObjDtoFunci.setMovil(request.getParameter("movil"));
                ObjDtoFunci.setIndicativo(request.getParameter("indicativo"));
                ObjDtoFunci.setLicenciaConduccion(request.getParameter("licenciaConduccion"));
                ObjDtoFunci.setVencimientoLicencia(request.getParameter("vencimientoCategoria"));
                ObjDtoFunci.setIdCategoria(Integer.parseInt(request.getParameter("categoria")));
                ObjDtoFunci.setFechaAlta(request.getParameter("fechaAlta"));
                ObjDtoFunci.setEmail(request.getParameter("email"));
                ObjDtoFunci.setfotoFuncionario(request.getParameter("fotoFuncionario"));

                funci = ObjDaoFunci.ActualizarFuncionario(ObjDtoFunci);
                response.sendRedirect("/ProyectoSimva/spanish/asignacion/formConsultaFuncionario.jsp?funci=" + funci);
                //RequestDispatcher Rd = request.getRequestDispatcher("/ProyectoSimva/spanish/asignacion/formConsultaFuncionario.jsp?funci=" + funci);
                //Rd.forward(request, response);

            }

            //response.sendRedirect("/ProyectoSimva/spanish/asignacion/formFuncionario.jsp?funci="+funci);
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
