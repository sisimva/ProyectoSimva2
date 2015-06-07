<%-- 
    Document   : result
    Created on : 05-jun-2015, 19:27:47
    Author     : Jairo
--%>

<%@page import="java.io.File"%>
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
<%@page import="jxl.Cell"%>
<%@page import="jxl.Sheet"%>
<%@page import="jxl.Workbook"%>
<%@page import="java.io.File"%>
<html><!-- InstanceBegin template="/Templates/Template.dwt" codeOutsideHTMLIsLocked="false" -->
    <head>
        <meta charset="utf-8">
        <!-- InstanceBeginEditable name="doctitle" -->
        <title>Registro de Funcionario</title>
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
        <a href="formConsultaVehiculos.jsp" title="Consulta de vehículos"><span class="fa fa-car fa-1x"> Consulta de vehículos</a>
        <a href="formConsultaAsignacion.jsp" title="Consulta de asignación"><span class="fa fa-check-square-o fa-1x"> Consulta de asignación</a>
        <a href="../index-es.jsp" title="Cerrar sección"><span class="fa fa-sign-out fa-1x"></span>Desconectar</a>
    </nav>
    <!-- InstanceEndEditable -->

    <div id="espacio2"></div>
    <!-- InstanceBeginEditable name="Body" -->
    <body>
        <%
            HttpSession miSession = request.getSession();
        %>

    <section>
        <div id="area">
            <div id="miga">
                <br>
                <ol class="breadcrumb">
                    <li><a href="../Asignacion.jsp">Inicio</a></li>
                    <li class="active">Formulario Registro de Funcionario</li>   
                </ol>
            </div>
       <form class="formularioRegistroFuncionario" method="post" action="..\..\UploadFile">
       
                <h3>Formulario Registro de Funcionario</h3>
                <body>
                    <h4>${requestScope["libro"]}</h4>
                    <%
                        String Libro = (String) request.getAttribute("libro");
                        Workbook archivoExcel = Workbook.getWorkbook(new File(Libro));
                        System.out.println("Número de Hojas\t" + archivoExcel.getNumberOfSheets());
                        Sheet hoja1 = archivoExcel.getSheet(0);

                                 //Para obtener la hoja de la primera posición del libro
                        //??????????????????????????
                        //Se crea la celda que se va a leer de la hoja posición (0, 0)

                    %>

                    <table border="1">
                        <thead
                            <tr>
                                <%                   
                                    FuncionariosDao ObjDao = new FuncionariosDao();
                                    FuncionariosDto ObjDto = new FuncionariosDto();

                                    for (int a1 = 0; a1 < hoja1.getColumns(); a1++) {
                                        Cell actual = hoja1.getCell(a1, 0);
                                        out.print("<th>" + actual.getContents() + "</th>");
                                    }
                                %>
                            <th>Estado.</th>    
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                String[] celdas = new String[hoja1.getColumns()];

                                for (int a1 = 1; a1 < hoja1.getRows(); a1++) {

                                    out.print("<tr>");
                                    for (int a2 = 0; a2 < hoja1.getColumns(); a2++) {

                                        Cell actual = hoja1.getCell(a2, a1);
                                           //actual.getRow();
                                        //ObjDto.setIdEmpleado(actual.getContents());
                                        //ObjDao.IngresarEmpleado(ObjDto);
                                        celdas[a2] = "" + actual.getContents();
                                        out.print("<td>" + actual.getContents() + "</td>");
                                    }

                                    ObjDto.setNumeroDocumento(Integer.parseInt(celdas[0]));
                                    ObjDto.setIdGrados(Integer.parseInt(celdas[1]));
                                    ObjDto.setApellido1(celdas[2]);
                                    ObjDto.setApellido2(celdas[3]);
                                    ObjDto.setNombre1(celdas[4]);
                                    ObjDto.setNombre2(celdas[5]);
                                    ObjDto.setIdCiudad(Integer.parseInt(celdas[6]));
                                    ObjDto.setFechaNacimiento(celdas[7]);
                                    ObjDto.setIdRh(Integer.parseInt(celdas[8]));
                                    ObjDto.setTelefono(celdas[9]);
                                    ObjDto.setMovil(celdas[10]);
                                    ObjDto.setIndicativo(celdas[11]);
                                    ObjDto.setLicenciaConduccion(celdas[12]);
                                    ObjDto.setVencimientoLicencia(celdas[13]);
                                    ObjDto.setIdCategoria(Integer.parseInt(celdas[14]));
                                    ObjDto.setFechaAlta(celdas[15]);
                                    ObjDto.setEmail(celdas[16]);
                                     ObjDto.setfotoFuncionario(celdas[17]);
                                    
                                    

                                    String Salida = ObjDao.IngresarFuncionario(ObjDto);

                                    if (Salida.equals("Registro ingresado exitosamente")) {


                            %>
                            <td> <img src="Imagenes/checkround.png" width="16" height="16" alt="checkround" title='<%=Salida%>' /> </td>
                                <%
                                } else {
                                %>

                            <td> <img src="Imagenes/fail.png" width="16" height="16" alt="checkround" title='<%=Salida%>' /> </td>
                                <%
                                        }
                                        out.print("</tr>");
                                    }
                                %>




                        </tbody>
                    </table>


                </body>


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
                    required: true,
                },
                idRh: {
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
                    minlength: "MÃ­nimo {0} caracteres"
                },
                apellido2: {
                    required: "Campo requerido",
                    lettersonly: "Por favor Digite solo letras",
                    minlength: "MÃ­nimo {0} caracteres"
                },
                nombre1: {
                    required: "Campo requerido",
                    lettersonly: "Por favor Digite solo letras",
                    minlength: "MÃ­nimo {0} caracteres"
                },
                nombre2: {
                    required: "Campo requerido",
                    lettersonly: "Por favor Digite solo letras",
                    minlength: "MÃ­nimo {0} caracteres"
                },
                numeroDocumento: {
                    required: "Campo requerido",
                    digits: "Por favor digite solo numeros",
                    minlength: "MÃ­nimo {0} caracteres"
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
                    minlength: "MÃ­nimo {0} caracteres",
                    maxlength: "Maximo {0} caracteres"
                },
                movil: {
                    required: "Campo requerido",
                    digits: "Por favor digite solo numeros",
                    minlength: "MÃ­nimo {0} caracteres",
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
                },
                idRh: {
                    required: true
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