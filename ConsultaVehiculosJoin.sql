SELECT	v.placa, v.idTiposVehiculo, tV.descripcionTipoVehiculo, v.idMarcas, m.descripcionMarcaVehiculo, v.idTiposCombustibles, tC.descripcionTipoCombustible,
		v.modelo, v.idEstadosVehiculo, eV.descripcionEstadoVehiculo, v.fechaEstado, v.idColorVehiculo, cV.descripcionColorVehiculo,
		v.idEmpleoVehiculo, emV.descripcionEmpleoVehiculo, v.sigla, v.vin, v.motor, v.cilindraje, v.licenciaTransito, v.seguroObligatorio, v.vencimientoSeguro, 
        v.seguroResponsabilidad, v.vencimientoResponsabilidad, v.revisionTecnomecanica, v.vencimientoTecnomecanica, v.fotoVehiculo
FROM vehiculos v
JOIN tiposvehiculo as tV ON (v.idTiposVehiculo=tV.idTiposVehiculo)
JOIN marcas as m ON (v.idMarcas=m.idMarcas)
JOIN tiposcombustibles as tC ON (v.idTiposCombustibles=tC.idTiposCombustibles)
JOIN estadosvehiculo as eV ON (v.idEstadosVehiculo=eV.idEstadosVehiculo)
JOIN colorvehiculo as cV ON (v.idColorVehiculo=cV.idColorVehiculo)
JOIN empleovehiculo as emV ON (v.idEmpleoVehiculo=emV.idEmpleoVehiculo)
WHERE v.placa= 'AAA000';
