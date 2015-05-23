/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import DAO.Ciudades1Dao;
import DTO.CiudadesDto;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Diego
 */
public class Test1 {
    
    public Test1() {
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
     public void ingresar() {
     
         CiudadesDto ciudadesDto = new CiudadesDto(11,"Ludwing");
         Ciudades1Dao ciudadesDao = new Ciudades1Dao();
         String resultado = ciudadesDao.IngresarCiudad(ciudadesDto);
         String resultadoEsperado ="Registro ingresado exitosamente";
         assertEquals(resultado,resultadoEsperado);
     }
}
