SELECT  numeroDocumento, funcionarios.idCiudad, idGrados,apellido1, apellido2, nombre1, nombre2, fechaNacimiento, idRh, telefono, movil, indicativo, 
		licenciaConduccion, vencimientoLicencia, idCategoria, fechaAlta, eMail,fotoFuncionario, ciudades.nombreCiudad
FROM funcionarios, ciudades
where numeroDocumento = 79399894 and funcionarios.idCiudad = ciudades.idCiudad;