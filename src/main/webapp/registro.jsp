<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/registro.css">
<title>Formulario de Registro</title>
</head>
<body>
	 <form action="index.html" name="formRegistro" id="Formulario" autocomplete="off" class= "formregistro">
        <label for="nombre_miem">Nombre:</label>
        <input type="text" name="nombre" id="nombre" placeholder="Escribe tu nombre" />
        <span class="errorNombre" id="errorNombre"></span>

        <label for="contraseña">Contraseña:</label>
        <input type="text" name="apellidos" id="apellidos" placeholder="Contraseña" />

        <label for="email">Email</label>
        <input type="email" name="email" id="email" placeholder="Email" />

        <label for="asunto">Teléfono: </label>
        <input type="text" name="asunto" id="asunto" placeholder="titular de la consulta" />
        
        <label for="mensaje">Tipo de Turismo Favorito: </label>
        <textarea name="mensaje"  placeholder="Describe brevemente en menos de 300 caracteres" maxlength="300"></textarea>
    
        <input type="submit" name="Enviar" value="Registrarme"/>
	</form>
</body>
</html>