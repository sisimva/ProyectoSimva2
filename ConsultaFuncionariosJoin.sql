SELECT  f.numeroDocumento, f.idCiudad, f.idGrados,f.apellido1, f.apellido2, f.nombre1, f.nombre2, f.fechaNacimiento, f.idRh, f.telefono, f.movil, f.indicativo, 
		f.licenciaConduccion, f.vencimientoLicencia, f.idCategoria, f.fechaAlta, f.eMail,f.fotoFuncionario, c.nombreCiudad, g.descripcionGrado, r.descripcionRh,
        ct.descripcionCategoria
FROM funcionarios f
JOIN ciudades c ON (f.idCiudad = c.idCiudad)
JOIN grados g ON (f.idGrados = g.idGrados)
JOIN rh r ON (f.idRh = r.idRh)
JOIN categorias ct ON (f.idCategoria = ct.idCategoria)
WHERE numeroDocumento = 79399894;