/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

/**
 *
 * Author : Jairo Medina
 */
public class AsignacionesDto {

    private int idAsignaciones;
    private int numeroDocumento;
    private String placa;
    private String fechaAsignacion;
    private String fechaDesasignacion;
    private String novedadesVehiculos;
    private String sigla;
    private String idTiposVehiculo;
    private String descripcionTipoVehiculo;
    private String idMarcas;
    private String descripcionMarcaVehiculo;

    public String getDescripcionMarcaVehiculo() {
        return descripcionMarcaVehiculo;
    }

    public void setDescripcionMarcaVehiculo(String descripcionMarcaVehiculo) {
        this.descripcionMarcaVehiculo = descripcionMarcaVehiculo;
    }

    public String getIdMarcas() {
        return idMarcas;
    }

    public void setIdMarcas(String idMarcas) {
        this.idMarcas = idMarcas;
    }

    public String getDescripcionTipoVehiculo() {
        return descripcionTipoVehiculo;
    }

    public void setDescripcionTipoVehiculo(String descripcionTipoVehiculo) {
        this.descripcionTipoVehiculo = descripcionTipoVehiculo;
    }

    public String getIdTiposVehiculo() {
        return idTiposVehiculo;
    }

    public void setIdTiposVehiculo(String idTiposVehiculo) {
        this.idTiposVehiculo = idTiposVehiculo;
    }

    public String getSigla() {
        return sigla;
    }

    public void setSigla(String sigla) {
        this.sigla = sigla;
    }

    public AsignacionesDto() {
    }

    public AsignacionesDto(int idAsignaciones, int numeroDocumento, String placa, String fechaAsignacion,  String fechaDesasignacion, String novedadesVehiculos) {
        this.idAsignaciones = idAsignaciones;
        this.numeroDocumento = numeroDocumento;
        this.placa = placa;
        this.fechaAsignacion = fechaAsignacion;
        this.fechaDesasignacion =  fechaDesasignacion;
        this.novedadesVehiculos = novedadesVehiculos;
    }

    public int getIdAsignaciones() {
        return idAsignaciones;
    }

    public void setIdAsignaciones(int idAsignaciones) {
        this.idAsignaciones = idAsignaciones;
    }

    public int getNumeroDocumento() {
        return numeroDocumento;
    }

    public void setNumeroDocumento(int numeroDocumento) {
        this.numeroDocumento = numeroDocumento;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public String getFechaAsignacion() {
        return fechaAsignacion;
    }

    public void setFechaAsignacion(String fechaAsignacion) {
        this.fechaAsignacion = fechaAsignacion;
    }

    public String getFechaDesasignacion() {
        return fechaDesasignacion;
    }

    public void setFechaDesasignacion(String fechaDesasignacion) {
        this.fechaDesasignacion = fechaDesasignacion;
    }

    public String getNovedadesVehiculos() {
        return novedadesVehiculos;
    }

    public void setNovedadesVehiculos(String novedadesVehiculos) {
        this.novedadesVehiculos = novedadesVehiculos;
    }

}
