<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="ISO-8859-1">
	<title>Acceso &#193;rea Personal</title>
</head>
<body>
<<<<<<< HEAD
 	<form action= "Login" method = "post">
		<label for = "email"> Email: </label>
		<input type = "email" name= "email" required>*<br>
		<label for="pass">Contraseña:</label><br>
		<input type="password" name="contraseña" required>*<br>
		<input type="submit" value="Login">
		<span style="color: red"><%=(request.getAttribute("msgerr") == null) ? "" : request.getAttribute("msgerr") %></span>
	</form>
=======
	<h1>
		<img src="img/mountains-6341663_1280.jpg" alt="">
	</h1>
	<div align="center">
		<form action="Login" method="post">
			<label for="email">Email: </label> <input type="email" name="email"
				required>*<br> <br> <label for="pass">Contrase&#241;a:</label>
			<input type="password" name="contraseï¿½a" required>*<br>
			<br> <input type="submit" value="Login"> <span
				style="color: red"><%=(request.getAttribute("msgerr") == null) ? "" : request.getAttribute("msgerr")%></span>
		</form>
	</div>
>>>>>>> 0e1e683e4d1be3d319651f2e0040d4a62aa373c9
</body>
</html>