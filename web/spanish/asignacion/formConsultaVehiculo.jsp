<%-- 
    Document   : formConsultaVehiculos
    Created on : 18-Abr-2015, 19:24:41
    @author Jairo
--%>
<%@page import="DTO.VehiculosDto"%>
<%@page import="DAO.ConsultarFuncionarioDao"%>
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
        <title>Consulta de Veh韈ulo</title>
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
            <p id="h2"> Sistema de Informaci髇 de Control y Mantenimiento de Veh韈ulos Automotores </p>
        </div>
        <div id="logo2">
            <img src="../img/logos/logo2.png" alt="logodos" width="110" height="110" />
        </div>
        <!-- InstanceBeginEditable name="user" -->
        <div id="user" title="Esta conectado como Asignaci髇"> Asig
            <!-- InstanceEndEditable -->
            <span class="fa fa-user fa-3x"> </span>
            <span class="trianguloar"></span>
        </div>
    </header>
    <div id="espacio1"></div>
    <!-- InstanceBeginEditable name="nav" -->

    <nav>
        <a href="../asignacion.html" title="Menu principal"><span class="fa fa-home fa-1x"></span>Inicio</a>
        <a href="formFuncionario.jsp" title="Registro de Funcionarios"><span class="fa fa-users fa-1x"> Registro de Funcionarios</a>
        <a href="formVehiculos.jsp" title="Registro de veh铆culos"><span class="fa fa-car fa-1x"> Registro de veh韈ulos</a>
        <a href="formAsignacion.jsp" title="Realizar asignaci贸n"><span class="fa fa-check-square-o fa-1x"> Realizar asignaci髇</a>
        <a href="../index-es.html" title="Cerrar secci贸n"><span class="fa fa-sign-out fa-1x"></span>Desconectar</a>
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
                        <li><a href="../Asignacion.html">Inicio</a></li>
                        <li class="active">Formulario Consulta de Veh韈ulo</li>   
                    </ol>
                </div>

                <form class="formularioConsultaVehiculos" method="post" action="../../GestionVehiculos">
                    <h3>Formulario Consulta de Veh韈ulo</h3>

                    <div class="cajas" id="cajaUno">  

                        <label for="placa">Digite la placa del veh韈ulo:</label>
                        <input name="placa" id="placa" class="inputad"  type="text" placeholder= "Ej. MPW734" tabindex="1" minlength="6" required maxlength="6" value=""  pattern="[a-zA-Z0-9]" title="Digite solamente letras y n鷐eros"><br><br>
                        <input class="btn btn-primary" type="submit" id="buscarPlaca" name="enviar" value="Consultar">
                        <br>
                    </div>
                </form>
        </section>
        <script>
            $().ready(function () {
                $(".formularioConsultaVehiculos").validate({
                    rules: {
                        placa: {
                            required: true,
                            minlength: 5,
                            maxlength: 10
                        }
                    },
                    messages: {
                        placa: {
                            required: "Campo requerido",
                            minlength: "Minimo {0} caracteres",
                            maxlength: "Maximo {0} caracteres"
                        }
                    } // Cierre de los mensajes
                }); // Cierre de la funci贸n validate
            }); // Cierre de la funci贸n ready

        </script>
        <!-- InstanceEndEditable -->

        <div id="espacio3"></div>

    <foot>
        <div class="pie">Versi贸n 5.0 | COPYRIGHT   &copy;2014 SIMVA | Cont谩ctenos: 3108549716 | E-mail: contactenos@simva.url.ph</div> 
    </foot>

    <div id="espacio4"></div>

    <!-- InstanceEnd --></html>