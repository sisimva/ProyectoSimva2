<%@page import="DAO.FuncionariosDao"%>
<%@page import="DTO.CategoriasDto"%>
<%@page import="DAO.CategoriasDao"%>
<%@page import="DTO.RhDto"%>
<%@page import="DAO.RhDao"%>
<%@page import="DTO.GradosDto"%>
<%@page import="DAO.GradosDao"%>
<%@page import="DTO.CiudadesDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.CiudadesDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DTO.FuncionariosDto"%>
<html><!-- InstanceBegin template="/Templates/Template.dwt" codeOutsideHTMLIsLocked="false" -->
    <head>
        <meta charset="utf-8">
        <!-- InstanceBeginEditable name="doctitle" -->
        <title>Consulta de Funcionario</title>
        <!-- InstanceEndEditable -->
        <!-- InstanceBeginEditable name="head" -->
        <link type="text/css" rel="stylesheet" href="../css/estilos.css">
        <link type="text/css" rel="stylesheet" href="../css/font-awesome.css">
        <link type="text/css" rel="stylesheet" href="../css/bootstrap.css">
        <link rel="shortcut icon" href="../img/logos/logo.ico" type="image/x-icon">
        <script type="text/javascript" src="../js/jquery.js"></script>
        <script type="text/javascript" src="../js/jquery.validate.js"></script>
        <script type="text/javascript" src="../js/additional-methods.js"></script>
        <link type="text/css" rel="stylesheet" href="../cs/estilosFormF.css">
        <!-- InstanceEndEditable -->
    </head>
    <header>
        <div id="logo">
            <img src="../img/logos/logo.png" alt="logo" width="110" height="110" />
        </div>	
        <div id="texto">
            <p id="h1"> SIMVA <br />  </p>
            <p id="h2"> Sistema de Informaci�n de Control y Mantenimiento de Veh�culos Automotores </p>
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
        <a href="formVehiculos.jsp" title="Registro de vehículos"><span class="fa fa-car fa-1x"> Registro de veh�culos</a>
        <a href="formAsignacion.jsp" title="Realizar asignación"><span class="fa fa-check-square-o fa-1x"> Realizar asignaci�n</a>
        <a href="../index-es.html" title="Cerrar sección"><span class="fa fa-sign-out fa-1x"></span>Desconectar</a>
    </nav>
    <!-- InstanceEndEditable -->

    <div id="espacio2"></div>
    <!-- InstanceBeginEditable name="Body" -->
    <body>

        <%
            HttpSession miSession = request.getSession();
            FuncionariosDto ObjDtoFunci = new FuncionariosDto();
            ObjDtoFunci = (FuncionariosDto) miSession.getAttribute("ObjFunci");
        %>

    <section>
        <div id="area">

            <div id="miga">
                <br>
                <ol class="breadcrumb">
                    <li><a href="../Asignacion.jsp">Inicio</a></li>
                    <li class="active">Formulario Resultado Consulta de Funcionario</li>   
                </ol>
            </div>
            <form class="formularioResultadoConsultaFuncionario" method="post" action="..\..\GestionFuncionarios">
                <h3>Resultado Consulta de Funcionario</h3>

                <div class="cajas" id="cajaUno">  
                    <label for="numeroDocumento">Cedula:</label>
                    <input name="numeroDocumento" id="numeroDocumento" type="text" class="inputad"  value='<%=ObjDtoFunci.getNumeroDocumento()%>' >
                    <br>
                    <label for="grado">Grado:</label>
                    <Select name="grado" id="grados" type="text" class="listas"   tabindex="3" required="">
                        <option value="<%= ObjDtoFunci.getIdGrados()%>" ><%=ObjDtoFunci.getDescripcionGrado()%></option>
                        <%
                            GradosDao ObjDaoGra = new GradosDao();
                            ArrayList<GradosDto> listadoGrados = new ArrayList<GradosDto>();
                            listadoGrados = ObjDaoGra.ConsultarGradosTodos();
                            for (int a = 0; a < listadoGrados.size(); a++) {
                        %>
                        <option value="<%= listadoGrados.get(a).getIdGrados()%>">
                            <%= listadoGrados.get(a).getDescripcionGrado()%></option>
                            <%}%>
                    </select>
                    <label for="campoApellido1">Primer Apellido:</label>
                    <input name="apellido1" id="apellido1" type="text"  class="inputad" value='<%=ObjDtoFunci.getApellido1()%>' >
                    <br>
                    <label for="campoApellido2">Segundo Apellido:</label>
                    <input name="apellido2" id="campoApellido2" type="text" class="inputad" value='<%=ObjDtoFunci.getApellido2()%>' >
                    <br>
                    <label for="campoNombre1">Primer Nombre:</label>
                    <input name="nombre1" id="campoNombre1" type="text" class="inputad" value='<%=ObjDtoFunci.getNombre1()%>' >
                    <br>
                    <label for="campoNombre2">Segundo Nombre:</label>
                    <input name="nombre2" id="campoNombre2" type="text" class="inputad" value='<%=ObjDtoFunci.getNombre2()%>' >
                    <br>
                    <label for="campoFechaNacimiento">Fecha Nacimiento</label>
                    <input name="campoFechaNacimiento" id="campoFechaNacimiento" type="date" class="fechas"  value='<%=ObjDtoFunci.getFechaNacimiento()%>' >
                    <br>
                    <label for="campoRh">RH</label>
                    <select name="idRh"  id="idRh" type="text"  class="listas"   tabindex="9" required="" >
                        <option value="<%=ObjDtoFunci.getIdRh()%>" ><%=ObjDtoFunci.getDescripcionRh()%></option>
                        <%  RhDao ObjDaoRh = new RhDao();
                            ArrayList<RhDto> listadoRh = new ArrayList<RhDto>();
                            listadoRh = ObjDaoRh.ConsultarRhTodos();
                            for (int a = 0; a < listadoRh.size(); a++) {
                        %>
                        <option value="<%= listadoRh.get(a).getIdRh()%>">
                            <%= listadoRh.get(a).getDescripcionRh()%></option>
                            <%}%>
                    </select> 
                    <br>
                    <label for="email">Correo electronico:</label>
                    <input name="email" id="email" type="email" class="inputad" value='<%=ObjDtoFunci.getEmail()%>' >
                    <br>
                </div>
                <div class="cajas" id="cajados">
                    <label for="ciudadDocumento">De:</label>
                    <select name="ciudadDocumento" class="listas"  id="ciudadDocumento" tabindex="2" required>
                        <option value="<%=ObjDtoFunci.getIdCiudad()%>"> <%=ObjDtoFunci.getNombreCiudad()%></option>
                        <%  CiudadesDao ObjDaoC = new CiudadesDao();
                            ArrayList<CiudadesDto> listado = new ArrayList<CiudadesDto>();
                            listado = ObjDaoC.ConsultarCiudadesTodas();
                            for (int a = 0; a < listado.size(); a++) {
                        %>
                        <option value="<%= listado.get(a).getIdCiudad()%>">
                            <%= listado.get(a).getNombreCiudad()%></option>
                            <%}%>
                    </select>
                    <br>
                    <label for="telefono">Telefono:</label>
                    <input name="telefono" id="telefono" type="text" class="inputad" value='<%=ObjDtoFunci.getTelefono()%>' >
                    <br>
                    <label for="movil">Celular:</label>
                    <input name="movil" id="movil" type="text" class="inputad" value='<%=ObjDtoFunci.getMovil()%>' >  
                    <br>
                    <label for="indicativo">Indicativo:</label>
                    <input name="indicativo" id="indicativo" type="text" class="inputad" value='<%=ObjDtoFunci.getIndicativo()%>' >
                    <br>
                    <label for="licenciaConduccion">Licencia de conduccion:</label>
                    <input name="licenciaConduccion" id="licenciaConduccion" type="text" class="inputad" value='<%=ObjDtoFunci.getLicenciaConduccion()%>' >
                    <br>
                    <label for="categoria">Categoria</label>
                    <select class="listas" name="categoria" id="categoria" tabindex="16" required>
                        <option value="<%=ObjDtoFunci.getIdCategoria()%>" ><%=ObjDtoFunci.getDescripcionCategoria()%></option>
                       <%  CategoriasDao ObjDaoCate = new CategoriasDao();
                            ArrayList<CategoriasDto> listadoCategorias = new ArrayList<CategoriasDto>();
                            listadoCategorias = ObjDaoCate.ConsultarCategoriasTodas();
                            for (int a = 0; a < listadoCategorias.size(); a++) {
                        %>
                        <option value="<%= listadoCategorias.get(a).getIdCategoria()%>">
                            <%= listadoCategorias.get(a).getDescripcionCategoria()%></option>
                            <%}%>
                    </select>
                    <br>
                    <br>
                    <label for="vencimientoCategoria">Fecha Vencimiento</label>
                    <input name="vencimientoCategoria" id="vencimientoCategoria" type="date"class="fechas"  value='<%=ObjDtoFunci.getVencimientoLicencia()%>' >
                    <br>
                    <label for="fechaAlta">Fecha alta</label>
                    <input  name="fechaAlta" id="fechaAlta" type="date" class="inputad" value='<%=ObjDtoFunci.getFechaAlta()%>' >
                    <br>
                </div>
                <div class="cajas" id="cajaTres">

                    <div name="fotoFuncionario" id="fotoFuncionario"> 
                        <img src="../img/funcionario123.jpg" alt="foto" width="120" height="100">
                        <br>
                        <input class="btn btn-primary" type="submit" name="enviar" value="Consultar Otro">

                        <br>
                        <input class="btn btn-primary" type="submit" name="enviar" value="Actualizar" >

                    </div>

                    <%
                        if (request.getParameter("funci") != null) {
                            out.print("<h2>" + request.getParameter("funci") + "</h2>");
                        }
                    %>
            </form>
    </section>
</section>
<script>
    $().ready(function () {
        $(".formularioRegistroFuncionario").validate({
            rules: {
                grado: {
                    required: true
                },
                apellido1: {
                    lettersonly: true,
                    required: true,
                    minlength: 3,
                    maxlength: 10
                },
                apellido2: {
                    lettersonly: true,
                    minlength: 3,
                    maxlength: 10
                },
                nombre1: {
                    lettersonly: true,
                    required: true,
                    minlength: 3,
                    maxlength: 10
                },
                nombre2: {
                    lettersonly: true,
                    minlength: 3,
                    maxlength: 10
                },
                numeroDocumento: {
                    required: true,
                    digits: true,
                    minlength: 5,
                    maxlength: 10
                },
                ciudadDocumento: {
                    required: true
                },
                campoFechaNacimiento: {
                    required: true
                },
                telefono: {
                    digits: true,
                    required: true,
                    minlength: 7,
                    maxlength: 8
                },
                movil: {
                    digits: true,
                    required: true,
                    minlength: 7,
                    maxlength: 10
                },
                indicativo: {
                    required: true
                },
                licenciaConduccion: {
                    digits: true,
                    required: true,
                    minlength: 8,
                    maxlength: 17
                },
                categoria: {
                    required: true
                },
                vencimientoCategoria: {
                    required: true
                },
                email: {
                    required: true,
                    email: true
                },
                fechaAlta: {
                    required: true
                }
            },
            messages: {
                grado: {
                    required: "Campo requerido"
                },
                apellido1: {
                    required: "Campo requerido",
                    lettersonly: "Por favor Digite solo letras",
                    minlength: "Mínimo {0} caracteres"
                },
                apellido2: {
                    required: "Campo requerido",
                    lettersonly: "Por favor Digite solo letras",
                    minlength: "Mínimo {0} caracteres"
                },
                nombre1: {
                    required: "Campo requerido",
                    lettersonly: "Por favor Digite solo letras",
                    minlength: "Mínimo {0} caracteres"
                },
                nombre2: {
                    required: "Campo requerido",
                    lettersonly: "Por favor Digite solo letras",
                    minlength: "Mínimo {0} caracteres"
                },
                numeroDocumento: {
                    required: "Campo requerido",
                    digits: "Por favor digite solo numeros",
                    minlength: "Mínimo {0} caracteres"
                },
                ciudadDocumento: {
                    required: "Campo requerido"
                },
                campoFechaNacimiento: {
                    required: "Campo requerido"
                },
                telefono: {
                    required: "Campo requerido",
                    digits: "Por favor digite solo numeros",
                    minlength: "Mínimo {0} caracteres",
                    maxlength: "Maximo {0} caracteres"
                },
                movil: {
                    required: "Campo requerido",
                    digits: "Por favor digite solo numeros",
                    minlength: "Mínimo {0} caracteres",
                    maxlength: "Maximo {0} caracteres"
                },
                indicativo: {
                    required: "Campo requerido"
                },
                licenciaConduccion: {
                    required: "Campo requerido",
                    digits: "Por favor digite solo numeros",
                    minlength: "Minimo {0} caracteres",
                    maxlength: "Maximo {0} caracteres"
                },
                categoria: {
                    required: "Campo requerido"
                },
                vencimientoCategoria: {
                    required: "Campo requerido"
                },
                email: {
                    required: "Campo requerido",
                    email: "Digite un correo electronico valido"

                },
                fechaAlta: {
                    required: "Campo requerido"
                }
            } // Cierre de los mensajes
        }); // Cierre de la función validate
    }); // Cierre de la función ready

</script>
<!-- InstanceEndEditable -->

<div id="espacio3"></div>

<foot>
    <div class="pie">Versión 5.0 | COPYRIGHT   &copy;2014 SIMVA | Contáctenos: 3108549716 | E-mail: contactenos@simva.url.ph</div> 
</foot>

<div id="espacio4"></div>

<!-- InstanceEnd --></html>