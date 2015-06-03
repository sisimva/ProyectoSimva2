/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

import java.sql.Date;

/**
 *
 * @author andres
 */
public class MantenimientosDto {
    private int idMantenimientos;
    private String placa;
    private int idTipoMantenimiento;
    private Date fechaIngresoMantenimiento;
    private Date fechaSalidaMantenimiento;
    private Date fechaProximoMantenimiento;
    private String observaciones;
    private int CcMantenimiento;

    public int getCcMantenimiento() {
        return CcMantenimiento;
    }

    public void setCcMantenimiento(int numeroDocumento) {
        this.CcMantenimiento = numeroDocumento;
    }

    public MantenimientosDto() {
    }
    
    

    public MantenimientosDto(int idMantenimientos, String placa, int idTipoMantenimiento, Date fechaIngresoMantenimiento, Date fechaSalidaMantenimiento, Date fechaProximoMantenimiento, String observaciones, int CcMantenimiento) {
        this.idMantenimientos = idMantenimientos;
        this.placa = placa;
        this.idTipoMantenimiento = idTipoMantenimiento;
        this.fechaIngresoMantenimiento = fechaIngresoMantenimiento;
        this.fechaSalidaMantenimiento = fechaSalidaMantenimiento;
        this.fechaProximoMantenimiento = fechaProximoMantenimiento;
        this.observaciones = observaciones;
        this.CcMantenimiento = CcMantenimiento;
    }

    public int getIdMantenimientos() {
        return idMantenimientos;
    }

    public void setIdMantenimientos(int idMantenimientos) {
        this.idMantenimientos = idMantenimientos;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public int getIdTipoMantenimiento() {
        return idTipoMantenimiento;
    }

    public void setIdTipoMantenimiento(int idTipoMantenimiento) {
        this.idTipoMantenimiento = idTipoMantenimiento;
    }

    public Date getFechaIngresoMantenimiento() {
        return fechaIngresoMantenimiento;
    }

    public void setFechaIngresoMantenimiento(Date fechaIngresoMantenimiento) {
        this.fechaIngresoMantenimiento = fechaIngresoMantenimiento;
    }

    public Date getFechaSalidaMantenimiento() {
        return fechaSalidaMantenimiento;
    }

    public void setFechaSalidaMantenimiento(Date fechaSalidaMantenimiento) {
        this.fechaSalidaMantenimiento = fechaSalidaMantenimiento;
    }

    public Date getFechaProximoMantenimiento() {
        return fechaProximoMantenimiento;
    }

    public void setFechaProximoMantenimiento(Date fechaProximoMantenimiento) {
        this.fechaProximoMantenimiento = fechaProximoMantenimiento;
    }

    public String getObservaciones() {
        return observaciones;
    }

    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }
    
}
