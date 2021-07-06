<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Acceso Área Personal</title>
</head>
<body>
 	<form action= "Login" method = "post">
		<label for = "email"> Email: </label>
		<input type = "email" name= "email" required>*<br>
		<label for="pass">Contraseña:</label><br>
		<input type="password" name="contraseña" required>*<br>
		<input type="submit" value="Login">
		<span style="color: red"><%=(request.getAttribute("msgerr") == null) ? "" : request.getAttribute("msgerr") %></span>
	</form>
</body>
</html>