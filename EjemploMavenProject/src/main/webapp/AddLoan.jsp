<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="Css/Style.css" /> 
<title>Agregar Prestamo</title>
</head>

<body>
<form method="post" action="AddLoan" class="form">
<p >Agregar Prestamo</p>
<div class="contiene">
		<br><br>
		<label style="color:black">Comic :</label>
		<select style="width:350px" id="comic" name="comic" onchange="comic" required
		oninvalid="setCustomValidity('Seleccione un Comic por favor...')" 
        oninput="setCustomValidity('')">
		<option value="">Seleccione un Comic</option>
		<c:forEach var="b" items="${lista}">
		<option value="${b.idComic}">${b.nameComic}</option>
		</c:forEach>
		</select>
		
		<br><br>
		
		 <label style="color:black">Persona :</label>
		<select style="width:350px" id="person" name="person" onchange="person" required
		oninvalid="setCustomValidity('Seleccione una Persona por favor...')" 
        oninput="setCustomValidity('')">
		<option value="">Seleccione una Persona</option>
		<c:forEach var="a" items="${listaper}">
		<option value="${a.idPerson}">${a.namePerson}</option>
		</c:forEach>
		
		</select>
		
		<br><br>
		
		<label style="color:black">Fecha :</label>
		<input type ="date" name="fecha"></input><label style="color:orange; width:350px">La fecha debe tener formato dd-mm-yyyy</label>
		
		<br><br><br><br>
		
	</div>	
	<input type="submit" value="Guardar">
<a href="/EjemploMavenProject/index.jsp"> 	Cancelar</a>
<br><br>
 

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