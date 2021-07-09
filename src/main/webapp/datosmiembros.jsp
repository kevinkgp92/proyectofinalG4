<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "com.eoi.servicios.Conexion" %> 
<%@ page import = "com.eoi.modelo.Usuario" %>    
<%@ page import ="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Datos miembros</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<%
		HttpSession sesion = request.getSession();
		
		Connection con = Conexion.getInstance().getConnection();
		String sql = "SELECT * FROM t_miembros";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);
		Usuario usu = (Usuario) request.getAttribute("usu");
		
	
	%>
	
	<h2>Bienvenido <%=session.getAttribute("nombre_miem")%> - <%=session.getAttribute("rol")%> </h2>
	<nav>
		<ul>
			<li><a href="index.html">Home</a></li>
			<% if(session.getAttribute("rol").equals("admin")){ %>
			
				<li><a href="altamiembro.jsp">Nuevo Miembro</a></li>
				
			<% } %>	
			<li><a href = "Logout">Logout</a>
		</ul>
	
	</nav>
	<% if(session.getAttribute("rol").equals("admin")){ %>
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
					<a href="Controlador?opcion=e&id_miembro=<%=rs.getString("id_miembro") %>"><i class="fa fa-edit" aria-hidden="true"></i></a>  <a href="Controlador?opcion=b&id_miembro=<%=rs.getString("id_miembro") %>"><i class="fa fa-trash" aria-hidden="true"></i></a>
				</td>
				<%} %>
			</tr>
			
		<%} %>
	</table>
	<%} %>
	<% if(session.getAttribute("rol").equals("miembro")){ %>
	
	<form action="ServletEditarMiembro?opcion=e&id_miem=<%= usu.getId_miembro() %>" method="post">
		
		<label for="nombre_miem">Nombre del Miembro:</label>
		<input type="text" class="input" name="nombre_miem" value="<%= usu.getNombre_miem()%>">*<br>
		<label for="contraseña">Contraseña: </label>
		<input type="text" class="input" name="contraseña" value="<%= usu.getContraseña()%>">*<br>
		<label for="telefono">Teléfono: </label>
		<input type="text" class="input" name="telefono" value="<%= usu.getTelefono()%>"><br>
		<label for="email">Email: </label>
		<input type="text" class="input" name="email" value="<%= usu.getEmail()%>"><br>
		<label for="rol">Rol: </label>
		<input type="text" class="input" name="rol" value="<%= usu.getRol()%>"><br>
		<label for="viajes_realizados">Viajes Realizados: </label>
		<input type="text" class="input" name="viajes_realizados" value="<%= usu.getViajes_realizados()%>"><br>
		
		<input type="hidden" name="opcion" value="e">
		<input type="submit" value="Modificar">
		
		<% if(request.getAttribute("msg") !=null){
			
			out.print(request.getAttribute("msg"));
		}
		
		%>
	</form>
	
	<% } %>
	<%
	con.close();
	st.close();
	rs.close();
	%>
</body>
</html>