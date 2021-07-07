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
		<a class="active" href="http://localhost:8080/proyectoFinal/index.html">INICIO</a> <a href="#ofertasp">OFERTAS
			PREMIUM</a> <a href="http://localhost:8080/proyectoFinal/contacto.html">CONTACTO</a> <a href="http://localhost:8080/proyectoFinal/sobrenosotros.html">SOBRE
			NOSOTROS</a> <a href="http://localhost:8080/proyectoFinal/registro.jsp">REG�STRATE</a> <a href="http://localhost:8080/proyectoFinal/login.jsp">INICIAR SESI�N</a>
			<a href="http://localhost:8080/proyectoFinal/infocovid.html">INFORMACI�N COVID</a>
	</div>
	<div>
		<p style="padding-left: 100px;">
		<form action="ServletRegistro" method="post" name="formRegistro" id="Formulario"
			autocomplete="off" class="formregistro">
			<label for="nombre_miem">Nombre:</label> <input id="firstName"
				type="text" name="nombre_miem" placeholder="Escriba aqu� su nombre completo..." /> <span
				class="errorNombre" id="errorNombre"></span> <label for="contrase�a">Contrase�a:</label>
				<input type="password" name="contrase�a" id="password"
				placeholder="Escriba aqu� una contrase�a..." /> <label for="email">Email</label> <input
				type="email" name="email" id="email" placeholder="Escriba aqu� su email..." /> <label
				for="asunto">Tel�fono: </label> <input type="text" name="telefono"
				id="asunto" placeholder="Escriba aqu� su n�mero de tel�fono..." /> <label for="mensaje">Tipo
				de Turismo Favorito: </label>
				<select name="tipoTurismo" id="tipoturismo">
				<option value="Cualquier Tipo">Cualquier Tipo / N/A</option>
					<option value="Natural">Turismo Natural</option>
					<option value="Sol y playa">Turismo de Sol y Playa</option>
					<option value="Bienestar">Turismo de Bienestar</option>
					<option value="Gastronomico">Turismo de Gastron�mico</option>
					<option value="Ocio">Turismo de Ocio</option>
					<option value="Aventura">Turismo de Aventura</option>
					<option value="Cultural">Turismo Cultural</option>
				</select>
			<input type="hidden" name="opcion" value="a">
			<input type="submit" name="Enviar" value="Registrarme" />
		</form>
	</div>

</body>
</html>