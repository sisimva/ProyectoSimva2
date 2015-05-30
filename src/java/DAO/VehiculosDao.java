/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.VehiculosDto;
import Modelo.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Jairo Medina
 */
public class VehiculosDao {

    Connection con = Conexion.getInstace();
    PreparedStatement stmt = null;
    ResultSet rs = null;

    public String IngresarVehiculo(VehiculosDto ingVehi) {
        String rta = "";
        try {
            stmt = con.prepareStatement("INSERT INTO  vehiculos (placa, idTiposVehiculo, "
                    + "idMarcas, idTiposCombustibles, modelo, idEstadosVehiculo, fechaEstado, idColorVehiculo,"
                    + "idEmpleoVehiculo, sigla, vin, motor, cilindraje, licenciaTransito, "
                    + "seguroObligatorio, vencimientoSeguro, seguroResponsabilidad,"
                    + "vencimientoResponsabilidad, revisionTecnomecanica, vencimientoTecnomecanica, fotoVehiculo) "
                    + "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

            stmt.setString(1, ingVehi.getPlaca());
            stmt.setInt(2, ingVehi.getIdTiposVehiculo());
            stmt.setInt(3, ingVehi.getIdMarcas());
            stmt.setInt(4, ingVehi.getIdTiposCombustibles());
            stmt.setInt(5, ingVehi.getModelo());
            stmt.setInt(6, ingVehi.getIdEstadosVehiculo());
            stmt.setString(7, ingVehi.getFechaEstado());
            stmt.setInt(8, ingVehi.getIdColorVehiculo());
            stmt.setInt(9, ingVehi.getIdEmpleoVehiculo());
            stmt.setString(10, ingVehi.getSigla());
            stmt.setString(11, ingVehi.getVin());
            stmt.setString(12, ingVehi.getMotor());
            stmt.setInt(13, ingVehi.getCilindraje());
            stmt.setInt(14, ingVehi.getLicenciaTransito());
            stmt.setInt(15, ingVehi.getSeguroObligatorio());
            stmt.setString(16, ingVehi.getVencimientoSeguro());
            stmt.setInt(17, ingVehi.getSeguroResponsabilidad());
            stmt.setString(18, ingVehi.getVencimientoResponsabilidad());
            stmt.setInt(19, ingVehi.getRevisionTecnomecanica());
            stmt.setString(20, ingVehi.getVencimientoTecnomecanica());
            stmt.setString(21, ingVehi.getFotoVehiculo());

            int resultado = stmt.executeUpdate();
            if (resultado == 0) {
                rta = "Fallo el ingreso del Vehículo";
                System.out.println("Fallo el ingreso del Vehículo");
            } else {
                rta = " Vehículo insertado exitosamente";
                System.out.println("Vehículo insertado exitosamente");
            }
        } catch (SQLException sqle) {
            rta = sqle.getMessage();
        } /*finally {
         if (con != null) {
         try {
         con.close();
         } catch (SQLException e) {
         e.printStackTrace();
         }
         }
         }*/

        return rta;
    }

    public VehiculosDto ConsultarVehiculo(String placa) {
        String rta = "";
        VehiculosDto unVehiculo = new VehiculosDto();
        try {
            stmt = con.prepareStatement("SELECT v.placa, v.idTiposVehiculo, tV.descripcionTipoVehiculo, v.idMarcas, m.descripcionMarcaVehiculo, "
                    + "v.idTiposCombustibles, tC.descripcionTipoCombustible, v.modelo, v.idEstadosVehiculo, eV.descripcionEstadoVehiculo, "
                    + "v.fechaEstado, v.idColorVehiculo, cV.descripcionColorVehiculo, v.idEmpleoVehiculo, emV.descripcionEmpleoVehiculo, "
                    + "v.sigla, v.vin, v.motor, v.cilindraje, v.licenciaTransito, v.seguroObligatorio, v.vencimientoSeguro, v.seguroResponsabilidad, "
                    + "v.vencimientoResponsabilidad, v.revisionTecnomecanica, v.vencimientoTecnomecanica, v.fotoVehiculo "
                    + "FROM vehiculos v "
                    + "JOIN tiposvehiculo as tV ON (v.idTiposVehiculo=tV.idTiposVehiculo) "
                    + "JOIN marcas as m ON (v.idMarcas=m.idMarcas) "
                    + "JOIN tiposcombustibles as tC ON (v.idTiposCombustibles=tC.idTiposCombustibles) "
                    + "JOIN estadosvehiculo as eV ON (v.idEstadosVehiculo=eV.idEstadosVehiculo) "
                    + "JOIN colorvehiculo as cV ON (v.idColorVehiculo=cV.idColorVehiculo) "
                    + "JOIN empleovehiculo as emV ON (v.idEmpleoVehiculo=emV.idEmpleoVehiculo)"
                    + "WHERE placa=?;");
            stmt.setString(1, placa);
            rs = stmt.executeQuery();
            while (rs.next()) {
                unVehiculo.setPlaca(rs.getString("placa"));
                unVehiculo.setIdTiposVehiculo(rs.getInt("v.idTiposVehiculo"));
                unVehiculo.setDescripcionTipoVehiculo(rs.getString("tV.descripcionTipoVehiculo"));
                unVehiculo.setIdMarcas(rs.getInt("v.idMarcas"));
                unVehiculo.setDescripcionMarcaVehiculo(rs.getString("m.descripcionMarcaVehiculo"));
                unVehiculo.setIdTiposCombustibles(rs.getInt("v.idTiposCombustibles"));
                unVehiculo.setDescripcionTipoCombustible(rs.getString("tC.descripcionTipoCombustible"));
                unVehiculo.setModelo(rs.getInt("v.modelo"));
                unVehiculo.setIdEstadosVehiculo(rs.getInt("v.idEstadosVehiculo"));
                unVehiculo.setDescripcionEstadoVehiculo(rs.getString("eV.descripcionEstadoVehiculo"));
                unVehiculo.setFechaEstado(rs.getString("v.fechaEstado"));
                unVehiculo.setIdColorVehiculo(rs.getInt("v.idColorVehiculo"));
                unVehiculo.setDescripcionColorVehiculo(rs.getString("cV.descripcionColorVehiculo"));
                unVehiculo.setIdEmpleoVehiculo(rs.getInt("v.idEmpleoVehiculo"));
                unVehiculo.setDescripcionEmpleoVehiculo(rs.getString("emV.descripcionEmpleoVehiculo"));
                unVehiculo.setSigla(rs.getString("v.sigla"));
                unVehiculo.setVin(rs.getString("v.vin"));
                unVehiculo.setMotor(rs.getString("v.motor"));
                unVehiculo.setCilindraje(rs.getInt("v.cilindraje"));
                unVehiculo.setLicenciaTransito(rs.getInt("v.licenciaTransito"));
                unVehiculo.setSeguroObligatorio(rs.getInt("v.seguroObligatorio"));
                unVehiculo.setVencimientoSeguro(rs.getString("v.vencimientoSeguro"));
                unVehiculo.setSeguroResponsabilidad(rs.getInt("v.seguroResponsabilidad"));
                unVehiculo.setVencimientoResponsabilidad(rs.getString("v.vencimientoResponsabilidad"));
                unVehiculo.setRevisionTecnomecanica(rs.getInt("v.revisionTecnomecanica"));
                unVehiculo.setVencimientoTecnomecanica(rs.getString("v.vencimientoTecnomecanica"));
                unVehiculo.setFotoVehiculo(rs.getString("v.fotoVehiculo"));
            }
        } catch (SQLException sqle) {
            rta = sqle.getMessage();
        }/* finally {
         if (con != null) {
         try {
         con.close();
         } catch (SQLException e) {
         e.printStackTrace();
         }
         }
         }*/

        return unVehiculo;
    }
    /* public ArrayList<VehiculosDto> ConsultarVehiculo() {
     ArrayList<VehiculosDto> listadoVehiculos = new ArrayList<VehiculosDto>();
     try {
     stmt = con.prepareStatement("SELECT * FROM vehiculos WHERE placa=?");
     rs = stmt.executeQuery();

     while (rs.next()) {
     VehiculosDto unVehiculoNew = new VehiculosDto();
     unVehiculoNew.setPlaca(rs.getString("placa"));
     unVehiculoNew.setIdTiposVehiculo(rs.getInt("tipoVehiculo"));
     unVehiculoNew.setIdMarcas(rs.getInt("marcaVehiculo"));
     unVehiculoNew.setIdTiposCombustibles(rs.getInt("tiposCombustibles"));
     unVehiculoNew.setModelo(rs.getInt("modeloVehiculo"));
     unVehiculoNew.setIdEstadosVehiculo(rs.getInt("estadosVehiculo"));
     unVehiculoNew.setFechaEstado(rs.getString("fechaEstado"));
     unVehiculoNew.setIdColorVehiculo(rs.getInt("colorVehiculo"));
     unVehiculoNew.setIdEmpleoVehiculo(rs.getInt("empleoVehiculo"));
     unVehiculoNew.setSigla(rs.getString("sigla"));
     unVehiculoNew.setVin(rs.getString("vin"));
     unVehiculoNew.setMotor(rs.getString("motor"));
     unVehiculoNew.setCilindraje(rs.getInt("cilindraje"));
     unVehiculoNew.setLicenciaTransito(rs.getInt("licenciaTransito"));
     unVehiculoNew.setSeguroObligatorio(rs.getInt("seguroObligatorio"));
     unVehiculoNew.setVencimientoSeguro(rs.getString("vencimientoSeguro"));
     unVehiculoNew.setSeguroResponsabilidad(rs.getInt("seguroResponsabilidadCivil"));
     unVehiculoNew.setVencimientoResponsabilidad(rs.getString("vencimientoResponsabilidad"));
     unVehiculoNew.setRevisionTecnomecanica(rs.getInt("revisionTecnomecanica"));
     unVehiculoNew.setVencimientoTecnomecanica(rs.getString("vencimientoTecnomecanica"));
     unVehiculoNew.setFotoVehiculo(rs.getString("fotoVehiculo"));

     listadoVehiculos.add(unVehiculoNew);

     }

     } catch (SQLException sqle) {
     }
     return listadoVehiculos;*/

    public String ActualizarVehiculo(VehiculosDto actuVehi) {
        String rta = "";
        int resultado = 0;
        try {
            stmt = con.prepareStatement("UPDATE vehiculos SET idTiposVehiculo=?, idMarcas=?,  idTiposCombustibles=?, modelo=?, "
                    + "idEstadosVehiculo=?, fechaEstado=?, idColorVehiculo=?, idEmpleoVehiculo=?, sigla=?, vin=?, motor=?,"
                    + "cilindraje=?, licenciaTransito=?, seguroObligatorio=?, vencimientoSeguro=?, seguroResponsabilidad=?,"
                    + "vencimientoResponsabilidad=?, revisionTecnomecanica=?, vencimientoTecnomecanica=?, fotoVehiculo=? "
                    + "WHERE placa=?;");
            stmt.setInt(1, actuVehi.getIdTiposVehiculo());
            stmt.setInt(2, actuVehi.getIdMarcas());
            stmt.setInt(3, actuVehi.getIdTiposCombustibles());
            stmt.setInt(4, actuVehi.getModelo());
            stmt.setInt(5, actuVehi.getIdEstadosVehiculo());
            stmt.setString(6, actuVehi.getFechaEstado());
            stmt.setInt(7, actuVehi.getIdColorVehiculo());
            stmt.setInt(8, actuVehi.getIdEmpleoVehiculo());
            stmt.setString(9, actuVehi.getSigla());
            stmt.setString(10, actuVehi.getVin());
            stmt.setString(11, actuVehi.getMotor());
            stmt.setInt(12, actuVehi.getCilindraje());
            stmt.setInt(13, actuVehi.getLicenciaTransito());
            stmt.setInt(14, actuVehi.getSeguroObligatorio());
            stmt.setString(15, actuVehi.getVencimientoSeguro());
            stmt.setInt(16, actuVehi.getSeguroResponsabilidad());
            stmt.setString(17, actuVehi.getVencimientoResponsabilidad());
            stmt.setInt(18, actuVehi.getRevisionTecnomecanica());
            stmt.setString(19, actuVehi.getVencimientoTecnomecanica());
            stmt.setString(20, actuVehi.getFotoVehiculo());
            stmt.setString(21, actuVehi.getPlaca());
            resultado = stmt.executeUpdate();
            if (resultado == 0) {
               rta = "Fallo al actualizar información del vehículo";
            } else {
                rta ="Registro actualizado exitosamente";
            } 
        } catch (SQLException sqle) { 
            rta=sqle.getMessage();
        } /*finally {
         if (con != null) {
         try {
         con.close();
         } catch (SQLException e) {
         e.printStackTrace();
         }
         }
         }*/
        return rta; 
            }
}
