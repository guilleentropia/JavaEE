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
	<form method="post" action="UpdateComic" class="form">
		<p>Modificar Comic</p>
		<div class="contiene">
			<div>
				<input type="hidden" name="Id" id="Id" value="${comic.idComic}" /><br>
				<br>
			</div>

			<div style="color: black">
				<label for="quantityComic">Cantidad</label> <input type="number"
					name="Quantity" id="Quantity" value="${comic.quantityComic}"
					required min="1" max="99"
					oninvalid="setCustomValidity('Ingrese un valor valido para Cantidad por favor!')"
					oninput="setCustomValidity('')" /><br>
				<br>
			</div>

			<div style="color: black">
				<label for="nameComic">Nombre</label> <input name="Name" id="Name"
					value="${comic.nameComic}" required maxlength=45
					oninvalid="setCustomValidity('Debe ingresar un Nombre!')"
					oninput="setCustomValidity('')" /><br>
				<br>
			</div>

			<div style="color: black">
				<label for="companyComic">Compania</label> <input name="Company"
					id="Company" value="${comic.companyComic}" width="100px" required maxlength=45
					oninvalid="setCustomValidity('Debe ingresar la Compania!')"
					oninput="setCustomValidity('')" /><br>
				<br>
			</div>

			<div style="color: black">
				<label for="reviewComic">Review</label>
				<textarea name="Review" id="Review" rows="2" cols="60" required maxlength=500
					oninvalid="setCustomValidity('Ingrese una Review!')"
					oninput="setCustomValidity('')">${comic.reviewComic}</textarea>
				<br>
				<br>
				<br>
				<br>
				<br>

			</div>

		</div>

		<input type="submit" value="Guardar" /> <a
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