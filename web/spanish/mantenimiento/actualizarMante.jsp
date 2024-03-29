<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <!-- InstanceBegin template="/Templates/Template.dwt" codeOutsideHTMLIsLocked="false" -->
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
        <link type="text/css" rel="stylesheet" href="../css/stilosEditMant.css">
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
        <a href="editMant.jsp" title="Editar Fichas de Mantenimientos"><span class="fa fa-wrench fa-1x"></span>Editar Ficha de Mant.</a>
        <a href="hisMan.jsp" title="Consultar Historial de Mantenimientos"><span class="fa fa-calendar fa-1x"></span>Consultar Historial de Mant.</a>
        <a href="../index-es.html" title="Cerrar secciÃ³n"><span class="fa fa-sign-out fa-1x"></span>Desconectar</a>
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
                        <li class="active">Actualizar Fichas de Mantenimiento</li>   
                    </ol>
                </div>
                <br>
                <div id="mensaje"><font style="color:red;"><b>${mensaje}</b></font></div>
                <h3> ACTUALIZAR FICHA MANTENIMIENTO DE AUTOMOTORES PM-13</h3>

                <div id="foto">
                    <img src="../img/man1.jpg"  width="130" height="130" />
                </div>


                <form id="actualizarMantenimiento" action="" method="POST" style="display:<%=%>">

                    <div>
                        <div class="lupas" id="bloqueDos">
                            <label for="campoCedula">Cedula:</label>
                            <input name="cedula" id="campoCedula" placeholder="80876345" required type="text" tabindex="2" value="${documento}"/>

                            <label for="campoPersona">Funcionario:</label>
                            <input name="persona" id="campoPersona" placeholder="JAIMES MALAGON LUDWING ANDRES" required type="text" tabindex="3" value="${apellido1}" >

                            <label for="campoMantenimiento">Mantenimiento:</label>
                            <input name="idMantenimiento" id="campoMantenimiento" placeholder="001" required type="text"  tabindex="5" value="${idMantenimiento}">

                            <label for="tipoAutomotor">Tipo:</label> 
                            <input name="tipo" id="tipoAutomotor" placeholder="NPR" required type="text" tabindex="7" value="${tipoVehiculo}"/>

                            <label for="campoFechaI">Fecha Inicio:</label>
                            <input class="fecha" name="FechaI" id="campoFechaI" placeholder="22/06/2014" required type="date" tabindex="8"/>
                                      
                        </div>

                        <div id="bloqueDos">

                            <label for="campoGrado">Grado:</label>
                            <input name="Grado" id="campoGrado" placeholder="CAPITAN" required type="text" tabindex="4" value="${tipoGrado}"/>
                            <br>

                            <label for="campoEstado">Tipo:</label>
                            <select class="seleccion" name="estado" id="campoEstado" placeholder="Pendiente" required type="text" tabindex="6"/>
                            <option value="100">Correctivo</option>
                            <option value="200">Predictivo</option>
                            <option value="300">Preventivo</option>
                            <option value="400">Proactivo</option>
                            </select>
                            <br>
                            <label for="campoFechaF">Fecha Final:</label>
                            <input class="fecha" name="FechaF" id="campoFechaF" placeholder="22/06/2014" required type="date" tabindex="10" />
                            <br>
                            <label for="campoFechaP">Fecha Proximo Mantenimiento:</label>
                            <input class="fecha" name="campoFechaP" id="campoFechaP" placeholder="22/06/2014" required type="date" tabindex="10"/>

                            <input  name="placa" id="placa" type="hidden" value="${placa}"/>

                        </div>        
                    </div>


                    <div id="botones">
                        <div id="observacion">    
                        <label for="observaciones">Observaciones</label>
                            <textarea  name="observaciones" cols=50 rows=6 id="observaciones" placeholder="Registre Oservaciones del mantenimiento"   tabindex="10"/></textarea>
                        </div>
                        <br>
                        <button class="btn btn-primary" type="submit" tabindex="11">Enviar</button>
                </form> 
                <div id="actualizar">

                    <br>
                    <form action="/ProyectoSimva/cancelarMantenimiento" method="POST" style="display:<%=crearDisplayStyle%>">
                        <button class="btn btn-primary" type="submit" tabindex="12">Cancelar</button>
                    </form>





                </div>
        </section> 



        <script>

            //$().ready(function () {

                $("#crearMantenimiento").validate({//abre validete
                    rules: {//abre rules
                        placa: {//abre campo
                            required: true,
                            minlength: 6,
                            maxlength: 10,
                            alphanumeric: true
                        }, //cierra campo
                        cedula: {//abre campo
                            required: true,
                            minlength: 6,
                            maxlength: 10,
                        }, //cierra campo
                        persona: {//abre campo
                            required: true,
                            minlength: 5,
                            maxlength: 40,
                            lettersonly: true,
                        }, //cierre campo
                        Mantenimiento: {
                            required: true,
                            digits: true,
                            minlength: 3,
                            maxlength: 5,
                        },
                        tipo: {
                            required:
                                    true,
                        },
                        FechaI: {
                            required: true,
                        },
                        Grado: {
                            required: true,
                        },
                        FechaF: {
                            required: true,
                        },
                    }, //cierra rules 
                    messages: {// abre mensajes
                        placa: {//abre campos
                            required: "Campo Requerido",
                            minlength: "Minimo {0} Caracteres",
                            maxlength: "Maximo {0} Caracteres",
                            alphanumeric: "Debe ser Alfanumerico",
                        }, //cierra campo
                        cedula: {//abre campos
                            required: "Campo Requerido",
                            minlength: "Minimo {0} Caracteres",
                            maxlength: "Maximo {0} Caracteres",
                        }, //cierra campo
                        persona: {//abre campo
                            required: "Campo Requerido",
                            minlength: "Minimo {0} Caracteres",
                            maxlength: "Maximo {0} Caracteres",
                            lettersonly: "Solo Letras",
                        }, //cierre campo
                        Mantenimiento: {
                            required: "Campo requerido",
                            digits: "Solo Numeros",
                            minlength: "Minimo {0} Caracteres",
                            maxlength: "Maximo {0} Caracteres",
                        },
                        tipo: {
                            required: "Seleccione un Tipo",
                        },
                        FechaI: {
                            required: "Campo Requerido",
                        },
                        Grado: {
                            required: "Campo Requerido",
                        },
                        FechaF: {
                            required: "Campo Requerido",
                        },
                    }//cierra mensajes

                });	 //cierra validete
            }); // cierra funcion
        </script>

    </body>
    <!-- InstanceEndEditable -->

    <div id="espacio3"/></div>

<foot>
    <div class="pie">VersiÃ³n 1.0 | COPYRIGHT   &copy;2014 SIMVA | ContÃ¡ctenos: 3108549716 | E-mail: contactenos@simva.url.ph</div> 
</foot>

<div id="espacio4"></div>

<!-- InstanceEnd --></html>