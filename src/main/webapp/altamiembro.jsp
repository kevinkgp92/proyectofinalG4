<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Alta miembros</title>
</head>
<body>
	<h1>Alta de un Miembro</h1>
	<h2>Bienvenido <%=session.getAttribute("nombre_miem")%></h2>
	
	<form action="AltaDepto" method="post">
		<label for="id_miembro">Id miembro: </label>
		<input type="text" class="input" name="id_miembro">*<br>
		<label for="nombre_miem">Nombre del Miembro:</label>
		<input type="text" class="input" name="nombre_miem">*<br>
		<label for="contrase�a">Contrase�a: </label>
		<input type="text" class="input" name="contrase�a">*<br>
		<label for for="telefono">Tel�fono: </label>
		<input type="number" class="input" name="telefono"><br>
		<label for for="email">Email: </label>
		<input type="text" class="input" name="email"><br>
		<label for for="rol">Rol: </label>
		<input type="text" class="input" name="rol"><br>
		<label for for="viajes_realizados">Viajes Realizados: </label>
		<input type="text" class="input" name="viajes_realizados"><br>
		<input type="hidden" name="opcion" value="a">
		
		<input type="submit" value="Alta">
	</form>
</body>
</html>