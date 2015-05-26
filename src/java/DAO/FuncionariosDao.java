package DAO;

import DTO.FuncionariosDto;
import Modelo.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Jairo
 */
public class FuncionariosDao {

    Connection con = Conexion.getInstace();
    PreparedStatement stmt = null;
    ResultSet rs = null;

    public String IngresarFuncionario(FuncionariosDto ingFunci) {
        String rta = "";
        try {
            stmt = con.prepareStatement("INSERT INTO  funcionarios (numeroDocumento, idCiudad, "
                    + "idGrados,apellido1, apellido2, nombre1, nombre2, fechaNacimiento, "
                    + "idRh, telefono, movil, indicativo, licenciaConduccion,"
                    + "vencimientoLicencia, idCategoria, fechaAlta, eMail,fotoFuncionario) "
                    + "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            stmt.setInt(1, ingFunci.getNumeroDocumento());
            stmt.setInt(2, ingFunci.getIdCiudad());
            stmt.setInt(3, ingFunci.getIdGrados());
            stmt.setString(4, ingFunci.getApellido1());
            stmt.setString(5, ingFunci.getApellido2());
            stmt.setString(6, ingFunci.getNombre1());
            stmt.setString(7, ingFunci.getNombre2());
            stmt.setString(8, ingFunci.getFechaNacimiento());
            stmt.setInt(9, ingFunci.getIdRh());
            stmt.setString(10, ingFunci.getTelefono());
            stmt.setString(11, ingFunci.getMovil());
            stmt.setString(12, ingFunci.getIndicativo());
            stmt.setString(13, ingFunci.getLicenciaConduccion());
            stmt.setString(14, ingFunci.getVencimientoLicencia());
            stmt.setInt(15, ingFunci.getIdCategoria());
            stmt.setString(16, ingFunci.getFechaAlta());
            stmt.setString(17, ingFunci.getEmail());
            stmt.setString(18, ingFunci.getfotoFuncionario());
            int resultado = stmt.executeUpdate();
            if (resultado == 0) {
                rta = "Fallo el ingreso del funcionario";
                System.out.println("Fallo el ingreso del funcionario");
            } else {
                rta = "Funcionario insertado exitosamente";
                System.out.println("Funcionario insertado exitosamente");
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

    public FuncionariosDto ConsultarFuncionario(int cedula) {
        String rta = "";
        FuncionariosDto unFuncionario = new FuncionariosDto();
        try {
            stmt = con.prepareStatement("SELECT  f.numeroDocumento, f.idCiudad, f.idGrados,f.apellido1, f.apellido2,"
                    + " f.nombre1, f.nombre2, f.fechaNacimiento, f.idRh, f.telefono, f.movil, f.indicativo, f.licenciaConduccion, "
                    + "f.vencimientoLicencia, f.idCategoria, f.fechaAlta, f.eMail, f.fotoFuncionario, c.nombreCiudad, g.descripcionGrado, "
                    + "r.descripcionRh, ct.descripcionCategoria "
                    + "FROM funcionarios f "
                    + "JOIN ciudades c ON (f.idCiudad = c.idCiudad) "
                    + "JOIN grados g ON (f.idGrados = g.idGrados) "
                    + "JOIN rh r ON(f.idRh = r.idRh) "
                    + "JOIN categorias ct ON (f.idCategoria = ct.idCategoria) "
                    + "WHERE numeroDocumento = ?;");
            stmt.setInt(1, cedula);
            rs = stmt.executeQuery();// estaba al inicio de este bl;oque domingo 17052015 22:17
            while (rs.next()) {
                unFuncionario.setNumeroDocumento(rs.getInt("f.numeroDocumento"));
                unFuncionario.setIdCiudad(rs.getInt("idCiudad"));
                unFuncionario.setNombreCiudad(rs.getString("c.nombreCiudad"));
                unFuncionario.setIdGrados(rs.getInt("idGrados"));
                unFuncionario.setDescripcionGrado(rs.getString("g.descripcionGrado"));
                unFuncionario.setApellido1(rs.getString("f.apellido1"));
                unFuncionario.setApellido2(rs.getString("f.apellido2"));
                unFuncionario.setNombre1(rs.getString("f.nombre1"));
                unFuncionario.setNombre2(rs.getString("f.nombre2"));
                unFuncionario.setFechaNacimiento(rs.getString("f.fechaNacimiento"));
                unFuncionario.setIdRh(rs.getInt("f.idRh"));
                unFuncionario.setDescripcionRh(rs.getString("r.descripcionRh"));
                unFuncionario.setTelefono(rs.getString("f.telefono"));
                unFuncionario.setMovil(rs.getString("f.movil"));
                unFuncionario.setIndicativo(rs.getString("f.indicativo"));
                unFuncionario.setLicenciaConduccion(rs.getString("f.licenciaConduccion"));
                unFuncionario.setVencimientoLicencia(rs.getString("f.vencimientoLicencia"));
                unFuncionario.setIdCategoria(rs.getInt("f.idCategoria"));
                unFuncionario.setDescripcionCategoria(rs.getString("ct.descripcionCategoria"));
                unFuncionario.setFechaAlta(rs.getString("f.fechaAlta"));
                unFuncionario.setEmail(rs.getString("f.eMail"));
                unFuncionario.setfotoFuncionario(rs.getString("f.fotoFuncionario"));
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

        return unFuncionario;

    }

    public String ActualizarFuncionario(FuncionariosDto actuFunci) {
        String rta = "";
        int resultado = 0;
        try {
            stmt = con.prepareStatement("UPDATE funcionarios SET  idCiudad=?, "
                    + "idGrados=?, apellido1=?, apellido2=?, nombre1=?, nombre2=?, fechaNacimiento=?, "
                    + "idRh=?, telefono=?, movil=?, indicativo=?, licenciaConduccion=?,"
                    + "vencimientoLicencia=?, idCategoria=?, fechaAlta=?, eMail=?,fotoFuncionario=? WHERE numeroDocumento=?;");
            stmt.setInt(1, actuFunci.getIdCiudad());
            stmt.setInt(2, actuFunci.getIdGrados());
            stmt.setString(3, actuFunci.getApellido1());
            stmt.setString(4, actuFunci.getApellido2());
            stmt.setString(5, actuFunci.getNombre1());
            stmt.setString(6, actuFunci.getNombre2());
            stmt.setString(7, actuFunci.getFechaNacimiento());
            stmt.setInt(8, actuFunci.getIdRh());
            stmt.setString(9, actuFunci.getTelefono());
            stmt.setString(10, actuFunci.getMovil());
            stmt.setString(11, actuFunci.getIndicativo());
            stmt.setString(12, actuFunci.getLicenciaConduccion());
            stmt.setString(13, actuFunci.getVencimientoLicencia());
            stmt.setInt(14, actuFunci.getIdCategoria());
            stmt.setString(15, actuFunci.getFechaAlta());
            stmt.setString(16, actuFunci.getEmail());
            stmt.setString(17, actuFunci.getfotoFuncionario());
            stmt.setInt(18, actuFunci.getNumeroDocumento());
            resultado = stmt.executeUpdate();
            if (resultado == 0) {
                rta = "Fallo al actualizar el funcionario";
                //System.out.println("Fallo al actualizar el funcionario");
            } else {
                rta = "Funcionario actualizado exitosamente";
                //System.out.println("Funcionario actualizado exitosamente");
            }
        } catch (SQLException sqle) {
            rta = sqle.getMessage();
        }/*finally {
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
