
<!DOCTYPE html>
<html >

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Diego Aristizabal">
        <meta http-equiv="Expires" content="0">
        <meta http-equiv="Last-Modified" content="0">
        <meta http-equiv="Cache-Control" content="no-cache, mustrevalidate">
        <meta http-equiv="Pragma" content="no-cache">
        <META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
        <META HTTP-EQUIV="Expires" CONTENT="-1">
	<title>.::Login::SIMVA::.</title>
        <!-- CSS -->
        <link rel="shortcut icon" href="assets/img/logo.ico" type="image/x-icon">
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel="stylesheet" href="assets/css/reset.css">
        <link rel="stylesheet" href="assets/css/supersized.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link href="assets/css/animations.css" rel="stylesheet" type="text/css"/>

        <script src="assets/js/jquery.js" type="text/javascript"></script>
        <script src="assets/js/jquery.validate.js" type="text/javascript"></script>        
        <script src="assets/js/additional-methods.js" type="text/javascript"></script>


        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

    </head>
<%
  HttpSession miSession = request.getSession();  
%>
<body onLoad="if ('Navigator' == navigator.appName) document.forms[0].reset();">
    
 
        
        <div class="gradient"></div>
        
        <div class="page-container">
            
            
            
            <h1>Sistema de información</h1> <br><br><br>
            <h1>SIMVA</h1>
            
            <form id="login-form" name="login-form" class="login-form" action="/ProyectoSimva/GestionLogin" method="post">
                
                <div class="logo"> </div>
                <div class="logo2"> </div> <br>
                
                <input type="text" name="usuario" id="usuario" class="username" placeholder="Nombre de Usuario" required autofocus tabindex="1">
                <input type="password" name="clave" id="clave" class="password" placeholder="Contraseña" required tabindex="2">
                <button input type="submit" name="Boton" value="Ingresar" class="button">Ingresar</button>
                <div class="error"><span>+</span></div>
            </form>
            <div class="connect">
                <p>No puede ingresar?</p>
                <p>
                    <a class="facebook" href="recupera.jsp" title="Recuperar ContraseÃ±a"></a>
                    <a class="twitter" href="" title="Recuperar ContraseÃ±a"></a>
                </p>
            </div>
        </div>
      
         
         
        <!-- Javascript -->
        <script src="assets/js/jquery-1.8.2.min.js"></script>
        <script src="assets/js/supersized.3.2.7.min.js"></script>
        <script src="assets/js/supersized-init.js"></script>
        <script src="assets/js/scripts.js"></script>

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
                        required: "Campo Requerido",
                        minlength: "Minimo {0} caracteres",
                        maxlength: "Maximo {0} caracteres",
                        lettersonly: "Digite solo letras"
                    },
                    clave:{
                        required: "Campo Requerido",
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

