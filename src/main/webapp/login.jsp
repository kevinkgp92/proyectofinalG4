<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="ISO-8859-1">
<title>Acceso &#193;rea Personal</title>
<link rel="stylesheet" href="css/estilo.css">
</head>
<body>
	<h1>
		<img width="100%" src="img/banner.png">
	</h1>
	<div class="topnav">
		<a class="active" href="http://localhost:8080/proyectoFinal/index.html">INICIO</a> <a href="#ofertasp">OFERTAS
			PREMIUM</a> <a href="http://localhost:8080/proyectoFinal/contacto.html">CONTACTO</a> <a href="http://localhost:8080/proyectoFinal/sobrenosotros.html">SOBRE
			NOSOTROS</a> <a href="http://localhost:8080/proyectoFinal/registro.jsp">REGÍSTRATE</a> <a href="http://localhost:8080/proyectoFinal/login.jsp">INICIAR SESIÓN</a>
			<a href="http://localhost:8080/proyectoFinal/infocovid.html">INFORMACIÓN COVID</a>
	</div>

	<div class="column.middle">
	<p style="padding-left: 100px;">
		<form action="Login" method="post">
			<label for="email">Email: </label> <input type="email" name="email"
				required>*<br> <br> <label for="pass">Contrase&#241;a:</label>
			<input type="password" name="contraseña" required>*<br>
			<br> <input type="submit" value="Login"> <span
				style="color: red"><%=(request.getAttribute("msgerr") == null) ? "" : request.getAttribute("msgerr")%></span>
		</form>
	</div>
</body>
</html>