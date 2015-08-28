<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%><%@ taglib
	uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Css/Style.css" />
<title>Modificar Prestamo</title>
</head>

<body>

	<form method="post" action="UpdateLoan" class="form">

		<p>Modificar Prestamo</p>
		<div class="contiene">
			<div>
				<input type="hidden" name="Id" id="Id" value="${loan.idLoan}" /><br>
				<br>
			</div>


			<label style="color: black">Persona :</label> <select
				style="width: 350px" id="person" name="person" onchange="person"
				required
				oninvalid="setCustomValidity('Seleccione una Persona por favor...')"
				oninput="setCustomValidity('')" disabled>
				<option value="${person.idPerson}">${person.namePerson}</option>
			</select> <br>
			<br> <label style="color: black">Comic :</label> <select
				style="width: 350px" id="comic" name="comic" onchange="comic"
				required
				oninvalid="setCustomValidity('Seleccione un Comic por favor...')"
				oninput="setCustomValidity('')" disabled>

				<option value="${comic.idComic}">${comic.nameComic}</option>

			</select> <br>
			<br> <label style="color: black">Fecha :</label> <input
				type="date" name="fecha" value="${loan.date}" required
				oninvalid="setCustomValidity('El campo fecha es requerido')"
				oninput="setCustomValidity('')"></input><label
				style="color: orange; width: 350px">La fecha debe tener
				formato dd-mm-yyyy</label> <br>
			<br>
			<br>
			<br>


		</div>

		<input type="submit" value="Guardar" /><a
			href="${pageContext.request.contextPath}/index.jsp">Cancelar</a>

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