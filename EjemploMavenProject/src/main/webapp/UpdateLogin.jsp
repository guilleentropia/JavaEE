<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="${encoding}">
<link rel="stylesheet" type="text/css" href="Css/Style.css" /> 
<title>Modificar Usuario</title>
</head>

<body>
<form method="post"
		action="UpdateLogin" class="form">
		<p >Modificar Usuario</p>
<div class="contiene">
			<div>
				 <input type="hidden" name="Id"
					id="Id" value="${login.idLogin}"  /><br><br>
			</div>

			<div style="color:black">
				<label for="user">Usuario</label>
				<input type ="text"name="user" id="user" value="${login.usuario}"
				 required maxlength=45
				 oninvalid="setCustomValidity('Ingrese un valor valido para Usuario!')"
                 oninput="setCustomValidity('')"/><br><br>
			</div>

			<div style="color:black">
				<label for="password">Contraseña</label> 
				<input name="password" id="password" value="${login.password}"
					required  maxlength=45
					oninvalid="setCustomValidity('Debe ingresar una Contraseña!')" 
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