<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "com.eoi.servicios.Conexion" %>    
<%@ page import ="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Datos miembros</title>
</head>
<body>
	<%
		Connection con = Conexion.getInstance().getConnection();
		String sql = "SELECT * FROM t_miembros";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);
	
	%>
	
	<h2>Bienvenido <%=session.getAttribute("nombre_miem")%> - <%=session.getAttribute("rol")%> </h2>
	<nav>
		<ul>
			<li><a href="index.html">Home</a></li>
			<% if(session.getAttribute("rol").equals("admin")){ %>
			
				<li><a href="altamiembro.jsp">Nuevo Miembro</a></li>
				<li><a href="editarmiembros.jsp">Modificar datos</a></li>
			<% } %>	
		</ul>
	
	</nav>
	
	<table>
		<caption><b>Listado de miembros</b></caption>
		<tr>
			<th>Id_miembro:</th>
			<th>Nombre:</th>
			<th>Contraseña:</th>
			<th>Teléfono:</th>
			<th>Email:</th>
			<th>Rol:</th>
			<th>Viajes Realizados:</th>
			<% if(session.getAttribute("rol").equals("admin")){ %>
				<th>Acciones</th>
			<%} %>
		</tr>
		
		<%
			while(rs.next()){			
		%>
			<tr>
				<td><%= rs.getString("id_miembro")%></td>
				<td><%= rs.getString("nombre_miem")%></td>
				<td><%= rs.getString("contraseña")%></td>
				<td><%= rs.getString("telefono")%></td>
				<td><%= rs.getString("email")%></td>
				<td><%= rs.getString("rol")%></td>
				<td><%= rs.getString("viajes_realizados")%></td>
				<%if(session.getAttribute("rol").equals("admin")) {%>
				<td>
					<a href="Controlador?opcion=e&id_miembro=<%=rs.getString("id_miembro") %>"><!--  <i class="fa fa-edit" aria-hidden="true"></i>-->Modificar</a>  <a href="Controlador?opcion=b&id_miembro=<%=rs.getString("id_miembro") %>"><i class="fa fa-trash" aria-hidden="true"></i></a>
				</td>
				<%} %>
			</tr>
			
		<%} %>
	</table>
</body>
</html>