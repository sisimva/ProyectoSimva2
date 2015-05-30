SELECT	a.idAsignaciones, v.fotoVehiculo, a.placa, v.sigla, v.idTiposVehiculo, tV.descripcionTipoVehiculo, v.idMarcas, m.descripcionMarcaVehiculo, 
		v.cilindraje, v.idEmpleoVehiculo, emV.descripcionEmpleoVehiculo, f.fotoFuncionario, a.numeroDocumento, f.idGrados, g.descripcionGrado, f.apellido1, 
        f.apellido2, f.nombre1, f.nombre2, f.licenciaConduccion, f.idCategoria, c.descripcionCategoria, f.vencimientoLicencia, a.fechaAsignacion, 
        a.fechaDesasignacion, a.novedadesVehiculo
FROM asignaciones as a
JOIN vehiculos as v ON (a.placa = v.placa)
JOIN tiposvehiculo as tV ON (v.idTiposVehiculo = tV.idTiposVehiculo)
JOIN marcas as m ON (v.idMarcas = m.idMarcas)
JOIN empleoVehiculo as emV ON (v.idEmpleoVehiculo = emV.idEmpleoVehiculo)
JOIN funcionarios as f ON (a.numeroDocumento = f.numeroDocumento)
JOIN grados as g ON (f.idGrados = g.idGrados)
JOIN categorias as c ON (f.idCategoria = c.idCategoria)
WHERE a.placa = 'AST28';


