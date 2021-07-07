<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/estilo.css">
<title>Formulario de Registro</title>
</head>
<body>
	<h1>
		<img src="img/mountains-6341663_1280.jpg" alt="">
	</h1>
	<div class="topnav">
		<a class="active" href="http://localhost:8080/proyectoFinal/index.html">INICIO</a> <a href="#ofertasp">OFERTAS
			PREMIUM</a> <a href="http://localhost:8080/proyectoFinal/contacto.html">CONTACTO</a> <a href="http://localhost:8080/proyectoFinal/sobrenosotros.html">SOBRE
			NOSOTROS</a> <a href="http://localhost:8080/proyectoFinal/registro.jsp">REGÍSTRATE</a> <a href="http://localhost:8080/proyectoFinal/login.jsp">INICIAR SESIÓN</a>
			<a href="http://localhost:8080/proyectoFinal/infocovid.html">INFORMACIÓN COVID</a>
	</div>
	<div>
		<p style="padding-left: 100px;">
		<form action="Controlador" name="formRegistro" id="Formulario"
			autocomplete="off" class="formregistro">
			<label for="nombre_miem">Nombre:</label> <input id="firstName"
				type="text" name="nombre" placeholder="Escribe tu nombre..." /> <span
				class="errorNombre" id="errorNombre"></span> <label for="contraseña">Contraseña:</label>
			<input type="text" name="apellidos" id="apellidos"
				placeholder="Contraseña" /> <label for="email">Email</label> <input
				type="email" name="email" id="email" placeholder="Email" /> <label
				for="asunto">Teléfono: </label> <input type="text" name="asunto"
				id="asunto" placeholder="Teléfono" /> <label for="mensaje">Tipo
				de Turismo Favorito: </label>
			<textarea name="mensaje"
				placeholder="Describe brevemente en menos de 300 caracteres"
				maxlength="300"></textarea>

			<input type="submit" name="Enviar" value="Registrarme" />
		</form>
	</div>

</body>
</html>