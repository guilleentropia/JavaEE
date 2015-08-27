<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Css/Style.css" /> 
<title>Ingreso al Sistema</title>
</head>
<body>
<form method="post" action="LoginServ" class="form">
<p >Ingresar</p>
<div class="contiene">
	<br>
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
<a href="/EjemploMavenProject/index.jsp"> Cancelar</a>

</form>

</body>
</html>