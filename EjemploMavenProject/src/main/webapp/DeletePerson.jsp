<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%><%@ taglib
	uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Css/Style.css" />
<title>Eliminar Persona</title>
</head>
<%
	if (session.getAttribute("rol") == null || session.getAttribute("rol") == "VISITANTE") {
		response.sendRedirect("Login.jsp");
	}
%>
<body>
	<form method="post" action="DeletePerson" class="form">
		<p>Eliminar Persona</p>
		<div class="contiene">
			<fieldset>
				<br>
				<div style="color: black">
					<input type="hidden" name="Id" id="Id" value="${person.idPerson}" /><br>
					<br>
				</div>


				<div style="color: black">
					<label for="namePerson">Nombre</label> <input name="Name" id="Name"
						disabled value="${person.namePerson}" /><br>
					<br>
				</div>


				<div style="color: black">
					<label for="telephonePerson">Telefono</label> <input
						name="Telephone" id="Telephone" disabled
						value="${person.telephonePerson}" /><br>
					<br>
				</div>


			</fieldset>

		</div>
		<input type="submit" value="Guardar" /><a
			href="/EjemploMavenProject/index.jsp">Cancelar</a>
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