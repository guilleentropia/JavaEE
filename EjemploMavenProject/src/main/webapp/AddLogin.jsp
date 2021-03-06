<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="${encoding}">
<link rel="stylesheet" type="text/css" href="Css/Style.css" /> 
<title>Agregar Usuario</title>
</head>

<body>

<form method="post" action="AddLogin" class="form">
<p >Agregar Usuario</p>
<div class="contiene">
	<br><br>
	
	
		<label style="color:black">Rol :</label>
		<select style="width:350px" id="rol" name="rol" onchange="rol" required 
		oninvalid="setCustomValidity('Seleccione un Rol por favor...')" 
        oninput="setCustomValidity('')">
		<option value="">Seleccione un Rol</option>
		<c:forEach var="b" items="${lista}">
		<option value="${b.idRol}">${b.descripcion}</option>
		</c:forEach>
		</select>
		
	
	<br><br>
	
	
	<div style="color:black">
		<label>Usuario</label>
		<input type="text" name="user" required  maxlength=45
		oninvalid="setCustomValidity('Debe ingresar un Usuario!')" 
        oninput="setCustomValidity('')"><br><br>
	</div>	
	<div style="color:black">	
		<label>Contraseņa</label>
		<input type="password" name="password" required maxlength=45
		oninvalid="setCustomValidity('Debe ingresar una contraseņa')" 
        oninput="setCustomValidity('')"><br><br>
	</div>
	
</div>
<input type="submit" value="Guardar">
<a href="/EjemploMavenProject/index.jsp"> Cancelar</a>

</form>

<c:set var="compare" value="${ sessionScope.rol}">
	</c:set>
	<c:choose>
		<c:when test="${compare=='USUARIO'}">
			<%
				response.sendRedirect("Login.jsp");
			%>

		</c:when>
		<c:when test="${compare =='VISITANTE'}">
			<%
			response.sendRedirect("Login.jsp");
			%>
		</c:when>
		
		<c:when test="${compare == null}">
			<%
			response.sendRedirect("Login.jsp");
			%>
		</c:when>
	</c:choose>

</body>
</html>