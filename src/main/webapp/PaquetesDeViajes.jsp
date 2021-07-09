<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.eoi.servicios.Conexion"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.eoi.modelo.Viajes"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Paquetes de Viajes</title>
<link rel="stylesheet" href="css/estilo.css">
</head>
<body>

	<div class="header">
		<div class="topnav">
			<a class="active" href="http://localhost:8080/proyectoFinal/index.html">INICIO</a>  
			<a href="http://localhost:8080/proyectoFinal/sobrenosotros.html">SOBRE NOSOTROS</a> 
			<a href="http://localhost:8080/proyectoFinal/registro.jsp">REGÍSTRATE</a>
			<a href="http://localhost:8080/proyectoFinal/login.jsp">INICIAR SESIÓN</a> 
			<a href="http://localhost:8080/proyectoFinal/infocovid.html">INFORMACIÓN COVID</a>
		</div>
		<div class= "imagen">
			<h1>
				<img width="100%" src="img/bannerlogin.png">
			</h1>
		</div>
	
 	<%
 	List<Viajes> listaViajes = new ArrayList<Viajes>();
 	listaViajes = (List<Viajes>)request.getAttribute("listaViajes");
 	%>
 	
 	
	<table summary="Listado De Paquetes De Viajes Disponibles">
		<caption><img width="100%" src="img/viajesbanner1.png"></caption>
		
		
		<thead>
			<tr>
				<th scope="col"></th>
				<th scope="col"><img width="100%" height="100%" src="img/destin.png"></th>
				<th scope="col"><img src="img/descrip.png"></th>
				<th scope="col"></th>
			</tr>
		</thead>
		<tbody>
			<%
			for(Viajes viaje: listaViajes) {			
			%>
			<tr>
<!-- 				<th scope="row">Buzzcocks</th> -->
				<td><%= viaje.getViaje_fotos() %></td>
				<td><%= viaje.getViaje_titulo()%></td>
				<td><%= viaje.getViaje_descrip()%></td>
				<td><%= viaje.getViaje_boton() %></td>
			</tr>
		</tbody>
		<%} %>
		<tfoot>
		</tfoot>
	</table>
	
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