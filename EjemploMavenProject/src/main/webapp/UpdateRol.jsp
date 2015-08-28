<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="${encoding}">
<link rel="stylesheet" type="text/css" href="Css/Style.css" /> 
<title>Modificar Rol</title>
</head>

<body>

<form method="post"
		action="UpdateRol" class="form">
		<p >Modificar Rol</p>
<div class="contiene">
			<div>
				 <input type="hidden" name="Id"
					id="Id" value="${rol.idRol}"  /><br><br>
			</div>

			<div style="color:black">
				<label for="descripcion">Rol</label>
				<input type ="text"name="descripcion" id="descripcion" value="${rol.descripcion}"
				 required
				 oninvalid="setCustomValidity('Ingrese un nombre valido para el Rol')"
                 oninput="setCustomValidity('')"/><br><br>
			</div>

			
</div>
		
			 <input type="submit" value="Guardar" /> <a href="${pageContext.request.contextPath}/index.jsp">Cancelar</a>
		
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