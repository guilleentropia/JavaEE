<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="${encoding}">
<title>Insert title here</title>
</head>
<body>

<form method="post" action="AddLogin" class="form">
<p >Agregar Login</p>
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