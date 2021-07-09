<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/registro2.css">
<title>Formulario de Registro</title>
</head>
<body>
	<div class="topnav">
		<a class="active"
			href="http://localhost:8080/proyectoFinal/index.html">INICIO</a> <a
			href="http://localhost:8080/proyectoFinal/sobrenosotros.html">SOBRE
			NOSOTROS</a> <a href="http://localhost:8080/proyectoFinal/registro.jsp">REG�STRATE</a>
		<a href="http://localhost:8080/proyectoFinal/login.jsp">INICIAR
			SESI�N</a> <a href="http://localhost:8080/proyectoFinal/infocovid.html">INFORMACI�N
			COVID</a>
	</div>
	<h1>
		<img width="100%" src="img/bannerlogin.png">
	</h1>

	<div>
		<p>
		<form class="form" action="ServletRegistro" method="post" name="formRegistro"
			id="Formulario" autocomplete="off" class="formregistro">
			<label class="fadIn second" for="nombre_miem">Nombre:</label> <input
				id="firstName" type="text" name="nombre_miem"
				placeholder="Escriba aqu� su nombre completo..." /> <span
				class="errorNombre" id="errorNombre"></span> <br>
			<label class="fadIn second" for="contrase�a">Contrase�a:</label> <input
				class="fadIn third" type="password" name="contrase�a" id="password"
				placeholder="Escriba aqu� una contrase�a..." /> <br>
			<label class="fadIn second" for="telefono">Tel�fono: </label> <input 
				type="text" name="telefono" id="asunto"
				placeholder="Escriba aqu� su n�mero de tel�fono..." /> <br>
			<label class="fadIn second" for="email">Email: </label> <input 
				type="text" name="email" id="asunto"
				placeholder="Escriba aqu� su email..." /> <br>
			<label  class="fadIn second" for="mensaje">Tipo de Turismo Favorito: </label> <select
				name="tipoTurismo" id="tipoturismo">
				<option value="Cualquier Tipo">Cualquier Tipo / N/A</option>
				<option value="Natural">Turismo Natural</option>
				<option value="Sol y playa">Turismo de Sol y Playa</option>
				<option value="Bienestar">Turismo de Bienestar</option>
				<option value="Gastronomico">Turismo de Gastron�mico</option>
				<option value="Ocio">Turismo de Ocio</option>
				<option value="Aventura">Turismo de Aventura</option>
				<option value="Cultural">Turismo Cultural</option>
			</select> <input type="hidden" name="opcion" value="a"> 
			<br><br><input type="submit" name="Enviar" value="Registrarme" />
		</form>
	</div>
	<div class="footer">
		<a href="#">Aviso Legal | </a> <a href="#">Privacidad |</a> <b>Redes
			sociales:</b> Facebook <a
			href="https://www.facebook.com/ViajesNationalGeographic/"
			target="_blank"> <img alt="facebook.png" src="img/facebook.png"></a>
		Instagram <a href="https://www.instagram.com/viajesAKA/"
			target="_blank"> <img alt="instagram.png" src="img/instagram.png"></a>
		Twitter <a href="https://twitter.com/viajesAKA" target="_blank"> <img
			alt="twitter.png" src="img/twitter.png"></a>
	</div>
</body>
</html>