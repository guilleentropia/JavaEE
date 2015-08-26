<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="${encoding}">
<link rel="stylesheet" type="text/css" href="Css/Style.css" /> 
<title>Insert title here</title>
</head>
<body>

<form method="post" action="AddPerson" class="form">
<p >Agregar Persona</p>
<div class="contiene">
    <br>
	<div style="color:black">
		<label>Name</label>
		<input type="text" name="Name" required 
		oninvalid="setCustomValidity('Debe ingresar un Nombre!')" 
        oninput="setCustomValidity('')"><br><br>
	</div>
	<div style="color:black">
		<label>Telephone</label>
		<input type="number" name="Telephone" min="1" max="9999999"
		required 
		oninvalid="setCustomValidity('Ingrese un numero de Telefono valido')" 
        oninput="setCustomValidity('')"><br><br>
	</div>
</div>

<input type="submit" value="Guardar" >
<a href="/EjemploMavenProject/index.jsp"> Cancelar</a>
</form>
</body>
</html>