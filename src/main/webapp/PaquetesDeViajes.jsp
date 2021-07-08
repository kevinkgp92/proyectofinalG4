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

	
 	<%
 	List<Viajes> listaViajes = new ArrayList<Viajes>();
 	listaViajes = (List<Viajes>)request.getAttribute("listaViajes");
 	%>
 	
 	
	<table summary="Listado De Paquetes De Viajes Disponibles">
		<caption>Listado De Paquetes De Viajes Disponibles</caption>
		<thead>
			<tr>
				<th scope="col"></th>
				<th scope="col">Viaje</th>
				<th scope="col">Descripción</th>
				<th scope="col">Reservar</th>
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
</body>
</html>