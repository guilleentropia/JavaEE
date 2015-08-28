<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="${encoding}">
<link rel="stylesheet" type="text/css" href="Css/Style.css" /> 
<title>Agregar Rol</title>
</head>

<body>

<form method="post" action="AddRol" class="form">
<p >Agregar Rol</p>
<div class="contiene">
	<br>
	<div style="color:black">
		<label>Rol</label>
		<input type="text" name="descripcion" required maxlength=45
		oninvalid="setCustomValidity('Debe ingresar un nombre para el Rol!')" 
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