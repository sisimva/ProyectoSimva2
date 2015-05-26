<%-- 
    Document   : formResultadoConsultaVehiculo
    Created on : 24-may-2015, 20:13:09
    Author     : Jairo
--%>

<%@page import="DTO.VehiculosDto"%>
<%@page import="DTO.EstadosVehiculoDto"%>
<%@page import="DAO.EstadosVehiculoDao"%>
<%@page import="DTO.EmpleoVehiculoDto"%>
<%@page import="DAO.EmpleoVehiculoDao"%>
<%@page import="DTO.TiposCombustiblesDto"%>
<%@page import="DAO.TiposCombustiblesDao"%>
<%@page import="DTO.ColorVehiculoDto"%>
<%@page import="DAO.ColorVehiculoDao"%>
<%@page import="DTO.MarcasDto"%>
<%@page import="DAO.MarcasDao"%>
<%@page import="DTO.TiposVehiculoDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.TiposVehiculoDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <!-- InstanceBegin template="/Templates/Template.dwt" codeOutsideHTMLIsLocked="false" -->
    <head>
        <meta charset="utf-8">
        <!-- InstanceBeginEditable name="doctitle" -->
        <title>Consulta de Vehiculo</title>
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
            <p id="h2"> Sistema de Informacion de Control y Mantenimiento de Vehiculos Automotores </p>
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
        <a href="formConsultaVehiculo.jsp" title="Consulta de vehÃ­culos"><span class="fa fa-car fa-1x"> Consulta de vehículos</a>
        <a href="formAsignacion.jsp" title="Realizar asignaciÃ³n"><span class="fa fa-check-square-o fa-1x"> Realizar asignación</a>
        <a href="../index-es.html" title="Cerrar secciÃ³n"><span class="fa fa-sign-out fa-1x"></span>Desconectar</a>
    </nav>
    <!-- InstanceEndEditable -->

    <div id="espacio2"></div>
    <!-- InstanceBeginEditable name="Body" -->
    <body>
        <%
            HttpSession miSession = request.getSession();
            VehiculosDto ObjDtoVehi = new VehiculosDto();
            ObjDtoVehi = (VehiculosDto) miSession.getAttribute("ObjVehi");
        %>

    <section>
        <div id="area">
            <div id="miga">
                <br>
                <ol class="breadcrumb">
                    <li><a href="../Asignacion.jsp">Inicio</a></li>
                    <li class="active">Formulario Resultado Consulta de Vehículos</li>   
                </ol>
            </div>

            <form class="formularioResultadoConsultaVehiculos" method="post" action="..\..\GestionVehiculos">

                <h3>Resultado Consulta de Vehículos</h3>
                <div class="cajas" id="cajaUno">      
                    <label for="placa">Placa:</label>
                    <input name="placa" id="placa" type="text"  value='<%=ObjDtoVehi.getPlaca()%>'> 

                    <label for="sigla">Sigla:</label>
                    <input name="sigla" id="sigla" type="text" class="inputad" value='<%=ObjDtoVehi.getSigla()%>'>

                    <label for="tipoVehiculo">Tipo:</label>
                    <select name="tipoVehiculo" class="listas" id="tipoVehiculo" tabindex="3">
                        <option value="<%=ObjDtoVehi.getIdTiposVehiculo()%>"><%=ObjDtoVehi.getDescripcionTipoVehiculo()%></option >
                        <%
                            TiposVehiculoDao ObjDaoTive = new TiposVehiculoDao();
                            ArrayList<TiposVehiculoDto> listadoTiposVehiculo = new ArrayList<TiposVehiculoDto>();
                            listadoTiposVehiculo = ObjDaoTive.ConsultarTiposVehiculoTodos();
                            for (int a = 0; a < listadoTiposVehiculo.size(); a++) {
                        %>
                        <option value="<%= listadoTiposVehiculo.get(a).getIdTiposVehiculo()%>">
                            <%= listadoTiposVehiculo.get(a).getDescripcionTipoVehiculo()%></option>
                            <%}%>
                    </select>
                    <label for="marcaVehiculo">Marca:</label>
                    <select name="marcaVehiculo" class="listas"  id="marcaVehiculo" tabindex="4" required>
                        <option value="<%=ObjDtoVehi.getIdMarcas()%>"><%=ObjDtoVehi.getDescripcionMarcaVehiculo()%></option>
                        <%
                            MarcasDao ObjDaoMar = new MarcasDao();
                            ArrayList<MarcasDto> listadoMarcas = new ArrayList<MarcasDto>();
                            listadoMarcas = ObjDaoMar.ConsultarMarcasTodas();
                            for (int a = 0; a < listadoMarcas.size(); a++) {
                        %>
                        <option value="<%= listadoMarcas.get(a).getIdMarcas()%>">
                            <%= listadoMarcas.get(a).getDescripcionMarcaVehiculo()%></option>
                            <%}%>
                    </select> 
                    <label for="modeloVehiculo">Modelo:</label>
                    <input name="modeloVehiculo" id="modeloVehiculo" type="text" tabindex="5" value="<%=ObjDtoVehi.getModelo()%>" required>
                    <label for="colorVehiculo">Color:</label>
                    <select name="colorVehiculo" id="colorVehiculo" type="text" class="listas" tabindex="6" required>
                        <option value="<%=ObjDtoVehi.getIdColorVehiculo()%>"><%=ObjDtoVehi.getDescripcionColorVehiculo()%></option> 
                        <%
                            ColorVehiculoDao ObjDaoCol = new ColorVehiculoDao();
                            ArrayList<ColorVehiculoDto> listadoColorVehiculos = new ArrayList<ColorVehiculoDto>();
                            listadoColorVehiculos = ObjDaoCol.ConsultarColorVehiculosTodos();
                            for (int a = 0; a < listadoColorVehiculos.size(); a++) {
                        %>
                        <option value="<%= listadoColorVehiculos.get(a).getIdColorVehiculo()%>">
                            <%= listadoColorVehiculos.get(a).getDescripcionColorVehiculo()%></option>
                            <%}%>
                    </select> 
                    <label for="vin">VIN:</label>
                    <input name="vin" id="vin" type="text" tabindex="7" required value="<%=ObjDtoVehi.getVin()%>">
                    <label for="motor">Motor:</label>
                    <input name="motor" id="motor" type="text" tabindex="8" required minlength="10" maxlength="18" value="<%=ObjDtoVehi.getMotor()%>">
                </div>
                <div class="cajas" id="cajados">
                    <label for="combustible">Combustible:</label>
                    <select name="tiposCombustibles" id="combustible"   class="listas"   tabindex="10" required>
                        <option value="<%=ObjDtoVehi.getIdTiposCombustibles()%>"><%=ObjDtoVehi.getDescripcionTipoCombustible()%></option>
                        <%
                            TiposCombustiblesDao ObjDaoTico = new TiposCombustiblesDao();
                            ArrayList<TiposCombustiblesDto> listadoTiposCombustibles = new ArrayList<TiposCombustiblesDto>();
                            listadoTiposCombustibles = ObjDaoTico.ConsultarTiposCombustiblesTodos();
                            for (int a = 0; a < listadoTiposCombustibles.size(); a++) {
                        %>
                        <option value="<%= listadoTiposCombustibles.get(a).getIdTiposCombustibles()%>">
                            <%= listadoTiposCombustibles.get(a).getDescripcionTipoCombustible()%></option>
                            <%}%>
                    </select> 
                    <label for="cilindraje">Cilindraje:</label>
                    <input name="cilindraje" id="cilindraje" type="text" placeholder= "Ej. 2300" tabindex="11" required minlength="5" maxlength="10" value="<%=ObjDtoVehi.getCilindraje()%>">
                    <label for="licenciaTransito">Licencia de Transito:</label>
                    <input name="licenciaTransito" id="licenciaTransito" type="text" placeholder= "Ej. 10004280106" tabindex="12" required minlength="5" maxlength="10" value="<%=ObjDtoVehi.getLicenciaTransito()%>">
                    <label for="seguroObligatorio">Seguro Obligatorio:</label>
                    <input name="seguroObligatorio" id="seguroObligatorio" type="text" placeholder= "Ej. 10004280106" tabindex="13" required minlength="5" maxlength="10" value="<%=ObjDtoVehi.getSeguroObligatorio()%>">
                    <label for="vencimientoSeguro">Fecha de Vencimiento</label>
                    <input name="vencimientoSeguro" class="fechas" id="vencimientoSeguro" type="date" tabindex="14" required value="<%=ObjDtoVehi.getVencimientoSeguro()%>">
                    <label for="seguroResponsabilidadCivil">Seguro de Responsabilidad Civil:</label>
                    <input name="seguroResponsabilidadCivil" id="seguroResponsabilidadCivil" type="text" placeholder= "Ej. 10004280106" tabindex="15" required minlength="5" maxlength="10" value="<%=ObjDtoVehi.getSeguroResponsabilidad()%>">
                    <label for="vencimientoResponsabiliad">Fecha de Vencimiento</label>
                    <input name="vencimientoResponsabilidad" class="fechas" id="vencimientoResponsabiliad" type="date" tabindex="16" required value="<%=ObjDtoVehi.getVencimientoResponsabilidad()%>">
                </div>
                <div class="cajas" id="cajaTres">
                    <div name="fotoVehiculo"  id="fotoVehiculo"> 
                        <img src="../img/Vehiculo.jpg" alt="foto" width="200px" height="120px">
                    </div>

                    <label for="revisionTecnomecanica">Revision Tecnomecanica:</label>
                    <input name="revisionTecnomecanica" id="revisionTecnomecanica" type="text" placeholder= "Ej. 1100100096612385" tabindex="17" required minlength="5"  maxlength="10" value="<%=ObjDtoVehi.getRevisionTecnomecanica()%>">
                    <label for="vencimientoTecnomecanica">Fecha Vencimiento</label>
                    <input name="vencimientoTecnomecanica" class="fechas" id="vencimientoTecnomecanica" type="date" tabindex="18" required value="<%=ObjDtoVehi.getVencimientoTecnomecanica()%>">
                    <label for="empleoVehiculo">Empleo:</label>
                    <select name="empleoVehiculo" id="empleoVehiculo" class="listas" tabindex="19" required>
                        <option value="<%=ObjDtoVehi.getIdEmpleoVehiculo()%>"><%=ObjDtoVehi.getDescripcionEmpleoVehiculo()%></option>
                        <%
                            EmpleoVehiculoDao ObjDaoEmp = new EmpleoVehiculoDao();
                            ArrayList<EmpleoVehiculoDto> listadoEmpleoVehiculo = new ArrayList<EmpleoVehiculoDto>();
                            listadoEmpleoVehiculo = ObjDaoEmp.ConsultarEmpleoVehiculoTodos();
                            for (int a = 0; a < listadoEmpleoVehiculo.size(); a++) {
                        %>
                        <option value="<%= listadoEmpleoVehiculo.get(a).getIdEmpleoVehiculo()%>">
                            <%= listadoEmpleoVehiculo.get(a).getDescripcionEmpleVehiculo()%></option>
                            <%}%>
                    </select> 
                    <label for="estadosVehiculo">Estado:</label>
                    <select class="listas" name="estadosVehiculo" id="estadoVehiculo"  tabindex="20" required>
                        <option value="<%=ObjDtoVehi.getIdEstadosVehiculo()%>"><%=ObjDtoVehi.getDescripcionEstadoVehiculo()%></option>
                        <%
                            EstadosVehiculoDao ObjDaoEst = new EstadosVehiculoDao();
                            ArrayList<EstadosVehiculoDto> listadoEstadosVehiculo = new ArrayList<EstadosVehiculoDto>();
                            listadoEstadosVehiculo = ObjDaoEst.ConsultarEstadosVehiculoTodos();
                            for (int a = 0; a < listadoEstadosVehiculo.size(); a++) {
                        %>
                        <option value="<%= listadoEstadosVehiculo.get(a).getIdEstadosVehiculo()%>">
                            <%= listadoEstadosVehiculo.get(a).getDescripcionEstadoVehiculo()%></option>
                            <%}%>
                    </select> 
                    <label for="fechaEstado">Fecha del Estado</label>
                    <input name="fechaEstado" class="fechas" id="fechaEstado" type="date" tabindex="21" required value="<%=ObjDtoVehi.getFechaEstado()%>">
                    <br>

                    <input class="btn btn-primary" type="submit" name="enviar" value="Consultar Otro">
                    <br>
                    <input class="btn btn-primary" type="submit" name="enviar" value="Actualizar" >
                    <%
                        if (request.getParameter("funci") != null) {
                            out.print("<h2>" + request.getParameter("funci") + "</h2>");
                        }
                    %>

                </div>
            </form>
    </section>
</section>
<script>
    $().ready(function () {
        $(".formularioRegistroVehiculos").validate({
            rules: {
                placa: {
                    required: true,
                    minlength: 6,
                    maxlength: 6
                },
                sigla: {
                    minlength: 6,
                    maxlength: 14
                },
                tipoVehiculo: {
                    required: true
                },
                marcaVehiculo: {
                    required: true
                },
                modeloVehiculo: {
                    digits: true,
                    minlength: 4,
                    maxlength: 6
                },
                colorVehiculo: {
                    required: true
                },
                vin: {
                    required: true,
                    minlength: 10,
                    maxlength: 18
                },
                motor: {
                    required: true,
                    minlength: 10,
                    maxlength: 18
                },
                tiposCombustibles: {
                    required: true
                },
                cilindraje: {
                    digits: true,
                    minlength: 5,
                    maxlength: 10,
                    required: true
                },
                licenciaTransito: {
                    digits: true,
                    required: true,
                    minlength: 5,
                    maxlength: 10
                },
                seguroObligatorio: {
                    digits: true,
                    required: true,
                    minlength: 5,
                    maxlength: 10
                },
                vencimientoSeguro: {
                    required: true
                },
                seguroResponsabilidadCivil: {
                    digits: true,
                    required: true,
                    minlength: 5,
                    maxlength: 10
                },
                vencimientoResponsabilidad: {
                    required: true
                },
                revisionTecnomecanica: {
                    digits: true,
                    required: true,
                    minlength: 5,
                    maxlength: 10
                },
                vencimientoTecnomecanica: {
                    required: true
                },
                empleoVehiculo: {
                    required: true
                },
                estadosVehiculo: {
                    required: true
                },
                fechaEstado: {
                    required: true
                }
            },
            messages: {
                placa: {
                    required: "Campo requerido",
                    minlength: "Minimo {0} caracteres",
                    maxlength: "Maximo {0} caracteres"
                },
                sigla: {
                    minlength: "Minimo {0} caracteres",
                    maxlength: "Maximo {0} caracteres"
                },
                tipoVehiculo: {
                    required: "Campo requerido"
                },
                marcaVehiculo: {
                    required: "Campo requerido"
                },
                modeloVehiculo: {
                    digits: "Por favor digite solo numeros",
                    minlength: "Minimo {0} caracteres",
                    maxlength: "Maximo {0} caracteres"
                },
                colorVehiculo: {
                    required: "Campo requerido"
                },
                vin: {
                    required: "Campo requerido",
                    minlength: "Minimo {0} caracteres",
                    maxlength: "Maximo {0} caracteres"
                },
                motor: {
                    required: "Campo requerido",
                    minlength: "Minimo {0} caracteres",
                    maxlength: "Maximo {0} caracteres"
                },
                tiposCombustibles: {
                    required: "Campo requerido"
                },
                cilindraje: {
                    digits: "Por favor digite solo numeros",
                    required: "Campo requerido",
                    minlength: "Minimo {0} caracteres",
                    maxlength: "Maximo {0} caracteres"
                },
                licenciaTransito: {
                    digits: "Por favor digite solo numeros",
                    required: "Campo requerido",
                    minlength: "Minimo {0} caracteres",
                    maxlength: "Maximo {0} caracteres"
                },
                seguroObligatorio: {
                    digits: "Por favor digite solo numeros",
                    required: "Campo requerido",
                    minlength: "Minimo {0} caracteres",
                    maxlength: "Maximo {0} caracteres"
                },
                vencimientoSeguro: {
                    required: "Campo requerido"
                },
                seguroResponsabilidadCivil: {
                    digits: "Por favor digite solo numeros",
                    required: "Campo requerido",
                    minlength: "Minimo {0} caracteres",
                    maxlength: "Maximo {0} caracteres"
                },
                vencimientoResponsabilidad: {
                    required: "Campo requerido"
                },
                revisionTecnomecanica: {
                    digits: "Por favor digite solo numeros",
                    required: "Campo requerido",
                    minlength: "Minimo {0} caracteres",
                    maxlength: "Maximo {0} caracteres"
                },
                vencimientoTecnomecanica: {
                    required: "Campo requerido"
                },
                empleoVehiculo: {
                    required: "Campo requerido"
                },
                estadosVehiculo: {
                    required: "Campo requerido"
                },
                fechaEstado: {
                    required: "Campo requerido"
                }
            }
        });
    });
</script>

<!-- InstanceEndEditable -->

<div id="espacio3"></div>

<foot>
    <div class="pie">VersiÃ³n 1.0 | COPYRIGHT   &copy;2014 SIMVA | ContÃ¡ctenos: 3108549716 | E-mail: contactenos@simva.url.ph</div> 
</foot>

<div id="espacio4"></div>

<!-- InstanceEnd -->
</html>
