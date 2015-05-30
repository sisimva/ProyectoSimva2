<!DOCTYPE html>
<html lang="en">

<head>
 <%
                   if (request.getParameter("correo")!=null) {
                       
 %>
 
 <meta http-equiv="refresh" content="10;url=login.jsp" />
 
    <%
                        }
    %>
                  
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Bootstrap Admin Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div class="container">
        <div class="row">
          <div class="col-md-4 col-md-offset-4">
              <div class="login-panel panel panel-default">
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
 
                  <div class="panel-heading">
                        <h3 class="panel-title">Recuperar Clave</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" action="../GestionLogin" method="post">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Digite Su Documento" name="Documento" type="tel" autofocus>
                                </div>
                                <div class="form-group"></div>
                                
                                <!-- Change this to a button or input when using this as a form -->
                                <a href="login.jsp" class="btn btn-success" >Volver</a>
                                <button type="submit" class="btn btn-info" name="Boton" value="Enviar Solicitud">Enviar Solicitud</button>

                                
                          </fieldset>
                        </form>
                    </div>
 
    <%
                        }
    %>
                   
                   
 
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery Version 1.11.0 -->
    <script src="js/jquery-1.11.1.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="js/plugins/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/sb-admin-2.js"></script>

</body>

</html>
