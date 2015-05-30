/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import DAO.Mantenimiento1DAO;
import DTO.MantenimientosDto;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author andres
 */
public class crearMantenimiento {
    
    public crearMantenimiento() {
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
    public void RegistrarMantenimiento() {
        MantenimientosDto objMante = new MantenimientosDto();
        Mantenimiento1DAO objCreaMant = new Mantenimiento1DAO();
        
        objMante.setIdMantenimientos(14);
        objMante.setFechaIngresoMantenimiento("2014-01-02");
        objMante.setFechaSalidaMantenimiento("2014-01-04");
        objMante.setFechaProximoMantenimiento("2015-01-02");
        objMante.setIdTipoMantenimiento(200);
        objMante.setObservaciones("Ninguna");
        objMante.setPlaca("AST28");
        objMante.setCcMantenimiento(0);
        String resultado = objCreaMant.crearMantenimiento(objMante);
        String resultadoEsperado = "Registro ingresado exitosamente";
        
                assertEquals(resultadoEsperado,resultado);
        
    }
    
    public void EliminarMantenimiento() {
        
    
    }
}
