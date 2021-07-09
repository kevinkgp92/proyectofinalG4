<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="ISO-8859-1">
<title>Acceso &#193;rea Personal</title>
<link rel="stylesheet" href="css/login.css">
</head>
<body>
	<h1>
		<img width="100%" src="img/bannerlogin.png">
	</h1>
	<div class="topnav">
		<a class="active" href="http://localhost:8080/proyectoFinal/index.html">INICIO</a> <a href="http://localhost:8080/proyectoFinal/sobrenosotros.html">SOBRE
			NOSOTROS</a> <a href="http://localhost:8080/proyectoFinal/registro.jsp">REGÍSTRATE</a> <a href="http://localhost:8080/proyectoFinal/login.jsp">INICIAR SESIÓN</a>
			<a href="http://localhost:8080/proyectoFinal/infocovid.html">INFORMACIÓN COVID</a>
	</div>

	<div class="wrapper fadeInDown">
 	 <div id="formContent">
   		 <!-- Tabs Titles -->
   		<center><h2 class="active"> Iniciar Sesión </h2></center>
    	


    <!-- Login Form -->
    <form action="Login" method="post">
      <label for="email">Email:</label><input type="text" id="login" class="fadeIn second" name="email">
      <label for="contraseña">Pass:</label><input type="password" id="password" class="fadeIn third" name="contraseña">
      <input type="submit" class="fadeIn fourth" value="Entrar">
      <a href= "http://localhost:8080/proyectoFinal/registro.jsp" class="fadeIn fourth" >¿Aún no estás registrado/a?</a>
    </form>
    
   
    

    

  </div>
</div>
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