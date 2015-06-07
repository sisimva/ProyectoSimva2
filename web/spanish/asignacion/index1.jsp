<%-- 
    Document   : index
    Created on : 05-jun-2015, 19:55:22
    Author     : Jairo
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>


<head>
<title>Carga Funcionarios de XLS</title>
</head>

<body>
        <h3>Elija un archivo para subir en servidor</h3>
        <form action="..\..\UploadFile" method="post" enctype="multipart/form-data">
                <input type="file" name="file" /> 
                <input type="submit" value="upload" />
        </form>
</body>
</html>