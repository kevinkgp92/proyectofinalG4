
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import = "com.eoi.modelo.Usuario" %>
     <%@ page import = "com.eoi.modelo.UsuarioDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editor Miembros</title>
<link rel="stylesheet" href="css/tablaadmin.css">
</head>
<body>
<div class="topnav">
			<a class="active" href="http://localhost:8080/proyectoFinal/index.html">INICIO</a> <a href="http://localhost:8080/proyectoFinal/sobrenosotros.html">SOBRE
			NOSOTROS</a>
			<a href="http://localhost:8080/proyectoFinal/infocovid.html">INFORMACI�N COVID</a>
	</div>
	<h1>
		<img width="100%" src="img/bannerlogin.png">
	</h1>
	<h1>Modificaci�n de un Miembro</h1>
	<h2>Bienvenido <%=session.getAttribute("nombre_miem")%></h2>
	
	<%
		HttpSession sesion = request.getSession();
		String id_miem;  
		id_miem = (String)session.getAttribute("id_miem");
		int id_miemNum = Integer.parseInt(id_miem);
		System.out.println(id_miem);
		UsuarioDAO userdao = new UsuarioDAO();
		Usuario user = null;
		user = userdao.findById(id_miemNum);
		
	%>
	
	
	<form action="ServletEditarMiembro" method="post">
		<label for="id_miembro">ID del Miembro: </label>
		<input type="text" class="input" name="id_miem" readonly value="<%= user.getId_miembro()%>">*<br>
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