<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="${encoding}">
<link rel="stylesheet" type="text/css" href="Css/Style.css" /> 
<title>Ingreso al Sistema</title>
</head>
<body>
<form method="post" action="LoginServ" class="form">
<p >Ingresar</p>

<div class="contiene">
	<br>
	<p style="color:red; font-style:bold; font-size:16px">   ${message}</p>
	<div style="color:black">
		<label>Usuario</label>
		<input type="text" name="user" required 
		oninvalid="setCustomValidity('Debe ingresar un Usuario!')" 
        oninput="setCustomValidity('')"><br><br>
	</div>	
	<div style="color:black">	
		<label>Contraseña</label>
		<input type="password" name="password" required
		oninvalid="setCustomValidity('Debe ingresar una contraseña')" 
        oninput="setCustomValidity('')"><br><br>
	</div>
	
	
</div>
<input type="submit" value="Guardar">
<a href="/EjemploMavenProject/Login.jsp"> Cancelar</a>

</form>

</body>
</html>