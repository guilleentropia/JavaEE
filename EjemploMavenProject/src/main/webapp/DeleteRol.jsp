<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Css/Style.css" /> 
<title>Insert title here</title>
</head>

<body>

<form method="post"
		action="DeleteRol" class="form">
<p >Eliminar Rol</p>
<div class="contiene">		
		
			<br>
			<div style="color:black">
				 <input type="hidden" name="Id"
					id="Id"  value="${rol.idRol}"  /><br><br>
			</div>

			<div style="color:black">
				<label for="descripcion">Rol</label>
				<input name="descripcion" id="descripcion"  disabled value ="${rol.descripcion}" /><br><br>
			</div>

			
</div>		
			  <input type="submit" value="Guardar" /><a href="/EjemploMavenProject/index.jsp">Cancelar</a>
		
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