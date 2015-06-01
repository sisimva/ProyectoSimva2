<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="es"> <!--<![endif]-->
<!-- BEGIN HEAD -->
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
	<!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link rel="shortcut icon" href="assets/img/logo.ico" type="image/x-icon">
	<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="assets/plugins/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
	<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
	<link href="assets/css/style-metro.css" rel="stylesheet" type="text/css"/>
	<link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
	<link href="assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
	<link href="assets/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>
	<link href="assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" type="text/css" href="assets/plugins/select2/select2_metro.css" />
        <link href="assets/css/animations.css" rel="stylesheet" type="text/css"/>
	<!-- END GLOBAL MANDATORY STYLES -->
	<!-- BEGIN PAGE LEVEL STYLES -->
	<link href="assets/css/pages/login-soft.css" rel="stylesheet" type="text/css"/>
	<!-- END PAGE LEVEL STYLES -->
	<link rel="shortcut icon" href="favicon.ico" />
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<%
  HttpSession miSession = request.getSession();  
%>
<body class="login" onLoad="if ('Navigator' == navigator.appName) document.forms[0].reset();">
	<!-- BEGIN LOGO -->
	
	<!-- END LOGO -->
	<!-- BEGIN LOGIN -->
        
        <div class="gradient"></div>
        
	<div class="content">
            
		<!-- BEGIN LOGIN FORM -->
		<form class="form-vertical login-form" action="/ProyectoSimva/GestionLogin" method="post">
                    <h2 class="form-title1"><strong>Sistema de Infomacion</strong></h2><br>
             
                    <h2 class="form-title"><strong>SIMVA</strong></h2>
                        
			
                        <div class="logo"> <img src="assets/img/logo.png" alt=""/></div>
                        <div class="logo2"> <img src="assets/img/logo2.png" alt=""/></div>
                        
                        <div class="alert alert-error hide">
				<button class="close" data-dismiss="alert"></button>
				<span>Escriba su nombre de usuario y contraseña</span>
			</div>
                        
                        <%
                        String mensaje =(String) miSession.getAttribute("mensaje");
                        miSession.removeAttribute("mensaje");
                        if(mensaje !=null){

                        if(mensaje.equals("1")){

                        %>
                        
                        <div class="alert alert-error">
				<button class="close" data-dismiss="alert"></button>
				<span>Usuario o Contraseña incorrectos</span>
			</div>
                        
			<%
                        }
                        } 
                        %>
                        
                        <div class="control-group">
				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
				<label class="control-label visible-ie8 visible-ie9">Nombre de Usuario</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-user"></i>
                                                <input class="m-wrap" type="text" placeholder="Nombre de Usuario" name="username" required/>
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">Contraseña</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-lock"></i>
                                                <input class="m-wrap" type="password" placeholder="Contraseña" name="password" required/>
					</div>
				</div>
			</div>
			<div class="form-actions">
				<label class="checkbox">
				<input type="checkbox" name="remember" value="1"/> Recordar
				</label>
				<button type="submit" name="Boton" value="Ingresar" class="btn blue pull-right">
				Ingresar <i class="m-icon-swapright m-icon-white"></i>
				</button>            
			</div>
			<div class="forget-password">
				<h4>Olvido su contraseña ?</h4>
				<p>
					Haga click <a href="recuperar.jsp"  id="forget-password">aqui</a>
					para restablecer su contraseña.
				</p>
			</div>
			<!--<div class="create-account">
				<p>
					No tienes una cuenta todavía ?&nbsp; 
					<a href="javascript:;" id="register-btn" >Crear una cuenta</a>
				</p>
			</div>-->
		</form>
		<!-- END LOGIN FORM -->        
		<!-- BEGIN FORGOT PASSWORD FORM -->
		<form class="form-vertical forget-form" action="/ProyectoSimva/GestionLogin" method="post">
			<h3 >Contraseña Olvidada ?</h3>
			<p>Introduce tu documento a continuación para enviar su contraseña por correo electronico.</p>
                        
                        
                        <%
                   if (request.getParameter("mensaje")!=null) {
					   if (request.getParameter("mensaje").equals("1")){
                    %> 
                   	<div class="alert alert-error hide">
				<button class="close" data-dismiss="alert"></button>
				<span>Usuario no Existe <a href="index-es.jsp" class="alert-link">Cerrar</a>.</span>
			</div>
                     <%
					 }else if (request.getParameter("mensaje").equals("2")){
                    %> 
                   	<div class="alert alert-info hide">
				<button class="close" data-dismiss="alert"></button>
				<span>Aun no tiene usuario asignado! Comuniquese con el administrador <a href="index-es.jsp" class="alert-link">Cerrar</a>.</span>
			</div>
                     <%
					 }else if (request.getParameter("mensaje").equals("3")){
                    %> 
                   	<div class="alert alert-success hide">
				<button class="close" data-dismiss="alert"></button>
				<span>Su Clave fue enviada al siguiente correo: <%=request.getParameter("correo")%> <a href="index-es.jsp" class="alert-link">Cerrar</a>.</span>
			</div>
                     <%
					 }
                    }
                    %> 
                    
                    <%
                   if (!( request.getParameter("correo")!=null)) {
                       
                    %>
                   
                        <div class="alert alert-error hide">
				<button class="close" data-dismiss="alert"></button>
				<span>Escriba su Documento de Identidad</span>
			</div>  
			
                        
                        <div class="control-group">
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-credit-card"></i>
						<input class="m-wrap placeholder-no-fix" type="text" placeholder="Documento" name="email" />
					</div>
				</div>
			</div>
			<div class="form-actions">
				<button type="button" id="back-btn" class="btn">
				<i class="m-icon-swapleft"></i> Volver
				</button>
				<button type="submit" name="Boton" value="Enviar" class="btn blue pull-right">
				Enviar <i class="m-icon-swapright m-icon-white"></i>
				</button>            
			</div>
		</form>
                    
                    <%
                    }
                    %> 
		<!-- END FORGOT PASSWORD FORM -->
		
                <!-- BEGIN REGISTRATION FORM -->
		<!--<form class="form-vertical register-form" action="index.html" method="post">
			<h3 >Sign Up</h3>
			<p>Enter your personal details below:</p>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">Full Name</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-font"></i>
						<input class="m-wrap placeholder-no-fix" type="text" placeholder="Full Name" name="fullname"/>
					</div>
				</div>
			</div>
			<div class="form-actions">
				<button id="register-back-btn" type="button" class="btn">
				<i class="m-icon-swapleft"></i>  Back
				</button>
				<button type="submit" id="register-submit-btn" class="btn green pull-right">
				Sign Up <i class="m-icon-swapright m-icon-white"></i>
				</button>            
			</div>
		</form>-->
		<!-- END REGISTRATION FORM -->
	</div>
                        
	<!-- END LOGIN -->
	<!-- BEGIN COPYRIGHT -->
	<div class="copyright">
		2014 &copy; <a href="http://www.justukfreebies.co.uk/">Just UK Freebies</a> Login Form
	</div>
        
	<!-- END COPYRIGHT -->
	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->   <script src="assets/plugins/jquery-1.10.1.min.js" type="text/javascript"></script>
	<script src="assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
	<script src="assets/plugins/jquery-ui/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="assets/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js" type="text/javascript" ></script>
	<!--[if lt IE 9]>
	<script src="assets/plugins/excanvas.min.js"></script>
	<script src="assets/plugins/respond.min.js"></script>  
	<![endif]-->   
	<script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>  
	<script src="assets/plugins/jquery.cookie.min.js" type="text/javascript"></script>
	<script src="assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript" ></script>
	<!-- END CORE PLUGINS -->
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script src="assets/plugins/jquery-validation/dist/jquery.validate.min.js" type="text/javascript"></script>
	<script src="assets/plugins/backstretch/jquery.backstretch.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="assets/plugins/select2/select2.min.js"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="assets/scripts/app.js" type="text/javascript"></script>
	<script src="assets/scripts/login-soft.js" type="text/javascript"></script>      
	<!-- END PAGE LEVEL SCRIPTS --> 
	<script>
		jQuery(document).ready(function() {     
		  App.init();
		  Login.init();
		});
	</script>
	<!-- END JAVASCRIPTS -->
	
</body>
<!-- END BODY -->
</html>