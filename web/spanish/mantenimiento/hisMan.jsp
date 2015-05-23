<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="DAO.Mantenimiento1DAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DTO.MantenimientosDto"%>
<html><!-- InstanceBegin template="/Templates/Template.dwt" codeOutsideHTMLIsLocked="false" -->
    <head>
    	<meta charset="utf-8">
    	<!-- InstanceBeginEditable name="doctitle" -->
    	<title>SIMVA</title>
    	<!-- InstanceEndEditable -->
    	<link type="text/css" rel="stylesheet" href="../css/estilos.css">
    	<link type="text/css" rel="stylesheet" href="../css/font-awesome.css">
    	<link type="text/css" rel="stylesheet" href="../css/bootstrap.css">
    	<link rel="shortcut icon" href="../img/logos/logo.ico" type="image/x-icon">
    	<script type="text/javascript" src="../js/jquery.js"></script>
    	<script type="text/javascript" src="../js/jquery.validate.js"></script>
    	<script type="text/javascript" src="../js/additional-methods.js"></script>
    	<!-- InstanceBeginEditable name="head" -->
        <link type="text/css" rel="stylesheet" href="../css/stiloshisMan.css">
    	<!-- InstanceEndEditable -->
    </head>
    <header>
    	<div id="logo">
        	<img src="../img/logos/logo.png" alt="logo" width="110" height="110" />
    	</div>	
        <div id="texto">
        	<p id="h1"> SIMVA <br />  </p>
        	<p id="h2"> Sistema de Informacion de Control y Mantenimiento de Vehiculos Automotores </p>
    	</div>
    	<div id="logo2">
    		<img src="../img/logos/logo2.png" alt="logodos" width="110" height="110" />
    	</div>
        <!-- InstanceBeginEditable name="user" -->
        <div id="user"> Mant
        <!-- InstanceEndEditable -->
            <span class="fa fa-user fa-3x"> </span>
            <span class="trianguloar"></span>
        </div>
    </header>

    <div id="espacio1"></div>
<!-- InstanceBeginEditable name="nav" -->
    	
    <nav>   
        <a href="../mantenimiento.html"><span class="fa fa-home fa-1x"></span>Inicio</a>
        <a href="consulMant.jsp" title="Consultar Fichas de Mantenimientos"><span class="fa fa-search fa-1x"></span>Consultar Ficha de Mant.</a>
        <a href="crearMant.jsp" title="Editar Fichas de Mantenimientos"><span class="fa fa-wrench fa-1x"></span>Editar Ficha de Mant.</a>
        <a href="hisMan.jsp" title="Consultar Historial de Mantenimientos"><span class="fa fa-calendar fa-1x"></span>Consultar Historial de Mant.</a>
        <a href="../index-es.html" title="Cerrar sección"><span class="fa fa-sign-out fa-1x"></span>Desconectar</a>
    </nav>
<!-- InstanceEndEditable -->

    <div id="espacio2"></div>
<!-- InstanceBeginEditable name="Body" -->
    <body>
        <section>
    		<div id="area">

                    <div id="miga">
                    <br>
                    <ol class="breadcrumb">
                    <li><a href="../mantenimiento.html">Inicio</a></li>
                    <li class="active">Historial de Mantenimiento</li>   
                    </ol>
                    </div>
     <br>
<h3> HISTORIAL MANTENIMIENTO AUTOMOTRIZ PM-13</h3>

<div id="foto">
<img src="../img/man2.jpg"  width="130" height="130" />
</div>


<form action="../../HistorialMantenimiento" id="historialMantenimiento">
<br>
<br>
<div id="bloqueConsulta">
   
    
    <label for="fechaInicio">Desde:</label>
    <input class="fecha" name="fechaInicio" id="campoFechaI"  required type="date" tabindex="1"/>
    <label for="FechaFinal">Hasta:</label>
    <input class="fecha" name="FechaFinal" id="campoFechaI"  required type="date" tabindex="2"/>
    <button class="btn  btn-primary" id="botonConsulta" type="submit" name="btn" tabindex="3" value="Consultar">Consultar</button>
</div>   
<%
    
     
    MantenimientosDto objDto = new MantenimientosDto();
    Mantenimiento1DAO objDao = new Mantenimiento1DAO ();
    
    ArrayList<MantenimientosDto> listado = new ArrayList<MantenimientosDto>();
    listado = objDao.consultarHistorialPorFechas(request.getParameter("fechaInicio"),request.getParameter("FechaFinal"));

%>

<table border="2">
   
    <thead>
        <tr>
            <th>Mantenimiento</th>
            <th>Placa</th>
            <th>Tipo</th>
            <th>Fecha Ingreso</th>
            <th>Fecha Salida</th>
            <th>Fecha proximo</th>
            <th>Observaciones</th>
            <th>Eleminar</th>
            <th>Actualizar</th>
        </tr>
    </thead>
    <tbody>
        
        <%
    
    
        
        for (int a = 0; a < listado.size();a++){
        out.print("<tr><td>"+listado.get(a).getIdMantenimientos() + "</td>");
        }
    
        %>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>



<div id="botones">
<div id="actualizar">
    <button class="btn btn-primary" type="submit" tabindex="11">Actualizar</button>
</div>

<br>

<div id="nuevo">
    <button class="btn btn-primary" type="submit" tabindex="12">Nuevo</button>
</div>
<br>
<div id="salir">
    <button class="btn btn-primary" type="submit" tabindex="12">Salir</button>
</div>

</div>

</form> 
            </div>
        </section> 
  
  <script>

		$().ready(function() {
		
		$("#historialMantenimiento").validate({//abre validete
		rules:{//abre rules
			placa:{//abre campo
				required: true,
				minlength: 6,
				maxlength: 10,
				alphanumeric: true
				},//cierra campo
			cedula:{//abre campo
				required: true,
				minlength: 6,
				maxlength: 10,
				},//cierra campo
			persona:{//abre campo
				required: true,
				minlength: 5,
				maxlength: 40,
				lettersonly: true,
				},//cierre campo
			Mantenimiento:{
				required: true,
				digits:true,
				minlength: 3,
				maxlength: 5,
			},
			tipo:{
				required:
				true,
			},
			FechaI:{
				required: true,
			},
			Grado:{
				required: true,
			},
			FechaF:{
				required: true,
			},
		},//cierra rules 
		messages:{// abre mensajes
			placa:{//abre campos
				required:"Campo Requerido",
				minlength:"Minimo {0} Caracteres",
				maxlength:"Maximo {0} Caracteres",
				alphanumeric:"Debe ser Alfanumerico",
				},//cierra campo
			cedula:{//abre campos
				required: "Campo Requerido",
				minlength: "Minimo {0} Caracteres",
				maxlength: "Maximo {0} Caracteres",
				},	//cierra campo
			persona:{//abre campo
				required: "Campo Requerido",
				minlength: "Minimo {0} Caracteres",
				maxlength: "Maximo {0} Caracteres",
				lettersonly: "Solo Letras",
				},//cierre campo
			Mantenimiento:{
				required: "Campo requerido",
				digits:"Solo Numeros",
				minlength: "Minimo {0} Caracteres",
				maxlength: "Maximo {0} Caracteres",
			},
			tipo:{
				required:"Seleccione un Tipo",
			},
			FechaI:{
				required: "Campo Requerido",
			},
			Grado:{
				required: "Campo Requerido",
			},
			FechaF:{
				required: "Campo Requerido",
			},		
			
		}//cierra mensajes
		
	});	 //cierra validete
	}); // cierra funcion
</script>
  
    </body>
        <!-- InstanceEndEditable -->

	<div id="espacio3"></div>

    <foot>
	   <div class="pie">Versión 1.0 | COPYRIGHT   &copy;2014 SIMVA | Contáctenos: 3108549716 | E-mail: contactenos@simva.url.ph</div> 
    </foot>

	<div id="espacio4"></div>

<!-- InstanceEnd --></html>