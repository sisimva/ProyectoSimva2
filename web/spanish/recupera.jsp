<!DOCTYPE html PUBLIC>

<html>
   <%
//response.setHeader("Cacahe-Control", "no-store");
%>

<head>
<meta http-equiv="Expires" content="0">
<meta http-equiv="Last-Modified" content="0">
<meta http-equiv="Cache-Control" content="no-cache, mustrevalidate">
<meta http-equiv="Pragma" content="no-cache">
<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
<META HTTP-EQUIV="Expires" CONTENT="-1">
<meta charset="utf-8">
	<title>.::Login::SIMVA::.</title>

<link href="css/stilos_1.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" href="img/logos/logo.ico" type="image/x-icon">
<link href="css/animations.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>
<script type="text/javascript" src="js/additional-methods.js"></script>

</head>

<%
  HttpSession miSession = request.getSession();  
%>
<body onLoad="if ('Navigator' == navigator.appName) document.forms[0].reset();">

	<div class="heading">
    	Sistema de información
    </div>
    
                   <%
                   if (request.getParameter("mensaje")!=null) {
					   if (request.getParameter("mensaje").equals("1")){
                    %> 
                   			<div class="alert alert-danger">
                                Usuario no Existe <a href="index-es.jsp" class="alert-link">Cerrar</a>.
                  			</div>
                     <%
					 }else if (request.getParameter("mensaje").equals("2")){
                    %> 
                   			<div class="alert alert-info">
                                Aun no tiene usuario asignado! Comuniquese con el administrador <a href="login.jsp" class="alert-link">Cerrar</a>.
                  			</div>
                     <%
					 }else if (request.getParameter("mensaje").equals("3")){
                    %> 
                   			<div class="alert alert-success">
                                            Su Clave fue enviada al siguiente correo: <%=request.getParameter("correo")%> <a href="login.jsp" class="alert-link">Cerrar</a>.
                  			</div>
                     <%
					 }
                   }
                   %> 
                
                    <%
                   if (!( request.getParameter("correo")!=null)) {
                       
 %>
    
<div id="wrapper" class="FadeIn">
    <div class="user-icon"></div>
    <div class="pass-icon"></div>
 

    <form id="login-form" name="login-form" class="login-form" action="/ProyectoSimva/GestionLogin" method="post" >
    
     <div class="logo">
      </div>
    <div class="header">
  
        <h1>SIMVA</h1>
        <span>Digite su documento para recuperar la contraseña</span>
    </div>
  
    <div class="content">
    	<input name="Documento" type="text" id="Documento" class="input username" placeholder="Documento*" required autofocus tabindex="1">
        
    </div>

    <div id="temp">

                
    </div>

    <div class="footer">
       
        <input type="submit"  name="Boton" value="Enviar Solicitud" class="button" >
        
    </div>
        
</form>

</div>
  <%
                        }
    %>
    <div class="gradient"></div>
    	<div class="clr"></div>
    

<script>
        $().ready(function() {
            $(".login-form").validate({ 
                rules:{
                    usuario:{
                        required: true,
                        minlength: 3,
                        maxlength: 15,
                        lettersonly: true
                    },
                    clave:{
                        required: true,
                        minlength: 6,
                        maxlength: 16
                    }
                },
                messages:{
                    usuario:{
                        required: "        Campo Requerido",
                        minlength: "Minimo {0} caracteres",
                        maxlength: "Maximo {0} caracteres",
                        lettersonly: "Digite solo letras"
                    },
                    clave:{
                        required: "         Campo Requerido",
                        minlength: "Minimo {0} caracteres",
                        maxlength: "Maximo {0} caracteres"
                    }
                }
            });
        });

        $().ready(function() {
            $(".username").focus(function() {
                $(".user-icon").css("left","-48px");
            });
            $(".username").blur(function() {
                $(".user-icon").css("left","0px");
            });
            
            $(".password").focus(function() {
                $(".pass-icon").css("left","-48px");
            });
            $(".password").blur(function() {
                $(".pass-icon").css("left","0px");
            });
        });          
    </script>

    <%
        String mensaje =(String) miSession.getAttribute("mensaje");
        miSession.invalidate();
        if(mensaje !=null){
  
        if(mensaje.equals("1")){
            
        %>
        <script type="text/javascript"> alert("Usuario o Contraseña incorrectos") </script>
        <%
        }
        } 
        %>
    
</body>
</html>