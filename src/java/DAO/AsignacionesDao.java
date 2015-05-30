/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.AsignacionesDto;
import Modelo.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Jairo Medina
 */
public class AsignacionesDao {

    Connection con = Conexion.getInstace();
    PreparedStatement stmt = null;
    ResultSet rs = null;

    public String IngresarAsignacion(AsignacionesDto ingAsig) {
        String rta = "";
        try {
            stmt = con.prepareStatement("INSERT INTO  asignaciones (idAsignaciones, numeroDocumento, "
                    + "placa, fechaAsignacion, fechaDesasignacion, novedadesVehiculo) "
                    + "VALUES(?,?,?,?,?,?)");
            //+ "VALUES(?,?,?,?,null,?,null,null,?,?,?,null,null,null,null,?,null,null)");
            //("call spInsertarFuncionarioPrueba");
            stmt.setInt(1, ingAsig.getIdAsignaciones());
            stmt.setInt(2, ingAsig.getNumeroDocumento());
            stmt.setString(3, ingAsig.getPlaca());
            stmt.setString(4, ingAsig.getFechaAsignacion());
            stmt.setString(5, ingAsig.getFechaDesasignacion());
            stmt.setString(6, ingAsig.getNovedadesVehiculos());

            int resultado = stmt.executeUpdate();
            if (resultado == 0) {
                rta = "Fallo el ingreso de la asignacion";
                System.out.println("Fallo el ingreso de la asignacion");
            } else {
                rta = "Asignacion  insertada exitosamente";
                System.out.println("Asignacion  insertada exitosamente");
            }
        } catch (SQLException sqle) {
            rta = sqle.getMessage();
        }
        return rta;

    }

    public AsignacionesDto ConsultarAsignacion(String placa) {
        String rta = "";
        AsignacionesDto unaAsignacion = new AsignacionesDto();
        try {
            stmt = con.prepareStatement("SELECT a.idAsignaciones, v.fotoVehiculo, a.placa, v.sigla, v.idTiposVehiculo, tV.descripcionTipoVehiculo, "
                    + "v.idMarcas, m.descripcionMarcaVehiculo, v.cilindraje, v.idEmpleoVehiculo, emV.descripcionEmpleoVehiculo, f.fotoFuncionario,"
                    + "a.numeroDocumento, f.idGrados, g.descripcionGrado, f.apellido1, f.apellido2, f.nombre1, f.nombre2, f.licenciaConduccion, "
                    + "f.idCategoria, c.descripcionCategoria, f.vencimientoLicencia, a.fechaAsignacion, a.fechaDesasignacion, a.novedadesVehiculo "
                    + "FROM asignaciones as a "
                    + "JOIN vehiculos as v ON (a.placa = v.placa)"
                    + "JOIN tiposvehiculo as tV ON (v.idTiposVehiculo = tV.idTiposVehiculo)"
                    + "JOIN marcas as m ON (v.idMarcas = m.idMarcas)"
                    + "JOIN empleoVehiculo as emV ON (v.idEmpleoVehiculo = emV.idEmpleoVehiculo)"
                    + "JOIN funcionarios as f ON (a.numeroDocumento = f.numeroDocumento)"
                    + "JOIN grados as g ON (f.idGrados = g.idGrados)"
                    + "JOIN categorias as c ON (f.idCategoria = c.idCategoria)"
                    + "WHERE a.placa=?;");
            stmt.setString(1, placa);
            rs = stmt.executeQuery();
            while (rs.next()) {
                unaAsignacion.setIdAsignaciones(rs.getInt("a.idAsignaciones"));
                unaAsignacion.setFotoVehiculo(rs.getString("v.fotoVehiculo"));
                unaAsignacion.setPlaca(rs.getString("a.placa"));
                unaAsignacion.setSigla(rs.getString("v.sigla"));
                unaAsignacion.setIdTiposVehiculo(rs.getInt("v.idTiposVehiculo"));
                unaAsignacion.setDescripcionTipoVehiculo(rs.getString("tV.descripcionTipoVehiculo"));
                unaAsignacion.setIdMarcas(rs.getInt("v.idMarcas"));
                unaAsignacion.setDescripcionMarcaVehiculo("m.descripcionMarcaVehiculo");
                unaAsignacion.setCilindraje(rs.getInt("v.cilindraje"));
                unaAsignacion.setIdEmpleoVehiculo(rs.getInt("v.idEmpleoVehiculo"));
                unaAsignacion.setDescripcionEmpleoVehiculo(rs.getString("emV.descripcionEmpleoVehiculo"));
                unaAsignacion.setFotoFuncionario(rs.getString("f.fotoFuncionario,"));
                unaAsignacion.setNumeroDocumento(rs.getInt("a.numeroDocumento"));
                unaAsignacion.setIdGrados(rs.getInt("f.idGrados"));
                unaAsignacion.setDescripcionGrado(rs.getString("g.descripcionGrado"));
                unaAsignacion.setApellido1(rs.getString(" f.apellido1"));
                unaAsignacion.setApellido2(rs.getString("f.apellido2"));
                unaAsignacion.setNombre1(rs.getString("f.nombre1"));
                unaAsignacion.setNombre2(rs.getString("f.nombre2"));
                unaAsignacion.setLicenciaConduccion(rs.getString("f.licenciaConduccion"));
                unaAsignacion.setIdCategoria(rs.getInt("f.idCategoria"));
                unaAsignacion.setDescripcionCategoria(rs.getString("c.descripcionCategoria"));
                unaAsignacion.setVencimientoLicencia(rs.getString("f.vencimientoLicencia"));
                unaAsignacion.setFechaAsignacion(rs.getString("a.fechaAsignacion"));
                unaAsignacion.setFechaDesasignacion(rs.getString("a.fechaDesasignacion"));
                unaAsignacion.setNovedadesVehiculos(rs.getString("a.novedadesVehiculo"));
            }
        } catch (SQLException sqle) {
            rta = sqle.getMessage();
        }/*finally{
         if(con!=null){
         try{
         con.close();
         }catch(SQLException e){
         e.printStackTrace();
         }
         }
         }*/


        return unaAsignacion;
    }
}
