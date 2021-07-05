<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import = "com.eoi.modelo.Usuario" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editor Miembros</title>
</head>
<body>
	<h1>Modificaci�n de un Miembro</h1>
	<h2>Bienvenido <%=session.getAttribute("nombre_miembro")%></h2>
	
	<%
		Usuario user = (Usuario) request.getAttribute("user");
	%>
	
	
	<form action="EditarMiembro" method="post">
		<label for="id_miembro">ID del Miembro: </label>
		<input type="text" class="input" name="id_miembro" readonly value="<%= user.getId_miembro()%>">*<br>
		<label for="nombre_miem">Nombre del Miembro:</label>
		<input type="text" class="input" name="nombre_miem" value="<%= user.getNombre_miem()%>">*<br>
		<label for="contrase�a">Contrase�a: </label>
		<input type="text" class="input" name="contrase�a" value="<%= user.getContrase�a()%>">*<br>
		<label for="telefono">Tel�fono: </label>
		<input type="text" class="input" name="telefono" value="<%= user.getTelefono()%>"><br>
		<label for="email">Email: </label>
		<input type="text" class="input" name="email" value="<%= user.getEmail()%>"><br>
		<label for="rol">Rol: </label>
		<input type="text" class="input" name="rol" value="<%= user.getRol()%>"><br>
		<label for="viajes_realizados">Viajes Realizados: </label>
		<input type="text" class="input" name="viajes_realizados" value="<%= user.getViajes_realizados()%>"><br>
		
		<input type="hidden" name="opcion" value="e">
		
		<input type="submit" value="Modificar">
		
	
	</form>
</body>
</html>