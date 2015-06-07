<%-- 
    Document   : formFuncionarioNoExiste
    Created on : 02-jun-2015, 18:23:30
    Author     : Jairo Medina
--%>

<%@page import="DAO.FuncionariosDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DTO.FuncionariosDto"%>
<html><!-- InstanceBegin template="/Templates/Template.dwt" codeOutsideHTMLIsLocked="false" -->
    <head>
        <meta charset="utf-8">
        <!-- InstanceBeginEditable name="doctitle" -->
        <title>Funcionario No Existe</title>
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
            <p id="h2"> Sistema de Información de Control y Mantenimiento de Vehículos Automotores </p>
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
        <a href="formConsultaVehiculo.jsp" title="Consulta de vehículos"><span class="fa fa-car fa-1x"> Consulta de vehículos</a>
        <a href="formConsultaAsignacion.jsp" title="Consulta de  asignación"><span class="fa fa-check-square-o fa-1x"> Consulta de asignación</a>
        <a href="../index-es.jsp" title="Cerrar sesión"><span class="fa fa-sign-out fa-1x"></span>Desconectar</a>
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
                    <li class="active">Respuesta Consulta de Funcionario</li>   
                </ol>
            </div>

            <form class="formularioConsultaFuncionario" method="post" action="../../GestionFuncionarios">
                <h3>Respuesta Consulta de Funcionario</h3>
                 <br><br>
                <%
                    if (request.getParameter("funci") != null) {
                        out.print("<h2>" + request.getParameter("funci") + "</h2>");
                    }
                %>
               
                <%
                    boolean mensaje = Boolean.parseBoolean(request.getParameter("funci"));
                    if (mensaje == false) {
                        out.print("<script>"+ "alert('Funcionario no existe en la Base de Datos');"
                                //  + "window.location.href =' formFuncionario.jsp';"// Redirecciona para ingresar funcionario
                                + " </script>");
                    }
                %>
                <input class="btn btn-primary" type="submit" id="ingresarFuncionario" name="enviar" value="Registrar" >
            </form>
    </section>
</body>

<!-- InstanceEndEditable -->

<div id="espacio3"></div>

<foot>
    <div class="pie">Versión 5.0 | COPYRIGHT   &copy;2014 SIMVA | Contáctenos: 3108549716 | E-mail: contactenos@simva.url.ph</div> 
</foot>

<div id="espacio4"></div>

<!-- InstanceEnd --></html>