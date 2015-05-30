<<<<<<< HEAD
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.CiudadesDto;
import DTO.FuncionarioRolDto;
import DTO.MantenimientosDto;
import Modelo.Conexion;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author andres
 */
public class Mantenimiento1DAO {

    Connection con = Conexion.getInstace();
    PreparedStatement stmt = null;
    ResultSet rs = null;

    public String crearMantenimiento(MantenimientosDto mantenimiento) {
        String rta = "";
        try {
            stmt = con.prepareStatement("INSERT INTO Mantenimientos VALUES(?, ?, ?, ?, ?, ?, ?, ?);");
            
            stmt.setInt(1, mantenimiento.getIdMantenimientos());
            stmt.setString(2, mantenimiento.getPlaca());
            stmt.setInt(3, mantenimiento.getIdTipoMantenimiento());
            stmt.setString(4, mantenimiento.getFechaIngresoMantenimiento());
            stmt.setString(5, mantenimiento.getFechaSalidaMantenimiento());
            stmt.setString(6, mantenimiento.getFechaProximoMantenimiento());
            stmt.setString(7, mantenimiento.getObservaciones());
            stmt.setInt(8, mantenimiento.getCcMantenimiento());
            
            
            int resultado = stmt.executeUpdate();
            
            if (resultado == 0) {
                //resul=false;
                rta = "Fallo el ingreso del registro";
            } else {
                rta = "Registro ingresado exitosamente";
            }
        } catch (SQLException sqle) {
            rta = sqle.getMessage();
        }
        return rta;
    }

    public int obtenerUltimoMantenimiento() {

        int ultimoValor = 0;

        try {

            stmt = con.prepareStatement("select max(idMantenimientos) as ultimo from Mantenimientos;	");
            rs = stmt.executeQuery();

            while (rs.next()) {
                ultimoValor = rs.getInt("ultimo");
            }
            System.out.printf("Valor obtenido de la columna id Mantenimiento : " + ultimoValor);

        } catch (SQLException sqle) {

            sqle.printStackTrace();

        }

        return ultimoValor;
    }
    
    
    public ArrayList<MantenimientosDto> historialMantenimientos() {
        
          ArrayList<MantenimientosDto> listado=new ArrayList<MantenimientosDto>();
            try 
        {
            stmt = con.prepareStatement("SELECT * FROM mantenimientos ");
            rs = stmt.executeQuery();
            
            while (rs.next())
                
            {
                MantenimientosDto newMantenimiento =new MantenimientosDto();
                
                newMantenimiento.setIdMantenimientos(rs.getInt("idMantenimiento"));
                newMantenimiento.setPlaca(rs.getString("placa"));
                newMantenimiento.setIdTipoMantenimiento(rs.getInt("estado"));
                newMantenimiento.setFechaIngresoMantenimiento(rs.getString("campoFechaI"));
                newMantenimiento.setFechaSalidaMantenimiento(rs.getString("FechaF"));
                newMantenimiento.setFechaProximoMantenimiento(rs.getString("campoFechaP"));
                newMantenimiento.setObservaciones(rs.getString("observaciones"));
                listado.add(newMantenimiento);
            }
                 
        }
        catch (SQLException sqle){ 
              sqle.printStackTrace();
            }
              return listado;
         }
    
    public ArrayList<MantenimientosDto> consultarHistorialPorFechas(String fecha1, String fecha2) {
        
          ArrayList<MantenimientosDto> listado=new ArrayList<MantenimientosDto>();
            try 
        {
            stmt = con.prepareStatement("select * from mantenimientos where fechaIngresoMantenimiento between ? and ?; ");
            stmt.setString(1, fecha1);
            stmt.setString(2, fecha2);
            rs = stmt.executeQuery();
            
            while (rs.next())
                
            {
                MantenimientosDto newMantenimiento =new MantenimientosDto();
                
                newMantenimiento.setIdMantenimientos(rs.getInt("idMantenimiento"));
                newMantenimiento.setPlaca(rs.getString("placa"));
                newMantenimiento.setIdTipoMantenimiento(rs.getInt("estado"));
                newMantenimiento.setFechaIngresoMantenimiento(rs.getString("campoFechaI"));
                newMantenimiento.setFechaSalidaMantenimiento(rs.getString("FechaF"));
                newMantenimiento.setFechaProximoMantenimiento(rs.getString("campoFechaP"));
                newMantenimiento.setObservaciones(rs.getString("observaciones"));
                listado.add(newMantenimiento);
            }
                 
        }
        catch (SQLException sqle){ 
              sqle.printStackTrace();
            }
              return listado;
         }
     
    public String EliminarMantenimiento (String placa)
    {
      
       String rta="";
        try 
        {
            stmt = con.prepareStatement("DELETE FROM mantenimientos WHERE placa = ?");
            stmt.setString(1,placa);
            
            
                int resultado = stmt.executeUpdate();
                    if(resultado==0)
                    {
                        //resul=false;
                        rta="Fallo al eliminar";
                    }
                    else
                        {
                         rta="Registro eliminado Exitosamente";
                        }   
        }
        catch (SQLException sqle) 
            { 
                rta=sqle.getMessage();
            } 
        
    
    return rta;
    }
 public String ActualizarMantenimiento(MantenimientosDto man)
       
    {
       //boolean resul = false;
       String rta="";
        try 
        {
            stmt = con.prepareStatement("UPDATE mantenimientos SET  idMantenimeintos=?, placa=?, idTipoMantenimiento=?,  fechaIngresoMantenimiento=?, fechaSalidaMantenimiento=?, fechaProximoMantenimiento=?, observaciones=?, CcMantenimeintos=?  WHERE  placa=?;");
            
            
            stmt.setInt(1,man.getIdMantenimientos());
            stmt.setString(2,man.getPlaca());
            stmt.setInt(3,man.getIdMantenimientos());
            stmt.setString(4,man.getFechaIngresoMantenimiento());
            stmt.setString(5,man.getFechaSalidaMantenimiento());
            stmt.setString(5,man.getFechaProximoMantenimiento());
            stmt.setString(5,man.getObservaciones());
            stmt.setInt(5,man.getCcMantenimiento());

             int resultado = stmt.executeUpdate();
                    if(resultado==0)
                    {
                        
                        rta="Fallo al actualizar";
                    }
                    else
                        {
                         rta="Registro actualizado Exitosamente";
                        }   
        }
        catch (SQLException sqle) 
            { 
                rta=sqle.getMessage();
            }
    return rta;
    }
}
=======
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.CiudadesDto;
import DTO.MantenimientosDto;
import Modelo.Conexion;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author andres
 */
public class Mantenimiento1DAO {

    Connection con = Conexion.getInstace();
    PreparedStatement stmt = null;
    ResultSet rs = null;

    public String crearMantenimiento(MantenimientosDto mantenimiento) {
        String rta = "";
        try {
            stmt = con.prepareStatement("INSERT INTO Mantenimientos VALUES(?, ?, ?, ?, ?, ?, ?, ?);");

            stmt.setInt(1, mantenimiento.getIdMantenimientos());
            stmt.setString(2, mantenimiento.getPlaca());
            stmt.setInt(3, mantenimiento.getIdTipoMantenimiento());
            stmt.setString(4, mantenimiento.getFechaIngresoMantenimiento());
            stmt.setString(5, mantenimiento.getFechaSalidaMantenimiento());
            stmt.setString(6, mantenimiento.getFechaProximoMantenimiento());
            stmt.setString(7, mantenimiento.getObservaciones());
            stmt.setInt(8, mantenimiento.getCcMantenimiento());

            int resultado = stmt.executeUpdate();

            if (resultado == 0) {
                //resul=false;
                rta = "Fallo el ingreso del registro";
            } else {
                rta = "Registro ingresado exitosamente";
            }
        } catch (SQLException sqle) {
            rta = sqle.getMessage();
        }
        return rta;
    }

    public int obtenerUltimoMantenimiento() {

        int ultimoValor = 0;

        try {

            stmt = con.prepareStatement("select max(idMantenimientos) as ultimo from Mantenimientos;	");
            rs = stmt.executeQuery();

            while (rs.next()) {
                ultimoValor = rs.getInt("ultimo");
            }
            System.out.printf("Valor obtenido de la columna id Mantenimiento : " + ultimoValor);

        } catch (SQLException sqle) {

            sqle.printStackTrace();

        }

        return ultimoValor;
    }

    public ArrayList<MantenimientosDto> historialMantenimientos() {

        ArrayList<MantenimientosDto> listado = new ArrayList<MantenimientosDto>();
        try {
            stmt = con.prepareStatement("SELECT * FROM mantenimientos ");
            rs = stmt.executeQuery();

            while (rs.next()) {
                MantenimientosDto newMantenimiento = new MantenimientosDto();

                newMantenimiento.setIdMantenimientos(rs.getInt("idMantenimiento"));
                newMantenimiento.setPlaca(rs.getString("placa"));
                newMantenimiento.setIdTipoMantenimiento(rs.getInt("estado"));
                newMantenimiento.setFechaIngresoMantenimiento(rs.getString("campoFechaI"));
                newMantenimiento.setFechaSalidaMantenimiento(rs.getString("FechaF"));
                newMantenimiento.setFechaProximoMantenimiento(rs.getString("campoFechaP"));
                newMantenimiento.setObservaciones(rs.getString("observaciones"));
                listado.add(newMantenimiento);
            }

        } catch (SQLException sqle) {
            sqle.printStackTrace();
        }
        return listado;
    }

    public ArrayList<MantenimientosDto> consultarHistorialPorFechas(Date fecha1, Date fecha2) {

        ArrayList<MantenimientosDto> listado = new ArrayList<MantenimientosDto>();
        try {
            stmt = con.prepareStatement("select * from mantenimientos where fechaIngresoMantenimiento between ? and ?; ");
            stmt.setDate(1, fecha1);
            stmt.setDate(2, fecha2);
            rs = stmt.executeQuery();

            while (rs.next()) {
                MantenimientosDto newMantenimiento = new MantenimientosDto();

                newMantenimiento.setIdMantenimientos(rs.getInt("idMantenimiento"));
                newMantenimiento.setPlaca(rs.getString("placa"));
                newMantenimiento.setIdTipoMantenimiento(rs.getInt("estado"));
                newMantenimiento.setFechaIngresoMantenimiento(rs.getString("campoFechaI"));
                newMantenimiento.setFechaSalidaMantenimiento(rs.getString("FechaF"));
                newMantenimiento.setFechaProximoMantenimiento(rs.getString("campoFechaP"));
                newMantenimiento.setObservaciones(rs.getString("observaciones"));
                listado.add(newMantenimiento);
            }

        } catch (SQLException sqle) {
            sqle.printStackTrace();
        }
        return listado;
    }

    public String EliminarMantenimiento(int idMantenimiento) {

        String rta = "";
        try {
            stmt = con.prepareStatement("DELETE FROM mantenimientos WHERE idMantenimeintos = ?");
            stmt.setInt(1, idMantenimiento);

            int resultado = stmt.executeUpdate();
            if (resultado == 0) {
                rta = "Fallo al eliminar";
            } else {
                rta = "Registro eliminado Exitosamente";
            }
        } catch (SQLException sqle) {
            rta = sqle.getMessage();
        }

        return rta;
    }

    public String ActualizarMantenimiento(MantenimientosDto man) {
        //boolean resul = false;
        String rta = "";
        try {
            stmt = con.prepareStatement("UPDATE mantenimientos SET  placa=?, idTipoMantenimiento=?,  fechaIngresoMantenimiento=?, fechaSalidaMantenimiento=?, fechaProximoMantenimiento=?, observaciones=?, CcMantenimeintos=?  WHERE  idMantenimeintos=?;");

            stmt.setString(1, man.getPlaca());
            stmt.setInt(2, man.getIdTipoMantenimiento());
            stmt.setString(3, man.getFechaIngresoMantenimiento());
            stmt.setString(4, man.getFechaSalidaMantenimiento());
            stmt.setString(5, man.getFechaProximoMantenimiento());
            stmt.setString(6, man.getObservaciones());
            stmt.setInt(7, man.getCcMantenimiento());
            stmt.setInt(8, man.getIdMantenimientos());

            int resultado = stmt.executeUpdate();
            if (resultado == 0) {

                rta = "Fallo al actualizar";
            } else {
                rta = "Registro actualizado Exitosamente";
            }
        } catch (SQLException sqle) {
            rta = sqle.getMessage();
        }
        return rta;
    }
}
>>>>>>> origin/master
