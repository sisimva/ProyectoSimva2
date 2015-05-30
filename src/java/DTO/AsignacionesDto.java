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
    private int  idTiposVehiculo;
    private String descripcionTipoVehiculo;
    private int idMarcas;
    private String descripcionMarcaVehiculo;
    private int cilindraje;
    private int idEmpleoVehiculo;
    private String descripcionEmpleoVehiculo;
    private int idGrados;
    private String descripcionGrado;
    private String  apellido1;
    private String apellido2;
    private String nombre1;
    private String nombre2;
    private String licenciaConduccion;
    private int idCategoria;
    private String descripcionCategoria;
    private String vencimientoLicencia;
    private String fotoVehiculo;
    private String fotoFuncionario;

    public String getFotoFuncionario() {
        return fotoFuncionario;
    }

    public void setFotoFuncionario(String fotoFuncionario) {
        this.fotoFuncionario = fotoFuncionario;
    }

    public String getFotoVehiculo() {
        return fotoVehiculo;
    }

    public void setFotoVehiculo(String fotoVehiculo) {
        this.fotoVehiculo = fotoVehiculo;
    }

    public String getVencimientoLicencia() {
        return vencimientoLicencia;
    }

    public void setVencimientoLicencia(String vencimientoLicencia) {
        this.vencimientoLicencia = vencimientoLicencia;
    }

    public String getDescripcionCategoria() {
        return descripcionCategoria;
    }

    public void setDescripcionCategoria(String descripcionCategoria) {
        this.descripcionCategoria = descripcionCategoria;
    }

    public int getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

    public String getLicenciaConduccion() {
        return licenciaConduccion;
    }

    public void setLicenciaConduccion(String licenciaConduccion) {
        this.licenciaConduccion = licenciaConduccion;
    }

    public String getNombre2() {
        return nombre2;
    }

    public void setNombre2(String nombre2) {
        this.nombre2 = nombre2;
    }

    public String getNombre1() {
        return nombre1;
    }

    public void setNombre1(String nombre1) {
        this.nombre1 = nombre1;
    }

    public String getApellido2() {
        return apellido2;
    }

    public void setApellido2(String apellido2) {
        this.apellido2 = apellido2;
    }

    public String getApellido1() {
        return apellido1;
    }

    public void setApellido1(String apellido1) {
        this.apellido1 = apellido1;
    }

    public String getDescripcionGrado() {
        return descripcionGrado;
    }

    public void setDescripcionGrado(String descripcionGrado) {
        this.descripcionGrado = descripcionGrado;
    }
    

    public int getIdGrados() {
        return idGrados;
    }

    public void setIdGrados(int idGrados) {
        this.idGrados = idGrados;
    }

    public String getDescripcionEmpleoVehiculo() {
        return descripcionEmpleoVehiculo;
    }

    public void setDescripcionEmpleoVehiculo(String descripcionEmpleoVehiculo) {
        this.descripcionEmpleoVehiculo = descripcionEmpleoVehiculo;
    }



    public int getIdEmpleoVehiculo() {
        return idEmpleoVehiculo;
    }

    public void setIdEmpleoVehiculo(int idEmpleoVehiculo) {
        this.idEmpleoVehiculo = idEmpleoVehiculo;
    }

    public int getCilindraje() {
        return cilindraje;
    }

    public void setCilindraje(int cilindraje) {
        this.cilindraje = cilindraje;
    }

  
    public String getDescripcionMarcaVehiculo() {
        return descripcionMarcaVehiculo;
    }

    public void setDescripcionMarcaVehiculo(String descripcionMarcaVehiculo) {
        this.descripcionMarcaVehiculo = descripcionMarcaVehiculo;
    }


    public String getDescripcionTipoVehiculo() {
        return descripcionTipoVehiculo;
    }

    public void setDescripcionTipoVehiculo(String descripcionTipoVehiculo) {
        this.descripcionTipoVehiculo = descripcionTipoVehiculo;
    }

    public int getIdMarcas() {
        return idMarcas;
    }

    public void setIdMarcas(int idMarcas) {
        this.idMarcas = idMarcas;
    }



    public String getSigla() {
        return sigla;
    }

    public void setSigla(String sigla) {
        this.sigla = sigla;
    }

    public int getIdTiposVehiculo() {
        return idTiposVehiculo;
    }

    public void setIdTiposVehiculo(int idTiposVehiculo) {
        this.idTiposVehiculo = idTiposVehiculo;
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
