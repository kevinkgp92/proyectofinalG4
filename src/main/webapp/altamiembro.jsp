<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Alta miembros</title>
<link rel="stylesheet" href="css/tablaadmin.css">
</head>
<body>
<div class="topnav">
			<a class="active" href="http://localhost:8080/proyectoFinal/index.html">INICIO</a> <a href="http://localhost:8080/proyectoFinal/sobrenosotros.html">SOBRE
			NOSOTROS</a>
			<a href="http://localhost:8080/proyectoFinal/infocovid.html">INFORMACIÓN COVID</a>
	</div>
	<h1>
		<img width="100%" src="img/bannerlogin.png">
	</h1>
	<h1>
		<img src="img/mountains-6341663_1280.jpg" alt="">
		</h1>
	<h1>Alta de un Miembro</h1>
	<h2>Bienvenido <%=session.getAttribute("nombre_miem")%></h2>
	
	<form action="Controlador" method="post">
		<label for="id_miembro">Id miembro: </label>
		<input type="text" class="input" name="id_miembro">*<br>
		<label for="nombre_miem">Nombre del Miembro:</label>
		<input type="text" class="input" name="nombre_miem">*<br>
		<label for="contraseña">Contraseña: </label>
		<input type="text" class="input" name="contraseña">*<br>
		<label for="telefono">Teléfono: </label>
		<input type="text" class="input" name="telefono"><br>
		<label for="email">Email: </label>
		<input type="text" class="input" name="email"><br>
		<label for="rol">Rol: </label>
		<input type="text" class="input" name="rol"><br>
		<label for="viajes_realizados">Viajes Realizados: </label>
		<input type="text" class="input" name="viajes_realizados"><br>
		
		<input type="hidden" name="opcion" value="a">
		<input type="submit" value="Alta">
	</form>
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