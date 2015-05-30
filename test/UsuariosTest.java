/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import DAO.UsuariosDao;
import DTO.FuncionarioRolDto;
import java.util.ArrayList;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Administrador
 */
public class UsuariosTest {

    public UsuariosTest() {
    }

    @BeforeClass
    public static void setUpClass() {
    }

    @AfterClass
    public static void tearDownClass() {
    }

    @Before
    public void setUp() {
    }

    @After
    public void tearDown() {
    }

    // TODO add test methods here.
    // The methods must be annotated with annotation @Test. For example:
    //
    @Test
    public void Insertar() {

        FuncionarioRolDto objDto = new FuncionarioRolDto();
        UsuariosDao objDao = new UsuariosDao();

       
        objDto.setIdRol(200);
        objDto.setNumeroDocumento(103895051);
        objDto.setUsuarioLogin("prueba");
        objDto.setContraseña("Prueba123");
        objDto.setFechaCreacion("2015-01-01");
        
        String resultadoEsperado = "Registro ingresado exitosamente";
        String resultado = objDao.IngresarUsuario(objDto);
        
        assertEquals(resultadoEsperado, resultado);

    }
    
    @Test
    public void Actualizar(){
        
        String resultadoEsperado ="Registro actualizado Exitosamente";
        
        FuncionarioRolDto objDto = new FuncionarioRolDto();
        UsuariosDao objDao = new UsuariosDao();
        
        objDto.setIdRol(200);
        objDto.setNumeroDocumento(1632546);
        objDto.setUsuarioLogin("prueba");
        objDto.setContraseña("Prueba123");
        objDto.setFechaCreacion("2015-01-01");

        String resultado = objDao.Actualizarcata(objDto);
        assertEquals(resultadoEsperado, resultado);
    }
    
    @Test
    public void Eliminar(){
        
        String resultadoEsperado ="Registro eliminado Exitosamente";
        
        FuncionarioRolDto objDto = new FuncionarioRolDto();
        UsuariosDao objDao = new UsuariosDao();
              
        objDto.setNumeroDocumento(103895051);
        int Cedula = objDto.getNumeroDocumento();
      
        String resultado = objDao.Eliminar(Cedula);
        assertEquals(resultadoEsperado, resultado);
    }
    
    
    @Test
    public void ConsultarTodos() {
        
        ArrayList<FuncionarioRolDto> listado=new ArrayList<FuncionarioRolDto>();
        FuncionarioRolDto Obj1 =new FuncionarioRolDto();
        
        Obj1.setIdFuncionarioRol(2);
        Obj1.setIdRol(400);
        Obj1.setNumeroDocumento(1030635486);
        Obj1.setUsuarioLogin("daristizaval");
        Obj1.setContraseña("12345678");
        Obj1.setFechaCreacion("2014-05-12");             
        
        listado.add(Obj1);
         
   ArrayList<FuncionarioRolDto> listado1=new ArrayList<FuncionarioRolDto>();
   UsuariosDao Obj2 = new UsuariosDao();
   listado1 = Obj2.ConsultarTodos(); 
   
      assertEquals(listado1.get(1).getNumeroDocumento(), listado.get(0).getNumeroDocumento());
    }
}
