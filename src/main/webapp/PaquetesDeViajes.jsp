<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.eoi.servicios.Conexion"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Paquetes de Viajes</title>
<link rel="stylesheet" href="css/estilo.css">
</head>
<body>
<%
		Connection con = Conexion.getInstance().getConnection();
		String sql = "SELECT * FROM t_viajes_detalle";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);
	
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
			while(rs.next()){			
			%>
			<tr>
<!-- 				<th scope="row">Buzzcocks</th> -->
				<td><%= rs.getString("viaje_foto")%></td>
				<td><%= rs.getString("viaje_titulo")%></td>
				<td><%= rs.getString("viaje_descripcion")%></td>
				<td><%= rs.getString("viaje_boton")%></td>
			</tr>
		</tbody>
		<%} %>
		<tfoot>
		</tfoot>
	</table>
</body>
</html>