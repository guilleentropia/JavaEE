<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%><%@ taglib
	uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="${encoding}">
<link rel="stylesheet" type="text/css" href="Css/Style.css" />
<title>Insert title here</title>
</head>



<body>

	<form method="post" action="AddComic" class="form">
		<p>Agregar Comic</p>
		<div class="contiene">
			<br>
			<div style="color: black">
				<label>Name</label> <input type="text" name="Name" required
					oninvalid="setCustomValidity('Debe ingresar un Nombre!')"
					oninput="setCustomValidity('')"><br>
				<br>
			</div>
			<div style="color: black">
				<label>Company Name</label> <input type="text" name="CompanyName"
					required
					oninvalid="setCustomValidity('Debe ingresar la Compania!')"
					oninput="setCustomValidity('')"><br>
				<br>
			</div>
			<div style="color: black">
				<label>Quantity</label> <input type="number" name="Quantity"
					required min="1" max="99999"
					oninvalid="setCustomValidity('Ingrese un valor valido para Cantidad por favor!')"
					oninput="setCustomValidity('')"><br>
				<br>
			</div>
			<div style="color: black">
				<label>Review</label>
				<textarea name="Review" style="width: 568px; height: 65px" required
					oninvalid="setCustomValidity('Ingrese una Review!')"
					oninput="setCustomValidity('')"></textarea>
				<br>
				<br>
			</div>
		</div>
		<input type="submit" value="Guardar"> <a
			href="/EjemploMavenProject/index.jsp"> Cancelar</a>

	</form>
	
	
	<c:set var="compare" value="${ sessionScope.rol}">
	</c:set>
	<c:choose>
		<c:when test="${compare=='USUARIO'}">


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