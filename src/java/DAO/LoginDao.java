/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.FuncionarioRolDto;
import Modelo.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Diego
 */
public class LoginDao {

      Connection con = Conexion.getInstace();    
        PreparedStatement stmt =null;
        ResultSet rs =null ;
        FuncionarioRolDto unusuarionew = new FuncionarioRolDto();
            
        
        public FuncionarioRolDto Login(FuncionarioRolDto inusu){
  
            boolean existeUsuario = false;
            try 
        {
            stmt = con.prepareStatement("SELECT * from funcionariorol where usuarioLogin=? && contrasenia=?;");
            stmt.setString(1, inusu.getUsuarioLogin());
            stmt.setString(2, inusu.getContraseña());
            
            rs = stmt.executeQuery();

            if (rs.next())
            {
                unusuarionew.setIdFuncionarioRol(rs.getInt("idFuncionarioRol"));
                unusuarionew.setIdRol(rs.getInt("idRol"));
                unusuarionew.setNumeroDocumento(rs.getInt("numeroDocumento"));
                unusuarionew.setUsuarioLogin(rs.getString("usuarioLogin"));
                unusuarionew.setContraseña(rs.getString("contraseña"));
                unusuarionew.setFechaCreacion(rs.getString("fechaCreacion"));
                
            }else {
                unusuarionew.setUsuarioLogin("No en contrado");
            }
            
        }catch (SQLException sqle){ 
              
        } 
           return unusuarionew;     
        } 


public String[]  Correo( long Documento){
             String [] DatosC = new String[1];
  
         DatosC [0] = "No Existe";
            try 
        {
            stmt = con.prepareStatement("select eMail from funcionarios where numeroDocumento=?;");
         //   stmt = con.prepareStatement("select funcionarios.eMail, funcionariorol.usuarioLogin, funcionariorol.contraseña from funcionarios, funcionariorol where funcionarios.numeroDocumento=? and funcionariorol.numeroDocumento=?;");
            stmt.setLong(1, Documento);
            
            
            rs = stmt.executeQuery();

            if (rs.next())
            {
                DatosC [0] = rs.getString("eMail");

            }
            
        }catch (SQLException sqle){ 
              
        } 
           return DatosC;     
        } 
         
         public String[]  Usuario( long Documento){
             String [] DatosU = new String[2];
  
         DatosU [0] = "No Existe";
            try 
        {
            stmt = con.prepareStatement("select usuarioLogin, contrasenia from funcionariorol where numeroDocumento=?;");
         //   stmt = con.prepareStatement("select funcionarios.eMail, funcionariorol.usuarioLogin, funcionariorol.contraseña from funcionarios, funcionariorol where funcionarios.numeroDocumento=? and funcionariorol.numeroDocumento=?;");
            stmt.setLong(1, Documento);
           
            
            rs = stmt.executeQuery();

            if (rs.next())
            {
                DatosU [0] = rs.getString("usuarioLogin");
                DatosU [1] = rs.getString("contrasenia");
            }
            
        }catch (SQLException sqle){ 
              
        } 
           return DatosU;     
        } 
}



         

            
          //  pst.setString(1, usuario);
          //  pst.setString(2, password);
            
            
           // rs = pst.executeQuery();
 
//            String nombres="";
//            String apellidos="";
//            while(rs.next()){
//                //En caso de existir una coincidencia
//                existeUsuario = true;
//                //Y reemplazamos los atributos de dicho Usuario
//                nombres = rs.getString("nombres");
//                apellidos = rs.getString("apellidos");
//            }
// 
//            if(existeUsuario){
//                //Para el usuario existente:
//                //Reemplazamos atributos que luego obtendremos desde las páginas .jsp
//                request.setAttribute("nombres", nombres);
//                request.setAttribute("apellidos", apellidos);
//                //Mandamos estos atributos a la página bienvenida.jsp
//                request.getRequestDispatcher("/bienvenida.jsp").forward(request, response);
//            }else{
//                //De lo contrario vamos a la página errorLogin.jsp
//                request.getRequestDispatcher("/errorLogin.jsp").forward(request, response);
//            }
//            out.close();
//        } catch (SQLException ex) {
//        out.println(ex.toString());
//        }
//    }
// 
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }
