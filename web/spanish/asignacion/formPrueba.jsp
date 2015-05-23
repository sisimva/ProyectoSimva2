<%-- 
    Document   : formResultadoConsulta
    Created on : 04-may-2015, 0:37:32
    Author     : Jairo
--%>

<%@page import="DTO.FuncionariosDto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>ESTA ES UNA PRUEBA</h1>
        <%
            HttpSession miSession = request.getSession();
            FuncionariosDto objDtoFunci = new FuncionariosDto();
            FuncionariosDto miObj = new FuncionariosDto();
            miObj = (FuncionariosDto) miSession.getAttribute("ObjFunci");
            String cedula = (String) miSession.getAttribute("Cedula");


        %>
    
    
    

        <br>
        <label for="nombre">Nombres:</label>
        <input type="text" name="nombre" id="nombre" class="inputad" value='<%=miObj.getNombre1() + " " + miObj.getNombre2()%>'   tabindex="2" disabled="">
        
        <br>
        <label for="apellido">Apellidos:</label>
        <input type="text" name="apellido" id="apellido" class="inputad" value='<%=miObj.getApellido1()+ " " + miObj.getApellido2()%>' placeholder=""   tabindex="3" disabled="">
        
    </body>
</html>
