<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="ISO-8859-1">
	<title>Acceso &#193;rea Personal</title>
</head>
<body>
	<h1>
		<img src="img/mountains-6341663_1280.jpg" alt="">
	</h1>
	<div align="center">
		<form action="Login" method="post">
			<label for="email">Email: </label> <input type="email" name="email"
				required>*<br> <br> <label for="pass">Contrase&#241;a:</label>
			<input type="password" name="contrase�a" required>*<br>
			<br> <input type="submit" value="Login"> <span
				style="color: red"><%=(request.getAttribute("msgerr") == null) ? "" : request.getAttribute("msgerr")%></span>
		</form>
	</div>
</body>
</html>