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
		<img width="100%" src="img/banner.png">
	</h1>
	<div class="topnav">
		<a class="active"
			href="http://localhost:8080/proyectoFinal/index.html">INICIO</a>  
		<a href="http://localhost:8080/proyectoFinal/sobrenosotros.html">SOBRE
			NOSOTROS</a> <a href="http://localhost:8080/proyectoFinal/registro.jsp">REGÍSTRATE</a>
		<a href="http://localhost:8080/proyectoFinal/login.jsp">INICIAR
			SESIÓN</a> <a href="http://localhost:8080/proyectoFinal/infocovid.html">INFORMACIÓN
			COVID</a>
	</div>
	<div>
		<p style="padding-left: 100px;">
		<form action="ServletRegistro" method="post" name="formRegistro"
			id="Formulario" autocomplete="off" class="formregistro">
			<label for="nombre_miem">Nombre:</label> <input id="firstName"
				type="text" name="nombre_miem"
				placeholder="Escriba aquí su nombre completo..." /> <span
				class="errorNombre" id="errorNombre"></span> <label for="contraseña">Contraseña:</label>
			<input type="password" name="contraseña" id="password"
				placeholder="Escriba aquí una contraseña..." /> <label for="email">Email</label>
			<input type="email" name="email" id="email"
				placeholder="Escriba aquí su email..." /> <label for="asunto">Teléfono:
			</label> <input type="text" name="telefono" id="asunto"
				placeholder="Escriba aquí su número de teléfono..." /> <label
				for="mensaje">Tipo de Turismo Favorito: </label> <select
				name="tipoTurismo" id="tipoturismo">
				<option value="Cualquier Tipo">Cualquier Tipo / N/A</option>
				<option value="Natural">Turismo Natural</option>
				<option value="Sol y playa">Turismo de Sol y Playa</option>
				<option value="Bienestar">Turismo de Bienestar</option>
				<option value="Gastronomico">Turismo de Gastronómico</option>
				<option value="Ocio">Turismo de Ocio</option>
				<option value="Aventura">Turismo de Aventura</option>
				<option value="Cultural">Turismo Cultural</option>
			</select> <input type="hidden" name="opcion" value="a"> <input
				type="submit" name="Enviar" value="Registrarme" />
		</form>
	</div>
		<div class="footer">
		<a href="#">Aviso Legal | </a>
		<a href="#">Privacidad |</a>
		<b>Redes sociales:</b>
		   Facebook <a href="https://www.facebook.com/ViajesNationalGeographic/" target="_blank">
         <img alt="facebook.png" src="img/facebook.png"></a>
		Instagram <a href="https://www.instagram.com/viajesAKA/" target="_blank">
		<img alt="instagram.png" src="img/instagram.png"></a>
		Twitter <a href="https://twitter.com/viajesAKA" target="_blank">
		<img alt="twitter.png" src="img/twitter.png"></a>
	</div>
</body>
</html>