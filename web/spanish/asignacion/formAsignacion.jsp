<%@page import="DTO.GradosDto"%>
<%@page import="DAO.GradosDao"%>
<%@page import="DTO.EmpleoVehiculoDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.EmpleoVehiculoDao"%>
<html><!-- InstanceBegin template="/Templates/Template.dwt" codeOutsideHTMLIsLocked="false" -->
    <head>
        <meta charset="utf-8">
        <!-- InstanceBeginEditable name="doctitle" -->
        <title>Formulario de Asignaci髇</title>
        <!-- InstanceEndEditable -->
        <!-- InstanceBeginEditable name="head" -->
        <link type="text/css" rel="stylesheet" href="../css/estilos.css">
        <link type="text/css" rel="stylesheet" href="../css/font-awesome.css">
        <link type="text/css" rel="stylesheet" href="../css/bootstrap.css">
        <link type="text/css" rel="stylesheet" href="../css/estilosFormV.css">
        <link rel="shortcut icon" href="../img/logos/logo.ico" type="image/x-icon">
        <script type="text/javascript" src="../js/jquery.js"></script>
        <script type="text/javascript" src="../js/jquery.validate.js"></script>
        <script type="text/javascript" src="../js/additional-methods.js"></script>
        <!-- InstanceEndEditable -->
    </head>
    <header>
        <div id="logo">
            <img src="../img/logos/logo.png" alt="logo" width="110" height="110" />
        </div>	
        <div id="texto">
            <p id="h1"> SIMVA <br />  </p>
            <p id="h2"> Sistema de Informaci髇 de Control y Mantenimiento de Veh韈ulos Automotores </p>
        </div>
        <div id="logo2">
            <img src="../img/logos/logo2.png" alt="logodos" width="110" height="110" />
        </div>
        <!-- InstanceBeginEditable name="user" -->
        <div id="user"> Asig
            <!-- InstanceEndEditable -->
            <span class="fa fa-user fa-3x"> </span>
            <span class="trianguloar"></span>
        </div>
    </header>

    <div id="espacio1"></div>
    <!-- InstanceBeginEditable name="nav" -->

    <nav>
        <a href="../asignacion.jsp" title="Menu principal"><span class="fa fa-home fa-1x"></span>Inicio</a>
        <a href="formConsultaFuncionario.jsp" title="Consulta de Funcionarios"><span class="fa fa-users fa-1x"> Consulta de Funcionarios</a>
        <a href="formConsultaVehiculos.jsp" title="Consulta de veh铆culos"><span class="fa fa-car fa-1x"> Consulta de veh韈ulos</a>
        <a href="formConsultaAsignacion.jsp" title="Consulta asignaci贸n"><span class="fa fa-check-square-o fa-1x"> Consulta asignaci髇</a>
        <a href="formAsignacion.jsp" title="Realizar asignaci贸n"><span class="fa fa-check-square-o fa-1x"> Realizar asignaci髇</a>
        <a href="../index-es.jsp" title="Cerrar secci贸n"><span class="fa fa-sign-out fa-1x"></span>Desconectar</a>
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
                    <li><a href="../Asignacion.jsp">Inicio</a></li>
                    <li class="active">Formulario de Asignacion</li>   
                </ol>
            </div>
            <form class="formularioAsignacionVehiculo" method="post" action="GestionAsignaciones">
                <h3>Formulario Asignaci髇 de Veh韈ulo  <label for="numeroActa">N鷐ero:</label>
                    <input name="numeroActa" id="numeroActa" type="text" placeholder= "Ej. 0001" tabindex="1" required minlength="4" maxlength="10">
                </h3>

                <div class="cajas" id="cajaUno">  
                    <div name="fotoVehiculo"  id="fotoVehiculo"> 
                        <img src="../img/Vehiculo.jpg" alt="foto" width="130px" height="100px">
                    </div>
                    <br>
                    <label for="placa">Placa:</label>
                    <input name="placa" id="placa" type="text" placeholder="Ej. MPW-734" tabindex="2" required minlength="5" maxlength="8"> 

                    <label for="sigla">Sigla:</label>
                    <input name="sigla" id="sigla" type="text" placeholder="Ej. EJC-L13-97-097" tabindex="3" minlength="5" maxlength="12" disabled>

                    <label for="tipoVehiculo">Tipo:</label>
                    <input name="tipoVehiculo" id="tipoVehiculo" type="text" placeholder="Ej. Camiones 2.5 ton T芒ctico" tabindex="4" disabled>


                    <label for="marcaVehiculo">Marca:</label>
                    <input name="marcaVehiculo" id="marcaVehiculo" type="text" placeholder="Toyota" tabindex="5" disabled>

                    <label for="cilindraje">Cilindraje:</label>
                    <input name="cilindraje" id="cilindraje" type="text" placeholder= "Ej. 2300" tabindex="6" disabled>

                    <label for="empleoVehiculo">Empleo:</label>
                    <Input  name="empleoVehiculo" id="empleoVehiculo" tabindex="19" placeholder="Asignado" disabled="">
                </div>
                <div class="cajas" id="cajados">
                    <div name="fotoFuncionario" id="fotoFuncionario"> 
                        <!--<img src="../img/funcionario.jpg" alt="foto" width="120" height="100"-->
                        <img src="../img/funcionario123.jpg" alt="foto" width="130" height="100">
                    </div>
                    <br>
                    <label for="numeroDocumento">C閐ula:</label>
                    <input name="numeroDocumento" id="numeroDocumento" type="text" placeholder= "Ej. 79'399.894" tabindex="13" required maxlength="10">

                    <label for="grado">Grado:</label>
                    <input name="grado"  id="grados" tabindex="3" placeholder= "General"disabled>

                    <label for="campoApellido1">Primer Apellido:</label>
                    <input name="apellido1" id="campoApellido1" type="text" placeholder="Ej. Medina" tabindex="9" required minlength="3" maxlength="10" disabled>

                    <label for="campoApellido2">Segundo Apellido:</label>
                    <input name="apellido2" id="campoApellido2" type="text" placeholder="Ej. Tarazona" tabindex="10" maxlength="10" disabled>

                    <label for="campoNombre1">Primer Nombre:</label>
                    <input name="nombre1" id="campoNombre1" type="text" placeholder="Ej. Jairo" tabindex="11" required maxlength="10" disabled>

                    <label for="campoNombre2">Segundo Nombre:</label>
                    <input name="nombre2" id="campoNombre2" type="text" placeholder="Ej. Ismael" tabindex="12" maxlength="10" disabled>
                </div>

                <div class="cajas" id="cajaTres">

                    <label for="licenciaConduccion">Licencia de conducci髇:</label>
                    <input name="licenciaConduccion" id="licenciaConduccion" type="text" placeholder= "Ej. 1100100096612385" tabindex="15" required minlength="8" maxlength="17" disabled>

                    <label for="categoria">Categor韆:</label>
                    <input name="categoria" id="categoria" type="text" placeholder= "Ej. C1" tabindex="16" required disabled>
                    <br> 

                    <label for="vencimientoCategoria">Fecha Vencimiento</label>
                    <input name="vencimientoCategoria" class="fechas" id="vencimientoCategoria" type="date" tabindex="17" required maxlength="10" disabled>

                    <label for="fechaAsignacion">Fecha Asignaci髇</label>
                    <input name="fechaAsignacion" class="fechas" id="fechaAsignacion" type="date" tabindex="13" required maxlength="10">

                    <label for="fechaDesasignacion">Fecha DesAsignac韔n</label>
                    <input name="fechaDesasignacion" class="fechas" id="fechaDesasignacion" type="date" tabindex="14" required maxlength="10">

                    <label for="novedadesVehiculo">Novedades Veh韈ulo:</label>
                    <input name="novedadesVehiculo" id="novedadesVehiculo" type="text" placeholder="Sin Novedad especial" tabindex="14" required="">

                    <br>
                    <input class="btn btn-primary" type="submit" name="enviar" value="Guardar" >
                </div>
            </form>

    </section>
    <script>
        $().ready(function () {
            $(".formularioAsignacionVehiculo").validate({
                rules: {
                    numeroActa: {
                        required: true,
                        digits: true,
                        minlength: 4,
                        maxlength: 10
                    },
                    placa: {
                        required: true,
                        alphanumeric: true,
                        minlength: 5,
                        maxlength: 8
                    },
                    numeroDocumento: {
                        required: true,
                        digits: true,
                        minlength: 5,
                        maxlength: 10
                    },
                    novedadesVehiculo: {
                        required: true
                    },
                    fechaAsignacion: {
                        required: true
                    },
                    fechaDesasignacion: {
                        required: true
                    }
                },
                messages: {
                    numeroActa: {
                        required: "Campo requerido",
                        digits: "Digite solamente n煤meros",
                        minlength: "Minimo {0} caracteres",
                        maxlength: "Maximo {0} caracteres"
                    },
                    placa: {
                        required: "Campo requerido",
                        alphanumeric: "Digite solamente n煤meros y letras",
                        minlength: "Minimo {0} caracteres",
                        maxlength: "Maximo {0} caracteres"
                    },
                    numeroDocumento: {
                        required: "Campo requerido",
                        digits: "Por favor digite solo numeros",
                        minlength: "M铆nimo {0} caracteres"
                    },
                    novedadesVehiculo: {
                        required: "Campo requerido"
                    },
                    fechaAsignacion: {
                        required: "Campo requerido"
                    },
                    fechaDesasignacion: {
                        required: "Campo requerido"
                    }

                } // Cierre de los mensajes
            }); // Cierre de la funci贸n validate
        }); // Cierre de la funci贸n ready

    </script>

    <!-- InstanceEndEditable -->

    <div id="espacio3"></div>

    <foot>
        <div class="pie">Versi髇 1.0 | COPYRIGHT   &copy;2014 SIMVA | Cont谩ctenos: 3108549716 | E-mail: contactenos@simva.url.ph</div> 
    </foot>

    <div id="espacio4"></div>

    <!-- InstanceEnd --></html>