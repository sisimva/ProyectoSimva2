<%-- 
    Document   : formConsultaFuncionarios
    Created on : 18-Abr-2015, 19:24:41
    @author Jairo
--%>

<%@page import="DAO.FuncionariosDao"%>
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
        <script type="text/javascript">
            /* Validacion para que unicamente deje ingresar Numeros  */
            function validarNumeros(e) { // 1
                tecla = (document.all) ? e.keyCode : e.which; // 2
                if (tecla == 8)
                    return true; // backspace
                if (tecla == 109)
                    return true; // menos
                if (tecla == 110)
                    return true; // punto
                if (tecla == 189)
                    return true; // guion
                if (tecla == 13)
                    return true; // guion
                if (e.ctrlKey && tecla == 86) {
                    return true
                }
                ; //Ctrl v
                if (e.ctrlKey && tecla == 67) {
                    return true
                }
                ; //Ctrl c
                if (e.ctrlKey && tecla == 88) {
                    return true
                }
                ; //Ctrl x
                if (tecla >= 96 && tecla <= 105) {
                    return true;
                } //numpad

                patron = /[0-9]/; // patron

                te = String.fromCharCode(tecla);
                return patron.test(te); // prueba
            }
        </script>

    </header>
    <div id="espacio1"></div>
    <!-- InstanceBeginEditable name="nav" -->

    <nav>
        <a href="../asignacion.jsp" title="Menu principal"><span class="fa fa-home fa-1x"></span>Inicio</a>
        <a href="formConsultaFuncionario.jsp" title="Consulta de Funcionarios"><span class="fa fa-users fa-1x"> Consulta de Funcionarios</a>
        <a href="formConsultaVehiculo.jsp" title="Consulta de vehículos"><span class="fa fa-car fa-1x"> Consulta de vehículos</a>
        <a href="formAsignacion.jsp" title="Realizar asignación"><span class="fa fa-check-square-o fa-1x"> Realizar asignación</a>
        <a href="../index-es.jsp" title="Cerrar sección"><span class="fa fa-sign-out fa-1x"></span>Desconectar</a>
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
                    <li class="active">Formulario Consulta de Funcionario</li>   
                </ol>
            </div>

            <form class="formularioConsultaFuncionario" method="post" action="../../GestionFuncionarios">
                <h3>Formulario Consulta de Funcionario</h3>

                <div class="cajas" id="cajaUno">  
                    <label for="numeroDocumento">Digite el Número de Cédula:</label>
                    <input name="numeroDocumento" id="numeroDocumento" class="inputad"  type="text" placeholder= "Ej. 79'399.894" tabindex="1" required maxlength="10" value="" onkeydown="return validarNumeros(event)"><br><br>
                    <input class="btn btn-primary" type="submit" id="buscarDocumento" name="enviar" value="Consultar" onclick="return confirmation()"  >
                    <input type="hidden" name="numeros" onkeydown="return validarNumeros(event)"/>
              <!--       <script type="text/javascript"> alert("Funcionario no existe")</script>  -->
                    <br>
                </div>
            </form>
            <%
                if (request.getParameter("funci") != null) {
                    out.print("<h2>" + request.getParameter("funci") + "</h2>");
                }
            %>
    </section>
</body>
<script>
    $().ready(function () {
        $(".formularioConsultaFuncionario").validate({
            rules: {
                numeroDocumento: {
                    required: true,
                    digits: true,
                    minlength: 5,
                    maxlength: 10
                }
            },
            messages: {
                numeroDocumento: {
                    required: "Campo requerido",
                    digits: "Por favor digite solo numeros",
                    minlength: "MÃ­nimo {0} caracteres"
                }
            } // Cierre de los mensajes
        }); // Cierre de la funciÃ³n validate
    }); // Cierre de la funciÃ³n ready

</script>
<!-- InstanceEndEditable -->

<div id="espacio3"></div>

<foot>
    <div class="pie">VersiÃ³n 5.0 | COPYRIGHT   &copy;2014 SIMVA | ContÃ¡ctenos: 3108549716 | E-mail: contactenos@simva.url.ph</div> 
</foot>

<div id="espacio4"></div>

<!-- InstanceEnd --></html>